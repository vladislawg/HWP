library ieee;
use ieee.std_logic_1164.all;

entity counter_tw is
end counter_tw;

architecture testbench of counter_tw is
	component counter
		port (
			EXT_RST : in std_logic;
			EXT_CLK : in std_logic;
			EXT_LED : out std_logic_vector(7 downto 0)
		);
	end component counter;

	signal CLK : std_logic := '0';
	signal RST : std_logic := '0';
	signal LED : std_logic_vector(7 downto 0) := "00000000";
begin
	CLK <= 	not CLK after 20 ns;

	RST <= 	'1' after 80 ns, '0' after 120 ns;

	uut : counter 
		port map (
			EXT_CLK => CLK,
			EXT_RST => RST,
			EXT_LED => LED
		);

end testbench;