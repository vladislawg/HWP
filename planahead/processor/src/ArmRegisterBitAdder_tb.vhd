
--------------------------------------------------------------------------------
--	Testbench-Vorlage des HWPR-Bitaddierers.
--------------------------------------------------------------------------------
--	Datum:		??.??.2013
--	Version:	?.??
--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;
library work;
use work.armtypes.all;

--------------------------------------------------------------------------------
--	In TB_TOOLS kann, wenn gewuenscht die Funktion SLV_TO_STRING() zur
--	Ermittlung der Stringrepraesentation eines std_logic_vektor verwendet
--	werden und SEPARATOR_LINE fuer eine horizontale Trennlinie in Ausgaben.
--------------------------------------------------------------------------------
use work.TB_TOOLS.all;

entity ArmRegisterBitAdder_TB is
end ArmRegisterBitAdder_TB;

architecture testbench of ArmRegisterBitAdder_tb is 

	component ArmRegisterBitAdder
	port(
		RBA_REGLIST	: in std_logic_vector(15 downto 0);          
		RBA_NR_OF_REGS	: out std_logic_vector(4 downto 0)
		);
	end component ArmRegisterBitAdder;

signal REGLIST : std_logic_vector(15 downto 0);
signal NR_OF_REGS : std_logic_vector(4 downto 0);

shared variable TX_ERROR : integer := 0;
shared variable TX_OUT : line;

begin
--	Unit Under Test
	UUT: ArmRegisterBitAdder port map(
		RBA_REGLIST	=> REGLIST,
		RBA_NR_OF_REGS	=> NR_OF_REGS
	);

--	Testprozess
	tb : process is
	variable ourTime : integer := 100;
	variable fuuuu : std_logic_vector(4 downto 0);
	
	variable TX_STR : string(1 to 4096);
	variable TX_LOC : line;

	procedure CHECK_SUM(
        komplettcool : std_logic_vector(4 downto 0);
        TX_TIME : integer
    )
    is
    begin
        if (komplettcool /= NR_OF_REGS) then
            STD.TEXTIO.write(TX_LOC, string'("YOU MESSED UP at " ));
            STD.TEXTIO.write(TX_LOC, TX_TIME);
            STD.TEXTIO.write(TX_LOC, string'("ns NR_OF_REGS = "));
            IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, NR_OF_REGS);
            STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
            IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, komplettcool);
            STD.TEXTIO.write(TX_LOC, string'(" "));

            TX_STR(TX_LOC.all'range) := TX_LOC.all;
            STD.TEXTIO.Deallocate(TX_LOC);
            assert (false) report TX_STR severity error;
            TX_ERROR := TX_ERROR + 1;
--        else 
--       	STD.TEXTIO.write(TX_LOC, string'("FUCK YEAH!!!!!! at "));
--            STD.TEXTIO.write(TX_LOC, TX_TIME);
--            STD.TEXTIO.write(TX_LOC, string'("ns NR_OF_REGS = "));
--            IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, NR_OF_REGS);
--            STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
--            IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, komplettcool);
--            STD.TEXTIO.write(TX_LOC, string'(" "));
--
--            TX_STR(TX_LOC.all'range) := TX_LOC.all;
--            assert (false) report TX_STR severity note;
--            STD.TEXTIO.Deallocate(TX_LOC);
    	end if;
    end CHECK_SUM;

    function sum(asdf : std_logic_vector(15 downto 0))
    	return integer
    is 
    	variable asdf2 : integer := 0;
    begin
    	for i in asdf'range loop
    		if (asdf(i) = '1') then
    			asdf2 := asdf2 +1;
    		end if;
    	end loop;
    	return asdf2;
   	end sum;

    begin

    	REGLIST <= "0000000000000000";

		wait for 100 ns;
		
		for i in 0 to 65535 loop
			
			fuuuu := std_logic_vector(to_unsigned(sum(REGLIST), 5));

			CHECK_SUM(fuuuu, ourTime);

			wait for 10 ns;

			ourTime := ourTime + 10;

			if (not (NR_OF_REGS'STABLE(10 ns))) then
				STD.TEXTIO.write(TX_LOC, string'("YOU MESSED UP at " ));
            	STD.TEXTIO.write(TX_LOC, ourTime);
	            STD.TEXTIO.write(TX_LOC, string'("ns, Signal not stable!"));

	            TX_STR(TX_LOC.all'range) := TX_LOC.all;
	            STD.TEXTIO.Deallocate(TX_LOC);
	            assert (false) report TX_STR severity error;
	            TX_ERROR := TX_ERROR + 1;
			end if;

			REGLIST <= std_logic_vector(unsigned(REGLIST)+1);
			wait for 14 ns; --changed from 15 to 14 for testing... now expecting failures
			ourTime := ourTime + 14;


		end loop;

		report SEPARATOR_LINE;

		report "Simulation beendet " severity note;

                if (TX_ERROR = 0) then
                  assert (FALSE) report
                      "Simulation erfolgreich (0 Fehler)."
                      severity note;
                else
                  assert (false) report "Simulation nicht erfolgreich (" & integer'image(TX_ERROR) & " Fehler)"
                         severity error;
                end if;
		report SEPARATOR_LINE;

		report " EOT (END OF TEST) - Diese Fehlermeldung stoppt den Simulator unabhaengig von tatsaechlich aufgetretenen Fehlern!" severity failure; 
--	Unbegrenztes Anhalten des Testbench Prozess
		wait;
	end process tb;
end architecture testbench;
