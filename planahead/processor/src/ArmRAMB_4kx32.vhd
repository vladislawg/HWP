--------------------------------------------------------------------------------
--	Wrapper um Spartan3E-Blockram fuer den RAM des HWPR-Prozessors.
--------------------------------------------------------------------------------
--	Datum:		??.??.2013
--	Version:	?.?
--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity ArmRAMB_4kx32 is
	generic(
--------------------------------------------------------------------------------
--	SELECT_LINES ist fuer das HWPR irrelevant, wird aber in einer
--	komplexeren Variante dieses Speichers zur Groessenauswahl
--	benoetigt. Im Hardwarepraktikum bitte ignorieren und nicht aendern.
--------------------------------------------------------------------------------
		SELECT_LINES : natural range 0 to 2 := 1);
    port(
		RAM_CLK	: in  std_logic;
        ENA		: in  std_logic;
		ADDRA	: in  std_logic_vector(11 downto 0);
        WEB		: in  std_logic_vector(3 downto 0);
        ENB		: in  std_logic;
		ADDRB	: in  std_logic_vector(11 downto 0);
        DIB		: in  std_logic_vector(31 downto 0);
        DOA		: out  std_logic_vector(31 downto 0);
        DOB		: out  std_logic_vector(31 downto 0));
end entity ArmRAMB_4kx32;

architecture behavioral of ArmRAMB_4kx32 is
begin
    ram_gen: for i in 1 to 4 generate
            
        RAM_x8: entity work.ArmRAMB_4kx8(behavioral)
                generic map(WIDTH => 8,
                            SIZE => 4096)
                port map(   RAM_CLK => RAM_CLK, 
                            ADDRA => ADDRA,
                            DOA => DOA(i*8-1 downto (i-1)*8),
                            ENA => ENA,
                            ADDRB => ADDRB,
                            DIB => DIB(i*8-1 downto (i-1)*8),   
                            DOB => DOB(i*8-1 downto (i-1)*8),   
                            ENB => ENB,   
                            WEB => WEB(i-1));
    end generate ram_gen;
end architecture behavioral;
