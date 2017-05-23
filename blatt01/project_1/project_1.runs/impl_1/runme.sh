#!/bin/sh

# 
# PlanAhead(TM)
# runme.sh: a PlanAhead-generated ExploreAhead Script for UNIX
# Copyright 1986-1999, 2001-2011 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/afs/tu-berlin.de/units/Fak_IV/aes/tools/xilinx/13.3/ISE_DS/ISE/bin/lin64:/afs/tu-berlin.de/units/Fak_IV/aes/tools/xilinx/13.3/ISE_DS/common/bin/lin64:/afs/tu-berlin.de/units/Fak_IV/aes/tools/xilinx/13.3/ISE_DS/PlanAhead/bin
else
  PATH=/afs/tu-berlin.de/units/Fak_IV/aes/tools/xilinx/13.3/ISE_DS/ISE/bin/lin64:/afs/tu-berlin.de/units/Fak_IV/aes/tools/xilinx/13.3/ISE_DS/common/bin/lin64:/afs/tu-berlin.de/units/Fak_IV/aes/tools/xilinx/13.3/ISE_DS/PlanAhead/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=/afs/tu-berlin.de/units/Fak_IV/aes/tools/xilinx/13.3/ISE_DS/ISE/lib/lin64:/afs/tu-berlin.de/units/Fak_IV/aes/tools/xilinx/13.3/ISE_DS/common/lib/lin64
else
  LD_LIBRARY_PATH=/afs/tu-berlin.de/units/Fak_IV/aes/tools/xilinx/13.3/ISE_DS/ISE/lib/lin64:/afs/tu-berlin.de/units/Fak_IV/aes/tools/xilinx/13.3/ISE_DS/common/lib/lin64:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD=`dirname "$0"`
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep bitgen "ArmInstructionAddressRegister_routed.ncd" "ArmInstructionAddressRegister.bit" "ArmInstructionAddressRegister.pcf" -w -intstyle pa
