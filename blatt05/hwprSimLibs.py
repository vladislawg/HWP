#!/usr/bin/python2.7

# ##############################################################################
# Dieses Skript wurde fuer die Veranstaltung "Hardwarepraktikum" geschrieben. Es
# muss in das src Verzeichnes kopiert werden und ersetzt: 
#   * work.armTypes durch ARM_SIM_LIB.armType (noetig, wenn "ArmArithInstruction
#     Ctrl" aus der SIM_LIB verwendet wird)
#   * work.armGlobalProbes durch ARM_SIM_LIB.armGlobalProbes (noetig, wenn "Arm
#     Regfile" aus der SIM_LIB verwendet wird))
# je nach Parameter uebergabe.
# Es benoetigt python2.7 und die unter #imports gelisteten Module. Es darf nach 
# belieben veraendert und erweitert werden.
#
# !!! Vosicht bei mehrfachem ueberschreiben der tmp-Datei, es kann immer nur die
# !!! aktuelle tmp Datei zurueckgespielt werden. Es wird ein .backup Ordner
# !!! erstellt, dort befinden sich Backupdateien, diese werden bei Skriptaufruf,
# !!! maximal einmal in der Minute, gespeichert.
#
# Benutzung:
#   1. Datei ausfuehrbar machen mit (Befehl in der Konsole ausfuehren): 
#       chmod +x hwprSimLibs.py
#   2. Moegliche Befehlen zur Ausfuehrung:
#       ./hwprSimLibs.py --help
#       ./hwprSimLibs.py -t
#       ./hwprSimLibs.py -p
#       ./hwprSimLibs.py -t -p  oder ./hwprSimLibs.py -p -t
#       ./hwprSimLibs.py -o 
# ##############################################################################

# imports
import os
import re
import argparse
import time
import datetime

# List of files containing ArmTypes
    # ArmArithInstructionCtrl.vhd
    # ArmInstructionAddressRegister.vhd
    # TB_Tools.vhd
    # ArmRegaddressTranslation.vhd
    # ArmRegfile.vhd
    # ArmMemInterface.vhd
    # ArmRS232Interface.vhd
    # ArmUncoreTop.vhd
    # ArmChipSelectGenerator.vhd
    # ArmSystemController.vhd

# List of files containing ArmGlobalProbes
    # ArmRegfile.vhd
    # ArmSystemController.vhd

# variables 
simlib = False
textToSearch1 = "work.ArmTypes"
textToSearch2= "work.ArmGlobalProbes"
textToSearch="not defined"

# Argparse
parser = argparse.ArgumentParser(description="Skript zur Ersetzung von Libs.")
parser.add_argument("-t", "--types", action="store_true", dest="types", help="Ersetzt work.armTypes durch ARM_SIM_LIB.armTypes.")
parser.add_argument("-p", "--probes", action="store_true", dest="probes", help="Ersetzt work.armGlobalProbes durch ARM_SIM_LIB.armGlobalPorbes.")
parser.add_argument("-o", "--original", action="store_true", dest="orig", help="Stellt Datei aus $DATEI.tmp wieder her.")
parser.add_argument("-f", "--force", action="store_true", dest="force", help="Die tmp Datei wird ohne Nachfrage ueberschrieben.")
args = parser.parse_args()

# decide on search text
textToSearchList = []
if args.types:
    textToSearchList.append(textToSearch1)
if args.probes:
    textToSearchList.append(textToSearch2)

# change libraries depending on argument entered
ls = ["ArmArithInstructionCtrl.vhd","ArmInstructionAddressRegister.vhd","TB_Tools.vhd","ArmRegaddressTranslationd.vhd", "ArmRegfile.vhd","ArmMemInterface.vhd","ArmRS232Interface.vhd","ArmUncoreTop.vhd","ArmChipSelectGenerator.vhd","ArmSystemController.vhd"]

forceQuestion = "nein"
if args.force:
    forceQuestion = raw_input("Du hast die force Option gewaehlt. Wenn Backup-Datein existieren werden diese ueberschrieben moechtest du das? [ja | nein] (nein):")

# create backupdir and copy all touched files into backudir
for i in ls:
    if os.path.isfile(i):
        timestamp = datetime.datetime.now().strftime("%Y%m%d-%H%M")
        if not os.path.isdir(".backup"):
            os.mkdir(".backup")
        srcfile = open(i,'r')
        destfile = open(os.path.join(".backup",i+"."+timestamp),'w')

        for line in srcfile:
            destfile.write(line)
        srcfile.close()
        destfile.close()

try:
    # change worklib to simlib
    for i in ls:
        if not args.orig:
            if os.path.isfile(i):    
                 print i  
                 # mv original file to file.tmp and open it
                 sec="nein"
                 if os.path.isfile(i+".tmp") and forceQuestion == "nein":
                    sec = raw_input("Es existiert bereits eine tmp-Datei "+i+".tmp). \nMoechtest du deine tmp-Datei ueberschreiben? [ja | nein] (nein):")
                 if (not os.path.isfile(i+".tmp")) or sec == "ja" or forceQuestion == "ja":
                    print "\tEs wurde eine neue tmp-Datei angelegt."
                    os.rename(i , i + ".tmp")
                    srcfile = open(i + ".tmp", 'r' )
                 else:
                     print "\nDas Skript wurde beendet. Die tmp-Datei wurde nicht ueberschrieben."
                     exit() 
                 # write new file
                 destfile = open(i, 'w')
                 destfile.write("library ARM_SIM_LIB; \n")
    
                 for tts in textToSearchList:
                     #print "Du suchst nach dem String \"" + tts + "\"."
                     destfile.write("\tuse ARM_SIM_LIB."+tts[5:]+".all;\n") # write simlib into file
    
                 for line in srcfile:
                     destfile.write(line)
                 
                 srcfile.close()
                 destfile.close()
                 
                 for tts in textToSearchList:
                     srcfile = open(i,'r')
                     destfile = open(i+".workingOn",'w')
                     for line in srcfile:
                        line = line.replace("\r","")    # replace controlsequence ^M
                        if tts in line:
                            destfile.write(line.replace(line, "--" + line))
                        else:
                            destfile.write(line)
                     srcfile.close()
                     destfile.close()
                     os.remove(i)
                     os.rename(i+".workingOn",i)
                 
                 print "\t\"work\" wurde durch \"ARM_SIM_LIB\" erstetzt."
        else:
            if os.path.isfile(i + ".tmp"):
                print "Die Datei wurde aus der tmp-Datei wiederhergestellt." 
                os.rename(i + ".tmp" , i)
except Exception:
    print "Skript wurde abgebrochen. Dateien werden aus tmp-Dateien wiederhergestellt"
    for i in ls:
        if os.path.isfile(i+".tmp"):
            os.rename(i+".tmp",i)


