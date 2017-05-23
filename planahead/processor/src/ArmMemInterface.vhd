--------------------------------------------------------------------------------
--	Schnittstelle zur Anbindung des RAM an die Busse des HWPR-Prozessors
--------------------------------------------------------------------------------
--	Datum:		??.??.2013
--	Version:	?.?
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.ArmConfiguration.all;
use work.ArmTypes.all;

entity ArmMemInterface is
	generic(
--------------------------------------------------------------------------------
--	Beide Generics sind fuer das HWPR nicht relevant und koennen von
--	Ihnen ignoriert werden.
--------------------------------------------------------------------------------
		SELECT_LINES				: natural range 0 to 2 := 1;
		EXTERNAL_ADDRESS_DECODING_INSTRUCTION : boolean := false);
	port (  RAM_CLK	:  in  std_logic;
		--	Instruction-Interface	
       		IDE		:  in std_logic;	
			IA		:  in std_logic_vector(31 downto 2);
			ID		: out std_logic_vector(31 downto 0);	
			IABORT	: out std_logic;
		--	Data-Interface
			DDE		:  in std_logic;
			DnRW	:  in std_logic;
			DMAS	:  in std_logic_vector(1 downto 0);
			DA 		:  in std_logic_vector(31 downto 0);
			DDIN	:  in std_logic_vector(31 downto 0);
			DDOUT	: out std_logic_vector(31 downto 0);
			DABORT	: out std_logic);
end entity ArmMemInterface;

architecture behave of ArmMemInterface is	
	signal ID_tristate : std_logic_vector(31 downto 0);-- := (others => '0');
	signal DDOUT_tristate  : std_logic_vector(31 downto 0);-- := (others => '0');
	signal WEB : std_logic_vector(3 downto 0);--:= "0000";
	signal speichererror: std_logic;
begin
		
		ID <= ID_tristate when IDE = '1' else (others => 'Z');

		IABORT <= 	'1' when IDE = '1' and (unsigned(INST_LOW_ADDR(31 downto 2)) > unsigned(IA) or unsigned(INST_HIGH_ADDR(31 downto 2)) < unsigned(IA)) else
					'Z' when IDE = '0' else
					'0';

		DDOUT <= DDOUT_tristate when DDE = '1' and DnRW = '0' else  (others => 'Z');

		DABORT <= 	'1' when (DnRW = '0' and DA(1 downto 0) /= "00") or (DDE = '1' and speichererror = '1') else
					'Z' when DDE = '0'else
					'0';

		WEB <= 	"0000" when DnRW = '0' else
				"0001" when DMAS = DMAS_BYTE and DA(1 downto 0) = "00" else
				"0010" when DMAS = DMAS_BYTE and DA(1 downto 0) = "01" else
				"0100" when DMAS = DMAS_BYTE and DA(1 downto 0) = "10" else
				"1000" when DMAS = DMAS_BYTE and DA(1 downto 0) = "11" else
				"0011" when DMAS = DMAS_HWORD and DA(1 downto 0) = "00" else
				"1100" when DMAS = DMAS_HWORD and DA(1 downto 0) = "10" else
				"1111" when DMAS = DMAS_WORD and DA(1 downto 0) = "00" else
				"0000";

		speichererror <= 	'1' when DMAS = DMAS_HWORD and DA(1 downto 0) = "01" else
							'1' when DMAS = DMAS_WORD and DA(1 downto 0) = "01" else
							'1' when DMAS = DMAS_WORD and DA(1 downto 0) = "10" else
							'1' when DMAS = DMAS_WORD and DA(1 downto 0) = "11" else
							'1' when DMAS = DMAS_RESERVED else
							'0';		


			

		RAM: entity work.ArmRAMB_4kx32(behavioral)
			port map(
				RAM_CLK	=> RAM_CLK,
		        ENA		=> IDE,
				ADDRA	=> IA(13 downto 2),
		        WEB		=> WEB,
		        ENB		=> DDE,
				ADDRB	=> DA(13 downto 2),
		        DIB		=> DDIN,
		        DOA		=> ID_tristate,
		        DOB		=> DDOUT_tristate
			);	
end architecture behave;
