--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: O.76xd
--  \   \         Application: netgen
--  /   /         Filename: ArmRegisterBitAdder-translate.vhd
-- /___/   /\     Timestamp: Mon Jun 12 14:57:24 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -sim -ofmt vhdl ArmRegisterBitAdder.ngd ArmRegisterBitAdder-translate.vhd 
-- Device	: 3s500efg320-4
-- Input file	: ArmRegisterBitAdder.ngd
-- Output file	: ArmRegisterBitAdder-translate.vhd
-- # of Entities	: 1
-- Design Name	: ArmRegisterBitAdder
-- Xilinx	: /afs/tu-berlin.de/units/Fak_IV/aes/tools/xilinx/13.3/ISE_DS/ISE/
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity ArmRegisterBitAdder is
  port (
    RBA_REGLIST : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
    RBA_NR_OF_REGS : out STD_LOGIC_VECTOR ( 4 downto 0 ) 
  );
end ArmRegisterBitAdder;

architecture STRUCTURE of ArmRegisterBitAdder is
  signal Madd_RBA_NR_OF_REGSC : STD_LOGIC; 
  signal Madd_RBA_NR_OF_REGSC1_1 : STD_LOGIC; 
  signal Madd_RBA_NR_OF_REGSR : STD_LOGIC; 
  signal Madd_RBA_NR_OF_REGS_Madd_cy_0_Q : STD_LOGIC; 
  signal Madd_RBA_NR_OF_REGS_Madd_cy_2_Q : STD_LOGIC; 
  signal Madd_RBA_NR_OF_REGS_Madd_cy_3_Q : STD_LOGIC; 
  signal Madd_RBA_NR_OF_REGS_Madd_lut_2_1 : STD_LOGIC; 
  signal Madd_RBA_NR_OF_REGS_Madd_lut_2_11_8 : STD_LOGIC; 
  signal Madd_a2_7_4_add0000_lut_1_1 : STD_LOGIC; 
  signal Madd_a2_7_4_add0000_lut_1_11_19 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal RBA_NR_OF_REGS_0_OBUF_28 : STD_LOGIC; 
  signal RBA_NR_OF_REGS_1_OBUF_29 : STD_LOGIC; 
  signal RBA_NR_OF_REGS_2_OBUF_30 : STD_LOGIC; 
  signal RBA_NR_OF_REGS_3_OBUF_31 : STD_LOGIC; 
  signal RBA_REGLIST_0_IBUF_48 : STD_LOGIC; 
  signal RBA_REGLIST_10_IBUF_49 : STD_LOGIC; 
  signal RBA_REGLIST_11_IBUF_50 : STD_LOGIC; 
  signal RBA_REGLIST_12_IBUF_51 : STD_LOGIC; 
  signal RBA_REGLIST_13_IBUF_52 : STD_LOGIC; 
  signal RBA_REGLIST_14_IBUF_53 : STD_LOGIC; 
  signal RBA_REGLIST_15_IBUF_54 : STD_LOGIC; 
  signal RBA_REGLIST_1_IBUF_55 : STD_LOGIC; 
  signal RBA_REGLIST_2_IBUF_56 : STD_LOGIC; 
  signal RBA_REGLIST_3_IBUF_57 : STD_LOGIC; 
  signal RBA_REGLIST_4_IBUF_58 : STD_LOGIC; 
  signal RBA_REGLIST_5_IBUF_59 : STD_LOGIC; 
  signal RBA_REGLIST_6_IBUF_60 : STD_LOGIC; 
  signal RBA_REGLIST_7_IBUF_61 : STD_LOGIC; 
  signal RBA_REGLIST_8_IBUF_62 : STD_LOGIC; 
  signal RBA_REGLIST_9_IBUF_63 : STD_LOGIC; 
  signal a1_1_Q : STD_LOGIC; 
  signal a1_3_Q : STD_LOGIC; 
  signal a1_4_Q : STD_LOGIC; 
  signal a1_6_Q : STD_LOGIC; 
  signal a1_7_Q : STD_LOGIC; 
  signal Madd_RBA_NR_OF_REGS_Madd_lut : STD_LOGIC_VECTOR ( 3 downto 2 ); 
  signal Madd_a1_11_9_add0000_Madd_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Madd_a1_2_0_add0000_Madd_cy : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal Madd_a1_2_0_add0000_Madd_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Madd_a1_5_3_add0000_Madd_cy : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal Madd_a1_8_6_add0000_Madd_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Madd_a2_7_4_add0000_cy : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal Madd_a2_7_4_add0000_lut : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal RBA_NR_OF_REGS_0 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal RBA_REGLIST_1 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal a2 : STD_LOGIC_VECTOR ( 5 downto 5 ); 
