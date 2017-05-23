------------------------------------------------------------------------------
--	Paket fuer die Funktionen zur die Abbildung von ARM-Registeradressen
-- 	auf Adressen des physischen Registerspeichers (5-Bit-Adressen)
------------------------------------------------------------------------------
--	Datum:		05.11.2013
--	Version:	0.1
------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
library work;
use work.ArmTypes.all;

package ArmRegaddressTranslation is
  
	function get_internal_address(
		EXT_ADDRESS: std_logic_vector(3 downto 0); 
		THIS_MODE: std_logic_vector(4 downto 0); 
		USER_BIT : std_logic) 
	return std_logic_vector;

end package ArmRegaddressTranslation;

package body ArmRegAddressTranslation is

--------------------------------------------------------------------------------
-- R1       = 0
-- R1       = 1
-- R2       = 2
-- R3       = 3
-- R1       = 4
-- R5       = 5
-- R6       = 6
-- R7       = 7
-- R8       = 8
-- R9       = 9
-- R10      = 10
-- R11      = 11
-- R12      = 12
-- R13(SP)  = 13
-- R14(LR)  = 14
-- R15(PC)  = 15
-- R8_fiq   = 16
-- R9_fiq   = 17
-- R10_fiq  = 18
-- R11_fiq  = 19
-- R12_fiq  = 20
-- R13_fiq  = 21
-- R14_fiq  = 22
-- R13_irq  = 23
-- R14_irq  = 24
-- R13_svc  = 25
-- R14_svc  = 26
-- R13_abt  = 27
-- R14_abt  = 28
-- R13_und  = 29
-- R14_und  = 30
--------------------------------------------------------------------------------


function get_internal_address(
	EXT_ADDRESS: std_logic_vector(3 downto 0);
	THIS_MODE: std_logic_vector(4 downto 0); 
	USER_BIT : std_logic) 
	return std_logic_vector 
is

--------------------------------------------------------------------------------		
--	Raum fuer lokale Variablen innerhalb der Funktion
--------------------------------------------------------------------------------
	variable internal_address : std_logic_vector(4 downto 0);

	begin
--------------------------------------------------------------------------------		
--	Functionscode
--------------------------------------------------------------------------------
		
	if THIS_MODE = USER or THIS_MODE = SYSTEM or USER_BIT = '1' then
			internal_address := '0' & EXT_ADDRESS;
		elsif THIS_MODE = FIQ then
			case (EXT_ADDRESS) is
				when R8 => internal_address := "10000"; -- R8
				when R9 => internal_address := "10001"; -- R9
				when R10 => internal_address := "10010"; -- R10
				when R11 => internal_address := "10011"; -- R11
				when R12 => internal_address := "10100"; -- R12
				when R13 => internal_address := "10101"; -- R13 SP
				when R14 => internal_address := "10110"; -- R14 LR
				when others => internal_address := '0' & EXT_ADDRESS;
			end case;
		elsif THIS_MODE = IRQ then
			case (EXT_ADDRESS) is
				when R13 => internal_address := "10111"; -- R13 SP
				when R14 => internal_address := "11000"; -- R14 LR
				when others => internal_address := '0' & EXT_ADDRESS;
			end case;
		elsif THIS_MODE = SUPERVISOR then
			case (EXT_ADDRESS) is
				when R13 => internal_address := "11001"; -- R13 SP
				when R14 => internal_address := "11010"; -- R14 LR
				when others => internal_address := '0' & EXT_ADDRESS;
			end case;
		elsif THIS_MODE = ABORT then
			case (EXT_ADDRESS) is
				when R13 => internal_address := "11011"; -- R13 SP
				when R14 => internal_address := "11100"; -- R14 LR
				when others => internal_address := '0' & EXT_ADDRESS;
			end case;
		elsif THIS_MODE = UNDEFINED then
			case (EXT_ADDRESS) is
				when R13 => internal_address := "11101"; -- R13 SP
				when R14 => internal_address := "11110"; -- R14 LR
				when others => internal_address := '0' & EXT_ADDRESS;
			end case;
		else
			internal_address := "00000";
	end if;

	return internal_address;			

end function get_internal_address;	
	 
end package body ArmRegAddressTranslation;
