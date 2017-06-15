--------------------------------------------------------------------------------
--	Prioritaetsencoder fuer das Finden des niederwertigsten
-- 	gesetzten Bits in einem 16-Bit-Vektor.
--------------------------------------------------------------------------------
--	Datum:		??.??.2013
--	Version:	?.??
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ArmPriorityVectorFilter is
	port(
		PVF_VECTOR_UNFILTERED	: in std_logic_vector(15 downto 0);
		PVF_VECTOR_FILTERED	: out std_logic_vector(15 downto 0)
	    );
end entity ArmPriorityVectorFilter;

architecture structure of ArmPriorityVectorFilter is

begin
	 
--	PVF_VECTOR_FILTERED <= 	(others => '0') when PVF_VECTOR_UNFILTERED = "0000000000000000" else
--							"0000000000000001" when PVF_VECTOR_UNFILTERED = "0000000000000001" else
--							"0000000000000010" when PVF_VECTOR_UNFILTERED = "0000000000000010" else
--							"0000000000000100" when PVF_VECTOR_UNFILTERED = "0000000000000100" else
--							"0000000000001000" when PVF_VECTOR_UNFILTERED = "0000000000001000" else
--							"0000000000010000" when PVF_VECTOR_UNFILTERED = "0000000000010000" else
--							"0000000000100000" when PVF_VECTOR_UNFILTERED = "0000000000100000" else
--							"0000000001000000" when PVF_VECTOR_UNFILTERED = "0000000001000000" else
--							"0000000010000000" when PVF_VECTOR_UNFILTERED = "0000000010000000" else
--							"0000000100000000" when PVF_VECTOR_UNFILTERED = "0000000100000000" else
--							"0000001000000000" when PVF_VECTOR_UNFILTERED = "0000001000000000" else
--							"0000010000000000" when PVF_VECTOR_UNFILTERED = "0000010000000000" else
--							"0000100000000000" when PVF_VECTOR_UNFILTERED = "0000100000000000" else
--							"0001000000000000" when PVF_VECTOR_UNFILTERED = "0001000000000000" else
--							"0010000000000000" when PVF_VECTOR_UNFILTERED = "0010000000000000" else
--							"0100000000000000" when PVF_VECTOR_UNFILTERED = "0100000000000000" else
--							"1000000000000000" when PVF_VECTOR_UNFILTERED = "1000000000000000" else
--							PVF_VECTOR_UNFILTERED and std_logic_vector(unsigned(not PVF_VECTOR_UNFILTERED) + 1);

PVF_VECTOR_FILTERED <= PVF_VECTOR_UNFILTERED and std_logic_vector(unsigned(not PVF_VECTOR_UNFILTERED) + 1);

end architecture structure;

