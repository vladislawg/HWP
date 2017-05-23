library ieee;
use ieee.std_logic_1164.all;
use ieee.math_real.ceil;
use ieee.math_real.log2;
use ieee.numeric_std.all;



entity ArmRAMB_4kx8 is
	generic (WIDTH : positive := 8;
			 SIZE  : positive := 4096);
	port (RAM_CLK : in std_logic;
		ADDRA : in  std_logic_vector(integer(ceil(log2(real(SIZE))))-1 downto 0);
		DOA   : out std_logic_vector(WIDTH-1 downto 0);
		ENA	  : in  std_logic;
		ADDRB : in  std_logic_vector(integer(ceil(log2(real(SIZE))))-1 downto 0);
		DIB   : in  std_logic_vector(WIDTH-1 downto 0);
		DOB   : out std_logic_vector(WIDTH-1 downto 0);
		ENB	  : in  std_logic;
		WEB   : in  std_logic);
end entity ArmRAMB_4kx8;


architecture behavioral of ArmRAMB_4kx8 is
	type ram_type is array(SIZE-1 downto 0) of std_logic_vector(WIDTH-1 downto 0);
	signal RAM : ram_type;
	signal read_data_A : std_logic_vector(integer(ceil(log2(real(SIZE))))-1 downto 0);
	signal read_data_B : std_logic_vector(integer(ceil(log2(real(SIZE))))-1 downto 0);
	signal DataB : std_logic_vector(WIDTH -1 downto 0);
begin
	process (RAM_CLK)
	begin
		if rising_edge(RAM_CLK) then
			if (ENA = '1') then
				read_data_A <= ADDRA;
			end if;
			if (ENB = '1') then
				DataB <= RAM(to_integer(unsigned(ADDRB)));
				if (WEB = '1') then
					RAM (to_integer(unsigned(ADDRB))) <= DIB;
				end if;
			end if;
		end if;
	end process;
	DOA <= RAM(to_integer(unsigned(read_data_A)));
	DOB <= DataB;
end architecture behavioral;
