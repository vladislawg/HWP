--------------------------------------------------------------------------------
--	16-Bit-Register zur Steuerung der Auswahl des naechsten Registers
--	bei der Ausfuehrung von STM/LDM-Instruktionen. Das Register wird
--	mit der Bitmaske der Instruktion geladen. Ein Prioritaetsencoder
--	(Modul ArmPriorityVectorFilter) bestimmt das Bit mit der hochsten 
--	Prioritaet. Zu diesem Bit wird eine 4-Bit-Registeradresse erzeugt und
--	das Bit im Register geloescht. Bis zum Laden eines neuen Datums wird
--	mit jedem Takt ein Bit geloescht bis das Register leer ist.	
--------------------------------------------------------------------------------
--	Datum:		??.??.2013
--	Version:	?.??
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity ArmLdmStmNextAddress is
	port(
		SYS_RST			: in std_logic;
		SYS_CLK			: in std_logic;	
		LNA_LOAD_REGLIST 	: in std_logic;
		LNA_HOLD_VALUE 		: in std_logic;
		LNA_REGLIST 		: in std_logic_vector(15 downto 0);
		LNA_ADDRESS 		: out std_logic_vector(3 downto 0);
		LNA_CURRENT_REGLIST_REG : out std_logic_vector(15 downto 0)
	    );
end entity ArmLdmStmNextAddress;

architecture behave of ArmLdmStmNextAddress is

	component ArmPriorityVectorFilter
		port(
			PVF_VECTOR_UNFILTERED	: in std_logic_vector(15 downto 0);
			PVF_VECTOR_FILTERED	: out std_logic_vector(15 downto 0)
		);
	end component ArmPriorityVectorFilter;

	signal internalReg : std_logic_vector(15 downto 0);
	signal highestPrioBit : std_logic_vector(15 downto 0);

begin
	CURRENT_REGLIST_FILTER : ArmPriorityVectorFilter
		port map(
			PVF_VECTOR_UNFILTERED	=> internalReg,
			PVF_VECTOR_FILTERED		=> highestPrioBit
		);

	LNA_ADDRESS <= 	"0000" when highestPrioBit = "0000000000000001" else
					"0001" when highestPrioBit = "0000000000000010" else
					"0010" when highestPrioBit = "0000000000000100" else
					"0011" when highestPrioBit = "0000000000001000" else
					"0100" when highestPrioBit = "0000000000010000" else
					"0101" when highestPrioBit = "0000000000100000" else
					"0110" when highestPrioBit = "0000000001000000" else
					"0111" when highestPrioBit = "0000000010000000" else
					"1000" when highestPrioBit = "0000000100000000" else
					"1001" when highestPrioBit = "0000001000000000" else
					"1010" when highestPrioBit = "0000010000000000" else
					"1011" when highestPrioBit = "0000100000000000" else
					"1100" when highestPrioBit = "0001000000000000" else
					"1101" when highestPrioBit = "0010000000000000" else
					"1110" when highestPrioBit = "0100000000000000" else
					"1111" when highestPrioBit = "1000000000000000" else
					"0000";

	LNA_CURRENT_REGLIST_REG <= internalReg;

	process (SYS_CLK)
	begin
		if (rising_edge(SYS_CLK)) then
			if (SYS_RST = '1') then
				internalReg <= (others => '0');
			end if;

			if (LNA_LOAD_REGLIST = '1') then
				internalReg <= LNA_REGLIST;
			else 
				if (LNA_HOLD_VALUE = '1') then 
					internalReg <= internalReg;
				else
					internalReg <= internalReg and (not highestPrioBit);
				end if;
			end if;
		end if;
	end process;

end architecture behave;
