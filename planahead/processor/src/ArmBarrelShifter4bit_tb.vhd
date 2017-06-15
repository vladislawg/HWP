use std.textio.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.tb_tools.all;

entity ArmBarrelShifter4bit_tb is
end entity ArmBarrelShifter4bit_tb;

architecture behave of ArmBarrelShifter4bit_tb is
	component ArmBarrelShifter
		generic (
			OPERAND_WIDTH : integer;
			SHIFTER_DEPTH : integer
		 );
		port (
			OPERAND 	: in std_logic_vector(3 downto 0);	
	    	MUX_CTRL 	: in std_logic_vector(1 downto 0);
	    	AMOUNT 		: in std_logic_vector(1 downto 0);	
	    	ARITH_SHIFT : in std_logic; 
	    	C_IN 		: in std_logic;
	        DATA_OUT 	: out std_logic_vector(3 downto 0);	
	    	C_OUT 		: out std_logic
		);
	end component;

	signal OPERAND 		: std_logic_vector(3 downto 0);
	signal MUX_CTRL 	: std_logic_vector(1 downto 0);
	signal AMOUNT 		: std_logic_vector(1 downto 0);
	signal ARITH_SHIFT 	: std_logic;
	signal C_IN 		: std_logic;
	signal DATA_OUT 	: std_logic_vector(3 downto 0);
	signal C_OUT 		: std_logic;