begin
  RBA_REGLIST_1(15) <= RBA_REGLIST(15);
  RBA_REGLIST_1(14) <= RBA_REGLIST(14);
  RBA_REGLIST_1(13) <= RBA_REGLIST(13);
  RBA_REGLIST_1(12) <= RBA_REGLIST(12);
  RBA_REGLIST_1(11) <= RBA_REGLIST(11);
  RBA_REGLIST_1(10) <= RBA_REGLIST(10);
  RBA_REGLIST_1(9) <= RBA_REGLIST(9);
  RBA_REGLIST_1(8) <= RBA_REGLIST(8);
  RBA_REGLIST_1(7) <= RBA_REGLIST(7);
  RBA_REGLIST_1(6) <= RBA_REGLIST(6);
  RBA_REGLIST_1(5) <= RBA_REGLIST(5);
  RBA_REGLIST_1(4) <= RBA_REGLIST(4);
  RBA_REGLIST_1(3) <= RBA_REGLIST(3);
  RBA_REGLIST_1(2) <= RBA_REGLIST(2);
  RBA_REGLIST_1(1) <= RBA_REGLIST(1);
  RBA_REGLIST_1(0) <= RBA_REGLIST(0);
  RBA_NR_OF_REGS(4) <= RBA_NR_OF_REGS_0(4);
  RBA_NR_OF_REGS(3) <= RBA_NR_OF_REGS_0(3);
  RBA_NR_OF_REGS(2) <= RBA_NR_OF_REGS_0(2);
  RBA_NR_OF_REGS(1) <= RBA_NR_OF_REGS_0(1);
  RBA_NR_OF_REGS(0) <= RBA_NR_OF_REGS_0(0);
  Madd_a1_2_0_add0000_Madd_lut_0_1 : X_LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      ADR0 => RBA_REGLIST_3_IBUF_57,
      ADR1 => RBA_REGLIST_2_IBUF_56,
      ADR2 => RBA_REGLIST_1_IBUF_55,
      O => Madd_a1_2_0_add0000_Madd_lut(0)
    );
  Madd_a1_11_9_add0000_Madd_lut_0_1 : X_LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      ADR0 => RBA_REGLIST_13_IBUF_52,
      ADR1 => RBA_REGLIST_12_IBUF_51,
      ADR2 => RBA_REGLIST_15_IBUF_54,
      O => Madd_a1_11_9_add0000_Madd_lut(0)
    );
  Madd_RBA_NR_OF_REGSR1 : X_LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      ADR0 => a2(5),
      ADR1 => a1_1_Q,
      ADR2 => a1_4_Q,
      O => Madd_RBA_NR_OF_REGSR
    );
  Madd_a2_7_4_add0000_lut_0_1 : X_LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      ADR0 => a1_6_Q,
      ADR1 => Madd_a1_11_9_add0000_Madd_lut(0),
      ADR2 => RBA_REGLIST_14_IBUF_53,
      O => Madd_a2_7_4_add0000_lut(0)
    );
  Madd_RBA_NR_OF_REGS_Madd_xor_2_11 : X_LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      ADR0 => Madd_RBA_NR_OF_REGS_Madd_cy_0_Q,
      ADR1 => Madd_RBA_NR_OF_REGS_Madd_lut(2),
      ADR2 => Madd_RBA_NR_OF_REGSR,
      O => RBA_NR_OF_REGS_2_OBUF_30
    );
  Madd_RBA_NR_OF_REGS_Madd_lut_3_Q : X_LUT4
    generic map(
      INIT => X"63C9"
    )
    port map (
      ADR0 => Madd_a2_7_4_add0000_lut(2),
      ADR1 => Madd_RBA_NR_OF_REGSC1_1,
      ADR2 => N2,
      ADR3 => Madd_a2_7_4_add0000_cy(1),
      O => Madd_RBA_NR_OF_REGS_Madd_lut(3)
    );
  Madd_RBA_NR_OF_REGS_Madd_xor_3_11 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => Madd_RBA_NR_OF_REGS_Madd_lut(3),
      ADR1 => Madd_RBA_NR_OF_REGS_Madd_cy_2_Q,
      O => RBA_NR_OF_REGS_3_OBUF_31
    );
  Madd_RBA_NR_OF_REGS_Madd_cy_3_11 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => Madd_RBA_NR_OF_REGS_Madd_lut(3),
      ADR1 => Madd_RBA_NR_OF_REGS_Madd_cy_2_Q,
      ADR2 => Madd_RBA_NR_OF_REGSC1_1,
      O => Madd_RBA_NR_OF_REGS_Madd_cy_3_Q
    );
  Madd_RBA_NR_OF_REGSC1 : X_LUT3
    generic map(
      INIT => X"E8"
    )
    port map (
      ADR0 => a1_4_Q,
      ADR1 => a2(5),
      ADR2 => a1_1_Q,
      O => Madd_RBA_NR_OF_REGSC
    );
  Madd_a2_7_4_add0000_cy_1_11 : X_LUT4
    generic map(
      INIT => X"4E44"
    )
    port map (
      ADR0 => Madd_a2_7_4_add0000_lut(1),
      ADR1 => a1_7_Q,
      ADR2 => Madd_a2_7_4_add0000_lut(0),
      ADR3 => a1_6_Q,
      O => Madd_a2_7_4_add0000_cy(1)
    );
  Madd_RBA_NR_OF_REGS_Madd_cy_2_11 : X_LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      ADR0 => Madd_RBA_NR_OF_REGS_Madd_lut(2),
      ADR1 => Madd_RBA_NR_OF_REGSC,
      ADR2 => Madd_RBA_NR_OF_REGSR,
      ADR3 => Madd_RBA_NR_OF_REGS_Madd_cy_0_Q,
      O => Madd_RBA_NR_OF_REGS_Madd_cy_2_Q
    );
  RBA_REGLIST_15_IBUF : X_BUF
    port map (
      I => RBA_REGLIST_1(15),
      O => RBA_REGLIST_15_IBUF_54
    );
  RBA_REGLIST_14_IBUF : X_BUF
    port map (
      I => RBA_REGLIST_1(14),
      O => RBA_REGLIST_14_IBUF_53
    );
  RBA_REGLIST_13_IBUF : X_BUF
    port map (
      I => RBA_REGLIST_1(13),
      O => RBA_REGLIST_13_IBUF_52
    );
  RBA_REGLIST_12_IBUF : X_BUF
    port map (
      I => RBA_REGLIST_1(12),
      O => RBA_REGLIST_12_IBUF_51
    );
  RBA_REGLIST_11_IBUF : X_BUF
    port map (
      I => RBA_REGLIST_1(11),
      O => RBA_REGLIST_11_IBUF_50
    );
  RBA_REGLIST_10_IBUF : X_BUF
    port map (
      I => RBA_REGLIST_1(10),
      O => RBA_REGLIST_10_IBUF_49
    );
  RBA_REGLIST_9_IBUF : X_BUF
    port map (
      I => RBA_REGLIST_1(9),
      O => RBA_REGLIST_9_IBUF_63
    );
  RBA_REGLIST_8_IBUF : X_BUF
    port map (
      I => RBA_REGLIST_1(8),
      O => RBA_REGLIST_8_IBUF_62
    );
  RBA_REGLIST_7_IBUF : X_BUF
    port map (
      I => RBA_REGLIST_1(7),
      O => RBA_REGLIST_7_IBUF_61
    );
  RBA_REGLIST_6_IBUF : X_BUF
    port map (
      I => RBA_REGLIST_1(6),
      O => RBA_REGLIST_6_IBUF_60
    );
  RBA_REGLIST_5_IBUF : X_BUF
    port map (
      I => RBA_REGLIST_1(5),
      O => RBA_REGLIST_5_IBUF_59
    );
  RBA_REGLIST_4_IBUF : X_BUF
    port map (
      I => RBA_REGLIST_1(4),
      O => RBA_REGLIST_4_IBUF_58
    );
  RBA_REGLIST_3_IBUF : X_BUF
    port map (
      I => RBA_REGLIST_1(3),
      O => RBA_REGLIST_3_IBUF_57
    );
  RBA_REGLIST_2_IBUF : X_BUF
    port map (
      I => RBA_REGLIST_1(2),
      O => RBA_REGLIST_2_IBUF_56
    );
  RBA_REGLIST_1_IBUF : X_BUF
    port map (
      I => RBA_REGLIST_1(1),
      O => RBA_REGLIST_1_IBUF_55
    );
  RBA_REGLIST_0_IBUF : X_BUF
    port map (
      I => RBA_REGLIST_1(0),
      O => RBA_REGLIST_0_IBUF_48
    );
  Madd_a1_5_3_add0000_Madd_cy_1_11 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => RBA_REGLIST_4_IBUF_58,
      ADR1 => RBA_REGLIST_5_IBUF_59,
      ADR2 => RBA_REGLIST_7_IBUF_61,
      ADR3 => RBA_REGLIST_6_IBUF_60,
      O => Madd_a1_5_3_add0000_Madd_cy(1)
    );
  Madd_a1_2_0_add0000_Madd_cy_1_11 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => RBA_REGLIST_2_IBUF_56,
      ADR1 => RBA_REGLIST_3_IBUF_57,
      ADR2 => RBA_REGLIST_1_IBUF_55,
      ADR3 => RBA_REGLIST_0_IBUF_48,
      O => Madd_a1_2_0_add0000_Madd_cy(1)
    );
  Madd_a1_5_3_add0000_Madd_xor_1_11 : X_LUT4
    generic map(
      INIT => X"7EE8"
    )
    port map (
      ADR0 => RBA_REGLIST_4_IBUF_58,
      ADR1 => RBA_REGLIST_5_IBUF_59,
      ADR2 => RBA_REGLIST_7_IBUF_61,
      ADR3 => RBA_REGLIST_6_IBUF_60,
      O => a1_4_Q
    );
  Madd_a1_2_0_add0000_Madd_xor_1_11 : X_LUT4
    generic map(
      INIT => X"7EE8"
    )
    port map (
      ADR0 => RBA_REGLIST_2_IBUF_56,
      ADR1 => RBA_REGLIST_3_IBUF_57,
      ADR2 => RBA_REGLIST_1_IBUF_55,
      ADR3 => RBA_REGLIST_0_IBUF_48,
      O => a1_1_Q
    );
  Madd_RBA_NR_OF_REGS_Madd_cy_0_11 : X_LUT4
    generic map(
      INIT => X"F660"
    )
    port map (
      ADR0 => Madd_a1_2_0_add0000_Madd_lut(0),
      ADR1 => RBA_REGLIST_0_IBUF_48,
      ADR2 => a1_3_Q,
      ADR3 => Madd_a2_7_4_add0000_lut(0),
      O => Madd_RBA_NR_OF_REGS_Madd_cy_0_Q
    );
  Madd_a1_8_6_add0000_Madd_cy_0_11 : X_LUT4
    generic map(
      INIT => X"F660"
    )
    port map (
      ADR0 => RBA_REGLIST_10_IBUF_49,
      ADR1 => RBA_REGLIST_11_IBUF_50,
      ADR2 => RBA_REGLIST_9_IBUF_63,
      ADR3 => RBA_REGLIST_8_IBUF_62,
      O => Madd_a1_8_6_add0000_Madd_cy(0)
    );
  Madd_a2_7_4_add0000_xor_1_11 : X_LUT4
    generic map(
      INIT => X"96F0"
    )
    port map (
      ADR0 => RBA_REGLIST_14_IBUF_53,
      ADR1 => Madd_a1_11_9_add0000_Madd_lut(0),
      ADR2 => Madd_a2_7_4_add0000_lut(1),
      ADR3 => a1_6_Q,
      O => a2(5)
    );
  Madd_RBA_NR_OF_REGS_Madd_xor_0_11 : X_LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      ADR0 => a1_3_Q,
      ADR1 => Madd_a1_2_0_add0000_Madd_lut(0),
      ADR2 => RBA_REGLIST_0_IBUF_48,
      ADR3 => Madd_a2_7_4_add0000_lut(0),
      O => RBA_NR_OF_REGS_0_OBUF_28
    );
  Madd_a1_5_3_add0000_Madd_xor_0_11 : X_LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      ADR0 => RBA_REGLIST_5_IBUF_59,
      ADR1 => RBA_REGLIST_4_IBUF_58,
      ADR2 => RBA_REGLIST_7_IBUF_61,
      ADR3 => RBA_REGLIST_6_IBUF_60,
      O => a1_3_Q
    );
  Madd_RBA_NR_OF_REGS_Madd_xor_1_11 : X_LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      ADR0 => a2(5),
      ADR1 => a1_1_Q,
      ADR2 => a1_4_Q,
      ADR3 => Madd_RBA_NR_OF_REGS_Madd_cy_0_Q,
      O => RBA_NR_OF_REGS_1_OBUF_29
    );
  Madd_a1_8_6_add0000_Madd_xor_0_11 : X_LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      ADR0 => RBA_REGLIST_9_IBUF_63,
      ADR1 => RBA_REGLIST_10_IBUF_49,
      ADR2 => RBA_REGLIST_11_IBUF_50,
      ADR3 => RBA_REGLIST_8_IBUF_62,
      O => a1_6_Q
    );
  Madd_RBA_NR_OF_REGSC11 : X_LUT4
    generic map(
      INIT => X"F660"
    )
    port map (
      ADR0 => Madd_a2_7_4_add0000_lut(2),
      ADR1 => Madd_a2_7_4_add0000_cy(1),
      ADR2 => Madd_a1_2_0_add0000_Madd_cy(1),
      ADR3 => Madd_a1_5_3_add0000_Madd_cy(1),
      O => Madd_RBA_NR_OF_REGSC1_1
    );
  Madd_a2_7_4_add0000_lut_2_1_SW0 : X_LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      ADR0 => RBA_REGLIST_12_IBUF_51,
      ADR1 => RBA_REGLIST_13_IBUF_52,
      ADR2 => RBA_REGLIST_14_IBUF_53,
      ADR3 => RBA_REGLIST_15_IBUF_54,
      O => N4
    );
  Madd_a2_7_4_add0000_lut_2_1 : X_LUT4
    generic map(
      INIT => X"9333"
    )
    port map (
      ADR0 => RBA_REGLIST_10_IBUF_49,
      ADR1 => N4,
      ADR2 => RBA_REGLIST_11_IBUF_50,
      ADR3 => Madd_a1_8_6_add0000_Madd_cy(0),
      O => Madd_a2_7_4_add0000_lut(2)
    );
  Madd_RBA_NR_OF_REGS_Madd_lut_3_SW0 : X_LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      ADR0 => RBA_REGLIST_10_IBUF_49,
      ADR1 => RBA_REGLIST_11_IBUF_50,
      ADR2 => RBA_REGLIST_9_IBUF_63,
      ADR3 => RBA_REGLIST_8_IBUF_62,
      O => N2
    );
  Madd_a1_8_6_add0000_Madd_xor_1_11 : X_LUT4
    generic map(
      INIT => X"7EE8"
    )
    port map (
      ADR0 => RBA_REGLIST_10_IBUF_49,
      ADR1 => RBA_REGLIST_11_IBUF_50,
      ADR2 => RBA_REGLIST_9_IBUF_63,
      ADR3 => RBA_REGLIST_8_IBUF_62,
      O => a1_7_Q
    );
  Madd_RBA_NR_OF_REGS_Madd_lut_2_11 : X_LUT4
    generic map(
      INIT => X"9669"
    )
    port map (
      ADR0 => Madd_a2_7_4_add0000_lut(2),
      ADR1 => Madd_a2_7_4_add0000_cy(1),
      ADR2 => Madd_a1_2_0_add0000_Madd_cy(1),
      ADR3 => Madd_a1_5_3_add0000_Madd_cy(1),
      O => Madd_RBA_NR_OF_REGS_Madd_lut_2_1
    );
  Madd_RBA_NR_OF_REGS_Madd_lut_2_12 : X_LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      ADR0 => Madd_a2_7_4_add0000_lut(2),
      ADR1 => Madd_a2_7_4_add0000_cy(1),
      ADR2 => Madd_a1_2_0_add0000_Madd_cy(1),
      ADR3 => Madd_a1_5_3_add0000_Madd_cy(1),
      O => Madd_RBA_NR_OF_REGS_Madd_lut_2_11_8
    );
  Madd_RBA_NR_OF_REGS_Madd_lut_2_1_f5 : X_MUX2
    port map (
      IA => Madd_RBA_NR_OF_REGS_Madd_lut_2_11_8,
      IB => Madd_RBA_NR_OF_REGS_Madd_lut_2_1,
      O => Madd_RBA_NR_OF_REGS_Madd_lut(2),
      SEL => Madd_RBA_NR_OF_REGSC
    );
  Madd_a2_7_4_add0000_lut_1_11 : X_LUT4
    generic map(
      INIT => X"9556"
    )
    port map (
      ADR0 => a1_7_Q,
      ADR1 => RBA_REGLIST_12_IBUF_51,
      ADR2 => RBA_REGLIST_13_IBUF_52,
      ADR3 => RBA_REGLIST_14_IBUF_53,
      O => Madd_a2_7_4_add0000_lut_1_1
    );
  Madd_a2_7_4_add0000_lut_1_12 : X_LUT4
    generic map(
      INIT => X"566A"
    )
    port map (
      ADR0 => a1_7_Q,
      ADR1 => RBA_REGLIST_12_IBUF_51,
      ADR2 => RBA_REGLIST_13_IBUF_52,
      ADR3 => RBA_REGLIST_14_IBUF_53,
      O => Madd_a2_7_4_add0000_lut_1_11_19
    );
  Madd_a2_7_4_add0000_lut_1_1_f5 : X_MUX2
    port map (
      IA => Madd_a2_7_4_add0000_lut_1_11_19,
      IB => Madd_a2_7_4_add0000_lut_1_1,
      O => Madd_a2_7_4_add0000_lut(1),
      SEL => RBA_REGLIST_15_IBUF_54
    );
  RBA_NR_OF_REGS_0_OBUF : X_OBUF
    port map (
      I => RBA_NR_OF_REGS_0_OBUF_28,
      O => RBA_NR_OF_REGS_0(0)
    );
  RBA_NR_OF_REGS_1_OBUF : X_OBUF
    port map (
      I => RBA_NR_OF_REGS_1_OBUF_29,
      O => RBA_NR_OF_REGS_0(1)
    );
  RBA_NR_OF_REGS_2_OBUF : X_OBUF
    port map (
      I => RBA_NR_OF_REGS_2_OBUF_30,
      O => RBA_NR_OF_REGS_0(2)
    );
  RBA_NR_OF_REGS_3_OBUF : X_OBUF
    port map (
      I => RBA_NR_OF_REGS_3_OBUF_31,
      O => RBA_NR_OF_REGS_0(3)
    );
  RBA_NR_OF_REGS_4_OBUF : X_OBUF
    port map (
      I => Madd_RBA_NR_OF_REGS_Madd_cy_3_Q,
      O => RBA_NR_OF_REGS_0(4)
    );
  NlwBlockROC : X_ROC
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end STRUCTURE;

