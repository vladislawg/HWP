--------------------------------------------------------------------------------
--	Schaltung fuer das Zaehlen von Einsen in einem 16-Bit-Vektor, realisiert
-- 	als Baum von Addierern.
--------------------------------------------------------------------------------
--	Datum:		??.??.2013
--	Version:	?.??
--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ArmRegisterBitAdder is
	Port (
		RBA_REGLIST 	: in  std_logic_vector(15 downto 0);
		RBA_NR_OF_REGS 	: out  std_logic_vector(4 downto 0)
	);
end entity ArmRegisterBitAdder;

architecture structure of ArmRegisterBitAdder is
	signal ha : unsigned(15 downto 0);
	signal a1 : unsigned(11 downto 0);
	signal a2 : unsigned(7 downto 0);
begin
	ha_gen: for i in 0 to 7 generate
	 	-- 1 dt 0									0									1
	 	-- 3 dt 2									2									3
		ha(2*i+1 downto 2*i) <= ('0' & unsigned'("" & RBA_REGLIST(2*i))) + ('0' & unsigned'("" & RBA_REGLIST(2*i + 1)));
	end generate;

	a1_gen: for i in 0 to 3 generate
		-- 2 dt 0					1 dt 0					3 dt 2
		-- 5 dt 3					5 dt 4					7 dt 6
		a1(3*i+2 downto 3*i) <= ('0' & ha(4*i+1 downto 4*i)) + ('0' & ha(4*i+3 downto 4*i+2));
	end generate;

	a2_gen: for i in 0 to 1 generate
		-- 3 dt 0 					2 dt 0					5 dt 3
		-- 7 dt 4					8 dt 6					11 dt 9
		a2(4*i+3 downto 4*i) <= ('0' & a1(6*i+2 downto 6*i)) + ('0' & a1(6*i+5 downto 6*i+3));
	end generate;

	RBA_NR_OF_REGS <= std_logic_vector(('0' & a2(7 downto 4)) + ('0' & a2(3 downto 0)));

end architecture structure;