begin

	UUT: ArmBarrelShifter
	generic map (
		OPERAND_WIDTH => 4,
		SHIFTER_DEPTH => 2
	)
	port map (
		OPERAND => OPERAND,
    	MUX_CTRL => MUX_CTRL,
    	AMOUNT => AMOUNT,
    	ARITH_SHIFT => ARITH_SHIFT,
    	C_IN => C_IN,
        DATA_OUT => DATA_OUT,
    	C_OUT => C_OUT
	);

	tb : process is
		variable TX_STR : string(1 to 4096);
		variable TX_LOC : line;
		variable ERRORS : integer := 0;

		procedure CHECK (
			EXPECTED_DATA_OUT : std_logic_vector(3 downto 0);
			EXPECTED_C_OUT : std_logic
		) is
		begin
			if (DATA_OUT /= EXPECTED_DATA_OUT or C_OUT /= EXPECTED_C_OUT) then
				STD.TEXTIO.write(TX_LOC, string'("Fehler! DATA_OUT: "));
				IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, DATA_OUT);
				STD.TEXTIO.write(TX_LOC, string'(" Erwartet: "));
				IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, EXPECTED_DATA_OUT);

				STD.TEXTIO.write(TX_LOC, string'(" C_OUT: "));
				IEEE.STD_LOGIC_TEXTIO.write(TX_LOC,C_OUT);
				STD.TEXTIO.write(TX_LOC, string'(" Erwartet: "));
				IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, EXPECTED_C_OUT);

				STD.TEXTIO.write(TX_LOC, string'("  |  OPERAND: "));
				IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, OPERAND);
				STD.TEXTIO.write(TX_LOC, string'(" MUX_CTRL: "));
				IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, MUX_CTRL);
				STD.TEXTIO.write(TX_LOC, string'(" AMOUNT: "));
				IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, AMOUNT);
				STD.TEXTIO.write(TX_LOC, string'(" ARITH_SHIFT: "));
				IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, ARITH_SHIFT);
				STD.TEXTIO.write(TX_LOC, string'(" C_IN: "));
				IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, C_IN);

				STD.TEXTIO.write(TX_LOC, string'(" "));
				TX_STR(TX_LOC.all'range) := TX_LOC.all;
	            STD.TEXTIO.Deallocate(TX_LOC);
	            assert (false) report TX_STR severity error;
	            ERRORS := ERRORS + 1;
			end if;
		end CHECK;

	begin
		OPERAND <= "1001";

		report SEPARATOR_LINE;
		report "Testen von keinem Shift (MUX_CTRL = 00)" severity note;
		MUX_CTRL <= "00";
		ARITH_SHIFT <= '0';
		C_IN <= '0';

		AMOUNT <= "00";
		wait for 10 ns;
		CHECK("1001", '0');

		AMOUNT <= "01";
		wait for 10 ns;
		CHECK("1001", '0');
		
		AMOUNT <= "10";
		C_IN <= '1';
		wait for 10 ns;
		CHECK("1001", '0');

		AMOUNT <= "11";
		C_IN <= '0';
		wait for 10 ns;
		CHECK("1001", '0');

		report SEPARATOR_LINE;
		report "Testen von Linksshift (MUX_CTRL = 01)" severity note;
		MUX_CTRL <= "01";

		AMOUNT <= "00";
		C_IN <= '1';
		wait for 10 ns;
		CHECK("1001", '0');

		AMOUNT <= "01";
		C_IN <= '0';
		wait for 10 ns;
		CHECK("0010", '1');

		AMOUNT <= "10";
		wait for 10 ns;
		CHECK("0100", '0');

		AMOUNT <= "11";
		wait for 10 ns;
		CHECK("1000", '0');

		report SEPARATOR_LINE;
		report "Testen von Rechtsshift (MUX_CTRL = 10)" severity note;
		MUX_CTRL <= "10";

		AMOUNT <= "00";
		wait for 10 ns;
		CHECK("1001", '0');

		AMOUNT <= "01";
		wait for 10 ns;
		CHECK("0100", '1');

		AMOUNT <= "10";
		C_IN <= '1';
		wait for 10 ns;
		CHECK("0010", '0');

		AMOUNT <= "11";
		C_IN <= '0';
		wait for 10 ns;
		CHECK("0001", '0');

		report SEPARATOR_LINE;
		report "Testen von arithmetischem Rechtsshift (MUX_CTRL = 10, ARITH_SHIFT = 1)" severity note;
		ARITH_SHIFT <= '1';

		AMOUNT <= "00";
		wait for 10 ns;
		CHECK("1001", '0');

		AMOUNT <= "01";
		wait for 10 ns;
		CHECK("1100", '1');

		AMOUNT <= "10";
		wait for 10 ns;
		CHECK("1110", '0');

		AMOUNT <= "11";
		wait for 10 ns;
		CHECK("1111", '0');

		report SEPARATOR_LINE;
		report "Testen der Rechtsrotation (MUX_CTRL = 11)" severity note;
		MUX_CTRL <= "11";
		ARITH_SHIFT <= '0';

		AMOUNT <= "00";
		C_IN <= '1';
		wait for 10 ns;
		CHECK("1001", '0');

		AMOUNT <= "01";
		C_IN <= '0';
		wait for 10 ns;
		CHECK("1100", '1');

		AMOUNT <= "10";
		wait for 10 ns;
		CHECK("0110", '0');

		AMOUNT <= "11";
		wait for 10 ns;
		CHECK("0011", '0');

		report SEPARATOR_LINE;
		report "Weitere Tests" severity note;
		MUX_CTRL <= "00";
		C_IN <= '1';

		AMOUNT <= "00";
		wait for 10 ns;
		CHECK("1001", '0');

		OPERAND <= "0111";
		AMOUNT <= "10";
		wait for 10 ns;
		CHECK("0111", '0');
		wait for 10 ns;
		CHECK("0111", '0');
		wait for 10 ns;
		CHECK("0111", '0');

		OPERAND <= "0000";
		C_IN <= '0';
		AMOUNT <= "11";
		wait for 10 ns;
		CHECK("0000", '0');

		AMOUNT <= "00";
		wait for 10 ns;
		CHECK("0000", '0');

		report SEPARATOR_LINE;
		report "Simulation beendet " severity note;
                if (ERRORS = 0) then
                  assert (false) report "Simulation erfolgreich (0 Fehler)." severity note;
                else
                  assert (false) report "Simulation nicht erfolgreich (" & integer'image(ERRORS) & " Fehler)" severity error;
                end if;
		report SEPARATOR_LINE;
		report " EOT (END OF TEST) - Diese Fehlermeldung stoppt den Simulator unabhaengig von tatsaechlich aufgetretenen Fehlern!" severity failure; 
		wait;
	end process tb;

end architecture behave;