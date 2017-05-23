------------------------------------------------------------------------------
--	Registerspeichers des ARM-SoC
------------------------------------------------------------------------------
--	Datum:		05.11.2013
--	Version:	0.1
------------------------------------------------------------------------------

library work;
use work.ArmTypes.all;
use work.ArmRegAddressTranslation.all;
use work.ArmGlobalProbes.all;
use work.ArmConfiguration.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; -- für array index

entity ArmRegfile is
	Port ( REF_CLK 		: in std_logic;
	       REF_RST 		: in  std_logic;

	       REF_W_PORT_A_ENABLE	: in std_logic;
	       REF_W_PORT_B_ENABLE	: in std_logic;
	       REF_W_PORT_PC_ENABLE	: in std_logic;

	       REF_W_PORT_A_ADDR 	: in std_logic_vector(4 downto 0);
	       REF_W_PORT_B_ADDR 	: in std_logic_vector(4 downto 0);

	       REF_R_PORT_A_ADDR 	: in std_logic_vector(4 downto 0);
	       REF_R_PORT_B_ADDR 	: in std_logic_vector(4 downto 0);
	       REF_R_PORT_C_ADDR 	: in std_logic_vector(4 downto 0);

	       REF_W_PORT_A_DATA 	: in std_logic_vector(31 downto 0);   
	       REF_W_PORT_B_DATA 	: in std_logic_vector(31 downto 0);   
	       REF_W_PORT_PC_DATA 	: in std_logic_vector(31 downto 0);   

	       REF_R_PORT_A_DATA 	: out std_logic_vector(31 downto 0);   
	       REF_R_PORT_B_DATA 	: out std_logic_vector(31 downto 0);   
	       REF_R_PORT_C_DATA 	: out std_logic_vector(31 downto 0)
       );	
end entity ArmRegfile;

architecture behave of ArmRegfile is
	type reg_type is array(30 downto 0) of std_logic_vector(31 downto 0);
	signal registers : reg_type;
begin
	REF_R_PORT_A_DATA <= registers(to_integer(unsigned(REF_R_PORT_A_ADDR)));
	REF_R_PORT_B_DATA <= registers(to_integer(unsigned(REF_R_PORT_B_ADDR)));
	REF_R_PORT_C_DATA <= registers(to_integer(unsigned(REF_R_PORT_C_ADDR)));
	
	process(REF_CLK)
	begin
		if rising_edge(REF_CLK) then
			if REF_RST = '1' then
				registers <= (others => (others => '0'));
			end if ;

			if REF_W_PORT_PC_ENABLE = '1' then
				registers(15) <= REF_W_PORT_PC_DATA;
			end if;

			if REF_W_PORT_B_ENABLE = '1' then
				registers(to_integer(unsigned(REF_W_PORT_B_ADDR))) <= REF_W_PORT_B_DATA;
			end if;

			if REF_W_PORT_A_ENABLE = '1' then
				registers(to_integer(unsigned(REF_W_PORT_A_ADDR))) <= REF_W_PORT_A_DATA;
			end if;
		end if;
	end process ;
	
		
--------------------------------------------------------------------------------
--	Zuweisungen interner Signale an globale Signale zu Testzwecken
--	Weisen Sie dem Testsignal jeweils den Registerinhalt des Registers
--	mit der passenden physischen Adresse zu, also z.B.
--	AGP_PHY_R0 	<= Registerspeicher an Adresse/Index "00000"/0
--------------------------------------------------------------------------------

-- synthesis translate_off	
	AGP_PHY_R0	<= registers(0);
	AGP_PHY_R1	<= registers(1);
	AGP_PHY_R2	<= registers(2);
	AGP_PHY_R3	<= registers(3);
	AGP_PHY_R4	<= registers(4);
	AGP_PHY_R5	<= registers(5);
	AGP_PHY_R6	<= registers(6);
	AGP_PHY_R7	<= registers(7);
	AGP_PHY_R8	<= registers(8);
	AGP_PHY_R9	<= registers(9);
	AGP_PHY_R10	<= registers(10);
	AGP_PHY_R11	<= registers(11);
	AGP_PHY_R12	<= registers(12);
	AGP_PHY_R13	<= registers(13);
	AGP_PHY_R14	<= registers(14);
	AGP_PHY_R15	<= registers(15);
	AGP_PHY_R16	<= registers(16);
	AGP_PHY_R17	<= registers(17);
	AGP_PHY_R18	<= registers(18);
	AGP_PHY_R19	<= registers(19);
	AGP_PHY_R20	<= registers(20);
	AGP_PHY_R21	<= registers(21);
	AGP_PHY_R22	<= registers(22);
	AGP_PHY_R23	<= registers(23);
	AGP_PHY_R24	<= registers(24);
	AGP_PHY_R25	<= registers(25);
	AGP_PHY_R26	<= registers(26);
	AGP_PHY_R27	<= registers(27);
	AGP_PHY_R28	<= registers(28);
	AGP_PHY_R29	<= registers(29);
	AGP_PHY_R30	<= registers(30);
-- synthesis translate_on	

end architecture behave;

