--------------------------------------------------------------------------------
-- 	Barrelshifter fuer LSL, LSR, ASR, ROR mit Shiftweiten von 0 bis 3 (oder 
--	generisch n-1) Bit. 
--------------------------------------------------------------------------------
--	Datum:		??.??.2013
--	Version:	?.?
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.math_real.all;
use ieee.numeric_std.all;

entity ArmBarrelShifter is
--------------------------------------------------------------------------------
--	Breite der Operanden (n) und die Zahl der notwendigen
--	Multiplexerstufen (m) um Shifts von 0 bis n-1 Stellen realisieren zu
--	koennen. Es muss gelten: ???
--------------------------------------------------------------------------------
	generic (OPERAND_WIDTH : integer := 4;	
			 SHIFTER_DEPTH : integer := 2
	 );
	port ( 	OPERAND 	: in std_logic_vector(OPERAND_WIDTH-1 downto 0);	
    		MUX_CTRL 	: in std_logic_vector(1 downto 0);
    		AMOUNT 		: in std_logic_vector(SHIFTER_DEPTH-1 downto 0);	
    		ARITH_SHIFT : in std_logic; 
    		C_IN 		: in std_logic;
           	DATA_OUT 	: out std_logic_vector(OPERAND_WIDTH-1 downto 0);	
    		C_OUT 		: out std_logic
	);
end entity ArmBarrelShifter;

architecture structure of ArmBarrelShifter is
--signal hack is array (0 to 6) of integer := (1,2,4,8,16,32);
signal mux_out : std_logic_vector(OPERAND_WIDTH-1 downto 0);
signal a : std_logic;
signal b : std_logic;
signal c : std_logic;

begin
	height_gen : for height in 0 to (SHIFTER_DEPTH-1) generate
		width_gen: for width in 0 to (OPERAND_WIDTH-1) generate 
			
			a <= OPERAND(width);

			b 	<= 	'0' 						when MUX_CTRL = "01" and (2**height) > width else 			--left shift
					OPERAND(width-1)			when MUX_CTRL = "01" and (2**height) <= width else
					OPERAND(OPERAND_WIDTH-1 )	when MUX_CTRL = "10" and ARITH_SHIFT = '1' and (width-(2**height)) <= width else  --right shift
					'0'							when MUX_CTRL = "10" and (width-(2**height)) <= width else 	
					OPERAND(width+1)			when MUX_CTRL = "10" and (width-(2**height)) > width else
					--'0'							when MUX_CTRL = "11" and (width-(2**height)) <= width else  --right rot	
					--OPERAND(width+1)			when MUX_CTRL = "11" and (width-(2**height)) > width else
					OPERAND(width); 																		--no shift

			with AMOUNT(height) select 
					mux_out(width)	<= 	a when '0',
										b when others;

		end generate width_gen;
	end generate height_gen;

	c 	<= OPERAND(to_integer(unsigned(AMOUNT))) when MUX_CTRL = "10" else
		 OPERAND(OPERAND_WIDTH - to_integer(unsigned(AMOUNT))) when MUX_CTRL = "01" else
		 '0';

	DATA_OUT <= mux_out;
	C_OUT	 <= c;

end architecture structure;

