library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter is
    port (
        EXT_RST: in std_logic;
        EXT_CLK: in std_logic;
        EXT_LED: out std_logic_vector(7 downto 0)
	);
end entity counter ;

architecture fast of counter is
	signal temp: unsigned(7 downto 0) := "00000000";
begin
	EXT_LED <= std_logic_vector(temp);

	process (EXT_CLK, EXT_RST)
	begin
		if EXT_RST = '1' then
			temp <= "00000000";
		elsif (rising_edge(EXT_CLK)) then
			temp <= temp + 1;
	   	end if;
	end process;
end architecture fast;
