--Für diese Testbench wurde die ArmDataReplication_tb.vhd aus den Vorgaben angepasst.

use std.textio.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_textio.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library work;
use work.armtypes.all;

entity Ampel_tb is
end entity Ampel_tb;

architecture testbench_ampel of Ampel_tb is
    component Ampel
    port(
        CLK     : in std_logic;
        RST     : in std_logic;
        E_AKTIV : in std_logic;
        A_ROT   : out std_logic;
        A_GELB  : out std_logic;
        A_GRUEN : out std_logic
        );
    end component Ampel;


    constant SEPARATOR_LINE : string(80 downto 1) := 
        "--------------------------------------------------------------------------------"; 

    signal CLK : std_logic := '0';
    signal RST : std_logic;
    signal E_AKTIV : std_logic;
    signal A_ROT : std_logic;
    signal A_GELB : std_logic;
    signal A_GRUEN : std_logic;


    shared variable TX_ERROR : integer := 0;
    shared variable TX_OUT : line;

    begin

        CLK <= not CLK after 10 ns;


        UUT : Ampel
        port map (
            CLK     => CLK,
            RST     => RST,
            E_AKTIV => E_AKTIV,
            A_ROT   => A_ROT,
            A_GELB  => A_GELB,
            A_GRUEN => A_GRUEN
        );

        process
            procedure CHECK_RGG(
                next_A_ROT : std_logic;
                next_A_GELB : std_logic;
                next_A_GRUEN : std_logic;
                TX_TIME : integer   
            ) is
                variable TX_STR : string(1 to 4096);
                variable TX_LOC : line;
                begin
                if (A_ROT /= next_A_ROT) or (A_GELB /= next_A_GELB) or (A_GRUEN /= next_A_GRUEN) then
                    STD.TEXTIO.write(TX_LOC, string'("YOU MESSED UP at " ));
                    STD.TEXTIO.write(TX_LOC, TX_TIME);
                    STD.TEXTIO.write(TX_LOC, string'("ns A_ROT = "));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, A_ROT);
                    STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, next_A_ROT);
                    STD.TEXTIO.write(TX_LOC, string'(" "));

                    STD.TEXTIO.write(TX_LOC, string'("A_GELB = "));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, A_GELB);
                    STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, next_A_GELB);
                    STD.TEXTIO.write(TX_LOC, string'(" "));

                    STD.TEXTIO.write(TX_LOC, string'("A_GRUEN = "));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, A_GRUEN);
                    STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, next_A_GRUEN);
                    STD.TEXTIO.write(TX_LOC, string'(" "));
                    TX_STR(TX_LOC.all'range) := TX_LOC.all;
                    STD.TEXTIO.Deallocate(TX_LOC);
                    assert (false) report TX_STR severity error;
                    TX_ERROR := TX_ERROR + 1;
                end if;
            end;
            begin
                -- -------------  Current Time:  10ns
                wait for 10 ns;
                RST <= '1';
                E_AKTIV <= '1';
                wait for 30 ns;
                CHECK_RGG('1','0','0', 40);
                wait for 10 ns;
                RST <= '0';
                wait for 25 ns;
                CHECK_RGG ('1','1', '0', 75);
                wait for 20 ns;
                CHECK_RGG ('0','0', '1', 95);
                wait for 20 ns;
                CHECK_RGG ('0','1', '0', 115);
                wait for 20 ns;
                CHECK_RGG ('1','0', '0', 125);
                wait for 20 ns;
                CHECK_RGG ('1','1', '0', 145);


                wait for 10 ns;
                E_AKTIV <= '0';
                wait for 10 ns;
                CHECK_RGG ('0','0', '1', 165);
                wait for 20 ns;
                CHECK_RGG ('0','1', '0', 185);
                wait for 20 ns;
                CHECK_RGG ('0','0', '0', 205);
                wait for 20 ns;
                CHECK_RGG ('0','1', '0', 225);


        report SEPARATOR_LINE;
        report "Simulation beendet " severity note;

                if (TX_ERROR = 0) then
                  assert (FALSE) report
                      "Simulation erfolgreich (0 Fehler)."
                      severity note;
                else
                  assert (false) report "Simulation nicht erfolgreich (" & integer'image(TX_ERROR) & " Fehler)"
                         severity error;
                end if;
        report SEPARATOR_LINE;
        
        report " EOT (END OF TEST) - Diese Fehlermeldung stoppt den Simulator unabhängig von tatsächlich aufgetretenen Fehlern!" severity failure; 
            end process;

    end architecture testbench_ampel;

