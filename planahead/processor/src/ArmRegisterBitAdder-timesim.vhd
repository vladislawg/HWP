--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: O.76xd
--  \   \         Application: netgen
--  /   /         Filename: ArmRegisterBitAdder-timesim.vhd
-- /___/   /\     Timestamp: Mon Jun 12 15:09:23 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -sim -ofmt vhdl -pcf ArmRegisterBitAdder.pcf ArmRegisterBitAdder_routed.ncd ArmRegisterBitAdder-timesim.vhd 
-- Device	: 3s500efg320-4 (PRODUCTION 1.27 2011-10-03)
-- Input file	: ArmRegisterBitAdder_routed.ncd
-- Output file	: ArmRegisterBitAdder-timesim.vhd
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
  signal RBA_REGLIST_9_IBUF_213 : STD_LOGIC; 
  signal RBA_REGLIST_10_IBUF_219 : STD_LOGIC; 
  signal RBA_REGLIST_11_IBUF_220 : STD_LOGIC; 
  signal RBA_REGLIST_12_IBUF_221 : STD_LOGIC; 
  signal RBA_REGLIST_13_IBUF_222 : STD_LOGIC; 
  signal RBA_REGLIST_14_IBUF_223 : STD_LOGIC; 
  signal RBA_REGLIST_15_IBUF_224 : STD_LOGIC; 
  signal RBA_REGLIST_0_IBUF_225 : STD_LOGIC; 
  signal RBA_REGLIST_1_IBUF_226 : STD_LOGIC; 
  signal RBA_REGLIST_2_IBUF_227 : STD_LOGIC; 
  signal RBA_REGLIST_3_IBUF_228 : STD_LOGIC; 
  signal RBA_REGLIST_4_IBUF_229 : STD_LOGIC; 
  signal RBA_REGLIST_5_IBUF_230 : STD_LOGIC; 
  signal RBA_REGLIST_6_IBUF_231 : STD_LOGIC; 
  signal RBA_REGLIST_7_IBUF_232 : STD_LOGIC; 
  signal RBA_REGLIST_8_IBUF_233 : STD_LOGIC; 
  signal Madd_RBA_NR_OF_REGSC_0 : STD_LOGIC; 
  signal Madd_a2_7_4_add0000_lut_2_0 : STD_LOGIC; 
  signal Madd_a2_7_4_add0000_cy_1_0 : STD_LOGIC; 
  signal Madd_a1_2_0_add0000_Madd_cy_1_0 : STD_LOGIC; 
  signal Madd_a1_5_3_add0000_Madd_cy_1_0 : STD_LOGIC; 
  signal a1_7_0 : STD_LOGIC; 
  signal N4_0 : STD_LOGIC; 
  signal Madd_a1_11_9_add0000_Madd_lut_0_0 : STD_LOGIC; 
  signal a1_6_0 : STD_LOGIC; 
  signal Madd_RBA_NR_OF_REGSC1_246 : STD_LOGIC; 
  signal N2_0 : STD_LOGIC; 
  signal Madd_RBA_NR_OF_REGS_Madd_lut_3_0 : STD_LOGIC; 
  signal Madd_RBA_NR_OF_REGS_Madd_cy_0_Q : STD_LOGIC; 
  signal Madd_RBA_NR_OF_REGSR_0 : STD_LOGIC; 
  signal a1_3_0 : STD_LOGIC; 
  signal a1_1_0 : STD_LOGIC; 
  signal a1_4_0 : STD_LOGIC; 
  signal Madd_a1_2_0_add0000_Madd_lut_0_0 : STD_LOGIC; 
  signal Madd_RBA_NR_OF_REGS_Madd_cy_2_Q : STD_LOGIC; 
  signal RBA_REGLIST_9_INBUF : STD_LOGIC; 
  signal RBA_NR_OF_REGS_0_O : STD_LOGIC; 
  signal RBA_NR_OF_REGS_1_O : STD_LOGIC; 
  signal RBA_NR_OF_REGS_2_O : STD_LOGIC; 
  signal RBA_NR_OF_REGS_3_O : STD_LOGIC; 
  signal RBA_NR_OF_REGS_4_O : STD_LOGIC; 
  signal RBA_REGLIST_10_INBUF : STD_LOGIC; 
  signal RBA_REGLIST_11_INBUF : STD_LOGIC; 
  signal RBA_REGLIST_12_INBUF : STD_LOGIC; 
  signal RBA_REGLIST_13_INBUF : STD_LOGIC; 
  signal RBA_REGLIST_14_INBUF : STD_LOGIC; 
  signal RBA_REGLIST_15_INBUF : STD_LOGIC; 
  signal RBA_REGLIST_0_INBUF : STD_LOGIC; 
  signal RBA_REGLIST_1_INBUF : STD_LOGIC; 
  signal RBA_REGLIST_2_INBUF : STD_LOGIC; 
  signal RBA_REGLIST_3_INBUF : STD_LOGIC; 
  signal RBA_REGLIST_4_INBUF : STD_LOGIC; 
  signal RBA_REGLIST_5_INBUF : STD_LOGIC; 
  signal RBA_REGLIST_6_INBUF : STD_LOGIC; 
  signal RBA_REGLIST_7_INBUF : STD_LOGIC; 
  signal RBA_REGLIST_8_INBUF : STD_LOGIC; 
  signal Madd_RBA_NR_OF_REGS_Madd_lut_2_F5MUX_417 : STD_LOGIC; 
  signal Madd_RBA_NR_OF_REGS_Madd_lut_2_1 : STD_LOGIC; 
  signal Madd_RBA_NR_OF_REGS_Madd_lut_2_BXINV_410 : STD_LOGIC; 
  signal Madd_RBA_NR_OF_REGS_Madd_lut_2_11_408 : STD_LOGIC; 
  signal Madd_a2_7_4_add0000_lut_1_F5MUX_442 : STD_LOGIC; 
  signal Madd_a2_7_4_add0000_lut_1_1 : STD_LOGIC; 
  signal Madd_a2_7_4_add0000_lut_1_BXINV_435 : STD_LOGIC; 
  signal Madd_a2_7_4_add0000_lut_1_11_433 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal Madd_a2_7_4_add0000_lut_0_pack_2 : STD_LOGIC; 
  signal Madd_RBA_NR_OF_REGSC1_pack_3 : STD_LOGIC; 
  signal RBA_NR_OF_REGS_2_OBUF_525 : STD_LOGIC; 
  signal a1_3_Q : STD_LOGIC; 
  signal RBA_NR_OF_REGS_1_OBUF_573 : STD_LOGIC; 
  signal Madd_RBA_NR_OF_REGS_Madd_cy_0_pack_1 : STD_LOGIC; 
  signal Madd_a1_8_6_add0000_Madd_cy_0_pack_3 : STD_LOGIC; 
  signal Madd_RBA_NR_OF_REGSC : STD_LOGIC; 
  signal RBA_NR_OF_REGS_3_OBUF_633 : STD_LOGIC; 
  signal Madd_RBA_NR_OF_REGS_Madd_cy_2_pack_1 : STD_LOGIC; 
  signal a1_4_Q : STD_LOGIC; 
  signal Madd_RBA_NR_OF_REGS_Madd_cy_3_Q : STD_LOGIC; 
  signal a1_1_Q : STD_LOGIC; 
  signal a1_7_Q : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal RBA_NR_OF_REGS_0_OBUF_729 : STD_LOGIC; 
  signal Madd_RBA_NR_OF_REGSR : STD_LOGIC; 
  signal a2_5_pack_1 : STD_LOGIC; 
  signal a1_6_Q : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal RBA_REGLIST_0 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal RBA_NR_OF_REGS_1 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal Madd_RBA_NR_OF_REGS_Madd_lut : STD_LOGIC_VECTOR ( 3 downto 2 ); 
  signal Madd_a2_7_4_add0000_lut : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal a2 : STD_LOGIC_VECTOR ( 5 downto 5 ); 
  signal Madd_a1_8_6_add0000_Madd_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Madd_a1_11_9_add0000_Madd_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Madd_a2_7_4_add0000_cy : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal Madd_a1_5_3_add0000_Madd_cy : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal Madd_a1_2_0_add0000_Madd_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Madd_a1_2_0_add0000_Madd_cy : STD_LOGIC_VECTOR ( 1 downto 1 ); 
begin
  RBA_REGLIST_0(15) <= RBA_REGLIST(15);
  RBA_REGLIST_0(14) <= RBA_REGLIST(14);
  RBA_REGLIST_0(13) <= RBA_REGLIST(13);
  RBA_REGLIST_0(12) <= RBA_REGLIST(12);
  RBA_REGLIST_0(11) <= RBA_REGLIST(11);
  RBA_REGLIST_0(10) <= RBA_REGLIST(10);
  RBA_REGLIST_0(9) <= RBA_REGLIST(9);
  RBA_REGLIST_0(8) <= RBA_REGLIST(8);
  RBA_REGLIST_0(7) <= RBA_REGLIST(7);
  RBA_REGLIST_0(6) <= RBA_REGLIST(6);
  RBA_REGLIST_0(5) <= RBA_REGLIST(5);
  RBA_REGLIST_0(4) <= RBA_REGLIST(4);
  RBA_REGLIST_0(3) <= RBA_REGLIST(3);
  RBA_REGLIST_0(2) <= RBA_REGLIST(2);
  RBA_REGLIST_0(1) <= RBA_REGLIST(1);
  RBA_REGLIST_0(0) <= RBA_REGLIST(0);
  RBA_NR_OF_REGS(4) <= RBA_NR_OF_REGS_1(4);
  RBA_NR_OF_REGS(3) <= RBA_NR_OF_REGS_1(3);
  RBA_NR_OF_REGS(2) <= RBA_NR_OF_REGS_1(2);
  RBA_NR_OF_REGS(1) <= RBA_NR_OF_REGS_1(1);
  RBA_NR_OF_REGS(0) <= RBA_NR_OF_REGS_1(0);
  RBA_REGLIST_9_IBUF : X_BUF
    generic map(
      LOC => "PAD97",
      PATHPULSE => 798 ps
    )
    port map (
      I => RBA_REGLIST_0(9),
      O => RBA_REGLIST_9_INBUF
    );
  RBA_REGLIST_9_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD97",
      PATHPULSE => 798 ps
    )
    port map (
      I => RBA_REGLIST_9_INBUF,
      O => RBA_REGLIST_9_IBUF_213
    );
  RBA_NR_OF_REGS_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD114"
    )
    port map (
      I => RBA_NR_OF_REGS_0_O,
      O => RBA_NR_OF_REGS_1(0)
    );
  RBA_NR_OF_REGS_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD109"
    )
    port map (
      I => RBA_NR_OF_REGS_1_O,
      O => RBA_NR_OF_REGS_1(1)
    );
  RBA_NR_OF_REGS_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD107"
    )
    port map (
      I => RBA_NR_OF_REGS_2_O,
      O => RBA_NR_OF_REGS_1(2)
    );
  RBA_NR_OF_REGS_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD100"
    )
    port map (
      I => RBA_NR_OF_REGS_3_O,
      O => RBA_NR_OF_REGS_1(3)
    );
  RBA_NR_OF_REGS_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD106"
    )
    port map (
      I => RBA_NR_OF_REGS_4_O,
      O => RBA_NR_OF_REGS_1(4)
    );
  RBA_REGLIST_10_IBUF : X_BUF
    generic map(
      LOC => "PAD102",
      PATHPULSE => 798 ps
    )
    port map (
      I => RBA_REGLIST_0(10),
      O => RBA_REGLIST_10_INBUF
    );
  RBA_REGLIST_10_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD102",
      PATHPULSE => 798 ps
    )
    port map (
      I => RBA_REGLIST_10_INBUF,
      O => RBA_REGLIST_10_IBUF_219
    );
  RBA_REGLIST_11_IBUF : X_BUF
    generic map(
      LOC => "PAD101",
      PATHPULSE => 798 ps
    )
    port map (
      I => RBA_REGLIST_0(11),
      O => RBA_REGLIST_11_INBUF
    );
  RBA_REGLIST_11_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD101",
      PATHPULSE => 798 ps
    )
    port map (
      I => RBA_REGLIST_11_INBUF,
      O => RBA_REGLIST_11_IBUF_220
    );
  RBA_REGLIST_12_IBUF : X_BUF
    generic map(
      LOC => "PAD96",
      PATHPULSE => 798 ps
    )
    port map (
      I => RBA_REGLIST_0(12),
      O => RBA_REGLIST_12_INBUF
    );
  RBA_REGLIST_12_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD96",
      PATHPULSE => 798 ps
    )
    port map (
      I => RBA_REGLIST_12_INBUF,
      O => RBA_REGLIST_12_IBUF_221
    );
  RBA_REGLIST_13_IBUF : X_BUF
    generic map(
      LOC => "PAD99",
      PATHPULSE => 798 ps
    )
    port map (
      I => RBA_REGLIST_0(13),
      O => RBA_REGLIST_13_INBUF
    );
  RBA_REGLIST_13_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD99",
      PATHPULSE => 798 ps
    )
    port map (
      I => RBA_REGLIST_13_INBUF,
      O => RBA_REGLIST_13_IBUF_222
    );
  RBA_REGLIST_14_IBUF : X_BUF
    generic map(
      LOC => "IPAD103",
      PATHPULSE => 798 ps
    )
    port map (
      I => RBA_REGLIST_0(14),
      O => RBA_REGLIST_14_INBUF
    );
  RBA_REGLIST_14_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD103",
      PATHPULSE => 798 ps
    )
    port map (
      I => RBA_REGLIST_14_INBUF,
      O => RBA_REGLIST_14_IBUF_223
    );
  RBA_REGLIST_15_IBUF : X_BUF
    generic map(
      LOC => "PAD104",
      PATHPULSE => 798 ps
    )
    port map (
      I => RBA_REGLIST_0(15),
      O => RBA_REGLIST_15_INBUF
    );
  RBA_REGLIST_15_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD104",
      PATHPULSE => 798 ps
    )
    port map (
      I => RBA_REGLIST_15_INBUF,
      O => RBA_REGLIST_15_IBUF_224
    );
  RBA_REGLIST_0_IBUF : X_BUF
    generic map(
      LOC => "PAD111",
      PATHPULSE => 798 ps
    )
    port map (
      I => RBA_REGLIST_0(0),
      O => RBA_REGLIST_0_INBUF
    );
  RBA_REGLIST_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD111",
      PATHPULSE => 798 ps
    )
    port map (
      I => RBA_REGLIST_0_INBUF,
      O => RBA_REGLIST_0_IBUF_225
    );
  RBA_REGLIST_1_IBUF : X_BUF
    generic map(
      LOC => "IPAD112",
      PATHPULSE => 798 ps
    )
    port map (
      I => RBA_REGLIST_0(1),
      O => RBA_REGLIST_1_INBUF
    );
  RBA_REGLIST_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD112",
      PATHPULSE => 798 ps
    )
    port map (
      I => RBA_REGLIST_1_INBUF,
      O => RBA_REGLIST_1_IBUF_226
    );
  RBA_REGLIST_2_IBUF : X_BUF
    generic map(
      LOC => "PAD110",
      PATHPULSE => 798 ps
    )
    port map (
      I => RBA_REGLIST_0(2),
      O => RBA_REGLIST_2_INBUF
    );
  RBA_REGLIST_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD110",
      PATHPULSE => 798 ps
    )
    port map (
      I => RBA_REGLIST_2_INBUF,
      O => RBA_REGLIST_2_IBUF_227
    );
  RBA_REGLIST_3_IBUF : X_BUF
    generic map(
      LOC => "PAD113",
      PATHPULSE => 798 ps
    )
    port map (
      I => RBA_REGLIST_0(3),
      O => RBA_REGLIST_3_INBUF
    );
  RBA_REGLIST_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD113",
      PATHPULSE => 798 ps
    )
    port map (
      I => RBA_REGLIST_3_INBUF,
      O => RBA_REGLIST_3_IBUF_228
    );
  RBA_REGLIST_4_IBUF : X_BUF
    generic map(
      LOC => "PAD115",
      PATHPULSE => 798 ps
    )
    port map (
      I => RBA_REGLIST_0(4),
      O => RBA_REGLIST_4_INBUF
    );
  RBA_REGLIST_4_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD115",
      PATHPULSE => 798 ps
    )
    port map (
      I => RBA_REGLIST_4_INBUF,
      O => RBA_REGLIST_4_IBUF_229
    );
  RBA_REGLIST_5_IBUF : X_BUF
    generic map(
      LOC => "PAD116",
      PATHPULSE => 798 ps
    )
    port map (
      I => RBA_REGLIST_0(5),
      O => RBA_REGLIST_5_INBUF
    );
  RBA_REGLIST_5_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD116",
      PATHPULSE => 798 ps
    )
    port map (
      I => RBA_REGLIST_5_INBUF,
      O => RBA_REGLIST_5_IBUF_230
    );
  RBA_REGLIST_6_IBUF : X_BUF
    generic map(
      LOC => "PAD105",
      PATHPULSE => 798 ps
    )
    port map (
      I => RBA_REGLIST_0(6),
      O => RBA_REGLIST_6_INBUF
    );
  RBA_REGLIST_6_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD105",
      PATHPULSE => 798 ps
    )
    port map (
      I => RBA_REGLIST_6_INBUF,
      O => RBA_REGLIST_6_IBUF_231
    );
  RBA_REGLIST_7_IBUF : X_BUF
    generic map(
      LOC => "IPAD108",
      PATHPULSE => 798 ps
    )
    port map (
      I => RBA_REGLIST_0(7),
      O => RBA_REGLIST_7_INBUF
    );
  RBA_REGLIST_7_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD108",
      PATHPULSE => 798 ps
    )
    port map (
      I => RBA_REGLIST_7_INBUF,
      O => RBA_REGLIST_7_IBUF_232
    );
  RBA_REGLIST_8_IBUF : X_BUF
    generic map(
      LOC => "IPAD98",
      PATHPULSE => 798 ps
    )
    port map (
      I => RBA_REGLIST_0(8),
      O => RBA_REGLIST_8_INBUF
    );
  RBA_REGLIST_8_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD98",
      PATHPULSE => 798 ps
    )
    port map (
      I => RBA_REGLIST_8_INBUF,
      O => RBA_REGLIST_8_IBUF_233
    );
  Madd_RBA_NR_OF_REGS_Madd_lut_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y15",
      PATHPULSE => 798 ps
    )
    port map (
      I => Madd_RBA_NR_OF_REGS_Madd_lut_2_F5MUX_417,
      O => Madd_RBA_NR_OF_REGS_Madd_lut(2)
    );
  Madd_RBA_NR_OF_REGS_Madd_lut_2_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X67Y15"
    )
    port map (
      IA => Madd_RBA_NR_OF_REGS_Madd_lut_2_11_408,
      IB => Madd_RBA_NR_OF_REGS_Madd_lut_2_1,
      SEL => Madd_RBA_NR_OF_REGS_Madd_lut_2_BXINV_410,
      O => Madd_RBA_NR_OF_REGS_Madd_lut_2_F5MUX_417
    );
  Madd_RBA_NR_OF_REGS_Madd_lut_2_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y15",
      PATHPULSE => 798 ps
    )
    port map (
      I => Madd_RBA_NR_OF_REGSC_0,
      O => Madd_RBA_NR_OF_REGS_Madd_lut_2_BXINV_410
    );
  Madd_RBA_NR_OF_REGS_Madd_lut_2_12 : X_LUT4
    generic map(
      INIT => X"6996",
      LOC => "SLICE_X67Y15"
    )
    port map (
      ADR0 => Madd_a2_7_4_add0000_lut_2_0,
      ADR1 => Madd_a1_5_3_add0000_Madd_cy_1_0,
      ADR2 => Madd_a1_2_0_add0000_Madd_cy_1_0,
      ADR3 => Madd_a2_7_4_add0000_cy_1_0,
      O => Madd_RBA_NR_OF_REGS_Madd_lut_2_11_408
    );
  Madd_RBA_NR_OF_REGS_Madd_lut_2_11 : X_LUT4
    generic map(
      INIT => X"9669",
      LOC => "SLICE_X67Y15"
    )
    port map (
      ADR0 => Madd_a2_7_4_add0000_cy_1_0,
      ADR1 => Madd_a1_5_3_add0000_Madd_cy_1_0,
      ADR2 => Madd_a1_2_0_add0000_Madd_cy_1_0,
      ADR3 => Madd_a2_7_4_add0000_lut_2_0,
      O => Madd_RBA_NR_OF_REGS_Madd_lut_2_1
    );
  Madd_a2_7_4_add0000_lut_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y20",
      PATHPULSE => 798 ps
    )
    port map (
      I => Madd_a2_7_4_add0000_lut_1_F5MUX_442,
      O => Madd_a2_7_4_add0000_lut(1)
    );
  Madd_a2_7_4_add0000_lut_1_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X67Y20"
    )
    port map (
      IA => Madd_a2_7_4_add0000_lut_1_11_433,
      IB => Madd_a2_7_4_add0000_lut_1_1,
      SEL => Madd_a2_7_4_add0000_lut_1_BXINV_435,
      O => Madd_a2_7_4_add0000_lut_1_F5MUX_442
    );
  Madd_a2_7_4_add0000_lut_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y20",
      PATHPULSE => 798 ps
    )
    port map (
      I => RBA_REGLIST_15_IBUF_224,
      O => Madd_a2_7_4_add0000_lut_1_BXINV_435
    );
  Madd_a2_7_4_add0000_lut_1_12 : X_LUT4
    generic map(
      INIT => X"17E8",
      LOC => "SLICE_X67Y20"
    )
    port map (
      ADR0 => RBA_REGLIST_12_IBUF_221,
      ADR1 => RBA_REGLIST_14_IBUF_223,
      ADR2 => RBA_REGLIST_13_IBUF_222,
      ADR3 => a1_7_0,
      O => Madd_a2_7_4_add0000_lut_1_11_433
    );
  Madd_a2_7_4_add0000_lut_1_11 : X_LUT4
    generic map(
      INIT => X"817E",
      LOC => "SLICE_X67Y20"
    )
    port map (
      ADR0 => RBA_REGLIST_12_IBUF_221,
      ADR1 => RBA_REGLIST_14_IBUF_223,
      ADR2 => RBA_REGLIST_13_IBUF_222,
      ADR3 => a1_7_0,
      O => Madd_a2_7_4_add0000_lut_1_1
    );
  N4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y21",
      PATHPULSE => 798 ps
    )
    port map (
      I => N4,
      O => N4_0
    );
  N4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y21",
      PATHPULSE => 798 ps
    )
    port map (
      I => Madd_a1_11_9_add0000_Madd_lut(0),
      O => Madd_a1_11_9_add0000_Madd_lut_0_0
    );
  Madd_a1_11_9_add0000_Madd_lut_0_1 : X_LUT4
    generic map(
      INIT => X"9696",
      LOC => "SLICE_X67Y21"
    )
    port map (
      ADR0 => RBA_REGLIST_15_IBUF_224,
      ADR1 => RBA_REGLIST_12_IBUF_221,
      ADR2 => RBA_REGLIST_13_IBUF_222,
      ADR3 => VCC,
      O => Madd_a1_11_9_add0000_Madd_lut(0)
    );
  Madd_a2_7_4_add0000_cy_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y17",
      PATHPULSE => 798 ps
    )
    port map (
      I => Madd_a2_7_4_add0000_cy(1),
      O => Madd_a2_7_4_add0000_cy_1_0
    );
  Madd_a2_7_4_add0000_cy_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y17",
      PATHPULSE => 798 ps
    )
    port map (
      I => Madd_a2_7_4_add0000_lut_0_pack_2,
      O => Madd_a2_7_4_add0000_lut(0)
    );
  Madd_a2_7_4_add0000_lut_0_1 : X_LUT4
    generic map(
      INIT => X"A55A",
      LOC => "SLICE_X66Y17"
    )
    port map (
      ADR0 => Madd_a1_11_9_add0000_Madd_lut_0_0,
      ADR1 => VCC,
      ADR2 => RBA_REGLIST_14_IBUF_223,
      ADR3 => a1_6_0,
      O => Madd_a2_7_4_add0000_lut_0_pack_2
    );
  Madd_RBA_NR_OF_REGS_Madd_lut_3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y14",
      PATHPULSE => 798 ps
    )
    port map (
      I => Madd_RBA_NR_OF_REGS_Madd_lut(3),
      O => Madd_RBA_NR_OF_REGS_Madd_lut_3_0
    );
  Madd_RBA_NR_OF_REGS_Madd_lut_3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y14",
      PATHPULSE => 798 ps
    )
    port map (
      I => Madd_RBA_NR_OF_REGSC1_pack_3,
      O => Madd_RBA_NR_OF_REGSC1_246
    );
  Madd_RBA_NR_OF_REGSC11 : X_LUT4
    generic map(
      INIT => X"D4E8",
      LOC => "SLICE_X66Y14"
    )
    port map (
      ADR0 => Madd_a2_7_4_add0000_lut_2_0,
      ADR1 => Madd_a1_2_0_add0000_Madd_cy_1_0,
      ADR2 => Madd_a1_5_3_add0000_Madd_cy_1_0,
      ADR3 => Madd_a2_7_4_add0000_cy_1_0,
      O => Madd_RBA_NR_OF_REGSC1_pack_3
    );
  Madd_RBA_NR_OF_REGS_Madd_xor_2_11 : X_LUT4
    generic map(
      INIT => X"3CF0",
      LOC => "SLICE_X67Y16"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Madd_RBA_NR_OF_REGS_Madd_cy_0_Q,
      ADR2 => Madd_RBA_NR_OF_REGS_Madd_lut(2),
      ADR3 => Madd_RBA_NR_OF_REGSR_0,
      O => RBA_NR_OF_REGS_2_OBUF_525
    );
  a1_3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y12",
      PATHPULSE => 798 ps
    )
    port map (
      I => a1_3_Q,
      O => a1_3_0
    );
  a1_3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y12",
      PATHPULSE => 798 ps
    )
    port map (
      I => Madd_a1_5_3_add0000_Madd_cy(1),
      O => Madd_a1_5_3_add0000_Madd_cy_1_0
    );
  Madd_a1_5_3_add0000_Madd_cy_1_11 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X66Y12"
    )
    port map (
      ADR0 => RBA_REGLIST_6_IBUF_231,
      ADR1 => RBA_REGLIST_5_IBUF_230,
      ADR2 => RBA_REGLIST_4_IBUF_229,
      ADR3 => RBA_REGLIST_7_IBUF_232,
      O => Madd_a1_5_3_add0000_Madd_cy(1)
    );
  RBA_NR_OF_REGS_1_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y13",
      PATHPULSE => 798 ps
    )
    port map (
      I => Madd_RBA_NR_OF_REGS_Madd_cy_0_pack_1,
      O => Madd_RBA_NR_OF_REGS_Madd_cy_0_Q
    );
  Madd_RBA_NR_OF_REGS_Madd_cy_0_11 : X_LUT4
    generic map(
      INIT => X"DE48",
      LOC => "SLICE_X67Y13"
    )
    port map (
      ADR0 => Madd_a1_2_0_add0000_Madd_lut_0_0,
      ADR1 => Madd_a2_7_4_add0000_lut(0),
      ADR2 => RBA_REGLIST_0_IBUF_225,
      ADR3 => a1_3_0,
      O => Madd_RBA_NR_OF_REGS_Madd_cy_0_pack_1
    );
  Madd_a2_7_4_add0000_lut_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y21",
      PATHPULSE => 798 ps
    )
    port map (
      I => Madd_a2_7_4_add0000_lut(2),
      O => Madd_a2_7_4_add0000_lut_2_0
    );
  Madd_a2_7_4_add0000_lut_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y21",
      PATHPULSE => 798 ps
    )
    port map (
      I => Madd_a1_8_6_add0000_Madd_cy_0_pack_3,
      O => Madd_a1_8_6_add0000_Madd_cy(0)
    );
  Madd_a1_8_6_add0000_Madd_cy_0_11 : X_LUT4
    generic map(
      INIT => X"DE48",
      LOC => "SLICE_X66Y21"
    )
    port map (
      ADR0 => RBA_REGLIST_11_IBUF_220,
      ADR1 => RBA_REGLIST_8_IBUF_233,
      ADR2 => RBA_REGLIST_10_IBUF_219,
      ADR3 => RBA_REGLIST_9_IBUF_213,
      O => Madd_a1_8_6_add0000_Madd_cy_0_pack_3
    );
  Madd_RBA_NR_OF_REGSC_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y15",
      PATHPULSE => 798 ps
    )
    port map (
      I => Madd_RBA_NR_OF_REGSC,
      O => Madd_RBA_NR_OF_REGSC_0
    );
  Madd_RBA_NR_OF_REGSC1 : X_LUT4
    generic map(
      INIT => X"E8E8",
      LOC => "SLICE_X66Y15"
    )
    port map (
      ADR0 => a1_4_0,
      ADR1 => a2(5),
      ADR2 => a1_1_0,
      ADR3 => VCC,
      O => Madd_RBA_NR_OF_REGSC
    );
  RBA_NR_OF_REGS_3_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y17",
      PATHPULSE => 798 ps
    )
    port map (
      I => Madd_RBA_NR_OF_REGS_Madd_cy_2_pack_1,
      O => Madd_RBA_NR_OF_REGS_Madd_cy_2_Q
    );
  Madd_RBA_NR_OF_REGS_Madd_cy_2_11 : X_LUT4
    generic map(
      INIT => X"D850",
      LOC => "SLICE_X67Y17"
    )
    port map (
      ADR0 => Madd_RBA_NR_OF_REGS_Madd_lut(2),
      ADR1 => Madd_RBA_NR_OF_REGS_Madd_cy_0_Q,
      ADR2 => Madd_RBA_NR_OF_REGSC_0,
      ADR3 => Madd_RBA_NR_OF_REGSR_0,
      O => Madd_RBA_NR_OF_REGS_Madd_cy_2_pack_1
    );
  a1_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y12",
      PATHPULSE => 798 ps
    )
    port map (
      I => a1_4_Q,
      O => a1_4_0
    );
  Madd_a1_5_3_add0000_Madd_xor_1_11 : X_LUT4
    generic map(
      INIT => X"7EE8",
      LOC => "SLICE_X67Y12"
    )
    port map (
      ADR0 => RBA_REGLIST_7_IBUF_232,
      ADR1 => RBA_REGLIST_4_IBUF_229,
      ADR2 => RBA_REGLIST_5_IBUF_230,
      ADR3 => RBA_REGLIST_6_IBUF_231,
      O => a1_4_Q
    );
  Madd_RBA_NR_OF_REGS_Madd_cy_3_11 : X_LUT4
    generic map(
      INIT => X"F0AA",
      LOC => "SLICE_X67Y14"
    )
    port map (
      ADR0 => Madd_RBA_NR_OF_REGSC1_246,
      ADR1 => VCC,
      ADR2 => Madd_RBA_NR_OF_REGS_Madd_cy_2_Q,
      ADR3 => Madd_RBA_NR_OF_REGS_Madd_lut_3_0,
      O => Madd_RBA_NR_OF_REGS_Madd_cy_3_Q
    );
  a1_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y10",
      PATHPULSE => 798 ps
    )
    port map (
      I => a1_1_Q,
      O => a1_1_0
    );
  a1_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y10",
      PATHPULSE => 798 ps
    )
    port map (
      I => Madd_a1_2_0_add0000_Madd_lut(0),
      O => Madd_a1_2_0_add0000_Madd_lut_0_0
    );
  Madd_a1_2_0_add0000_Madd_lut_0_1 : X_LUT4
    generic map(
      INIT => X"A55A",
      LOC => "SLICE_X67Y10"
    )
    port map (
      ADR0 => RBA_REGLIST_2_IBUF_227,
      ADR1 => VCC,
      ADR2 => RBA_REGLIST_1_IBUF_226,
      ADR3 => RBA_REGLIST_3_IBUF_228,
      O => Madd_a1_2_0_add0000_Madd_lut(0)
    );
  a1_7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y20",
      PATHPULSE => 798 ps
    )
    port map (
      I => a1_7_Q,
      O => a1_7_0
    );
  a1_7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y20",
      PATHPULSE => 798 ps
    )
    port map (
      I => N2,
      O => N2_0
    );
  Madd_RBA_NR_OF_REGS_Madd_lut_3_SW0 : X_LUT4
    generic map(
      INIT => X"7FFF",
      LOC => "SLICE_X66Y20"
    )
    port map (
      ADR0 => RBA_REGLIST_11_IBUF_220,
      ADR1 => RBA_REGLIST_8_IBUF_233,
      ADR2 => RBA_REGLIST_10_IBUF_219,
      ADR3 => RBA_REGLIST_9_IBUF_213,
      O => N2
    );
  RBA_NR_OF_REGS_0_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y10",
      PATHPULSE => 798 ps
    )
    port map (
      I => Madd_a1_2_0_add0000_Madd_cy(1),
      O => Madd_a1_2_0_add0000_Madd_cy_1_0
    );
  Madd_a1_2_0_add0000_Madd_cy_1_11 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X66Y10"
    )
    port map (
      ADR0 => RBA_REGLIST_3_IBUF_228,
      ADR1 => RBA_REGLIST_1_IBUF_226,
      ADR2 => RBA_REGLIST_0_IBUF_225,
      ADR3 => RBA_REGLIST_2_IBUF_227,
      O => Madd_a1_2_0_add0000_Madd_cy(1)
    );
  Madd_RBA_NR_OF_REGSR_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y16",
      PATHPULSE => 798 ps
    )
    port map (
      I => Madd_RBA_NR_OF_REGSR,
      O => Madd_RBA_NR_OF_REGSR_0
    );
  Madd_RBA_NR_OF_REGSR_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y16",
      PATHPULSE => 798 ps
    )
    port map (
      I => a2_5_pack_1,
      O => a2(5)
    );
  Madd_a2_7_4_add0000_xor_1_11 : X_LUT4
    generic map(
      INIT => X"96F0",
      LOC => "SLICE_X66Y16"
    )
    port map (
      ADR0 => Madd_a1_11_9_add0000_Madd_lut_0_0,
      ADR1 => RBA_REGLIST_14_IBUF_223,
      ADR2 => Madd_a2_7_4_add0000_lut(1),
      ADR3 => a1_6_0,
      O => a2_5_pack_1
    );
  a1_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y22",
      PATHPULSE => 798 ps
    )
    port map (
      I => a1_6_Q,
      O => a1_6_0
    );
  Madd_a1_8_6_add0000_Madd_xor_0_11 : X_LUT4
    generic map(
      INIT => X"6996",
      LOC => "SLICE_X67Y22"
    )
    port map (
      ADR0 => RBA_REGLIST_10_IBUF_219,
      ADR1 => RBA_REGLIST_8_IBUF_233,
      ADR2 => RBA_REGLIST_11_IBUF_220,
      ADR3 => RBA_REGLIST_9_IBUF_213,
      O => a1_6_Q
    );
  Madd_a2_7_4_add0000_lut_2_1_SW0 : X_LUT4
    generic map(
      INIT => X"7FFF",
      LOC => "SLICE_X67Y21"
    )
    port map (
      ADR0 => RBA_REGLIST_15_IBUF_224,
      ADR1 => RBA_REGLIST_12_IBUF_221,
      ADR2 => RBA_REGLIST_13_IBUF_222,
      ADR3 => RBA_REGLIST_14_IBUF_223,
      O => N4
    );
  Madd_a2_7_4_add0000_cy_1_11 : X_LUT4
    generic map(
      INIT => X"4E44",
      LOC => "SLICE_X66Y17"
    )
    port map (
      ADR0 => Madd_a2_7_4_add0000_lut(1),
      ADR1 => a1_7_0,
      ADR2 => Madd_a2_7_4_add0000_lut(0),
      ADR3 => a1_6_0,
      O => Madd_a2_7_4_add0000_cy(1)
    );
  Madd_RBA_NR_OF_REGS_Madd_lut_3_Q : X_LUT4
    generic map(
      INIT => X"3AC5",
      LOC => "SLICE_X66Y14"
    )
    port map (
      ADR0 => N2_0,
      ADR1 => Madd_a2_7_4_add0000_cy_1_0,
      ADR2 => Madd_a2_7_4_add0000_lut_2_0,
      ADR3 => Madd_RBA_NR_OF_REGSC1_246,
      O => Madd_RBA_NR_OF_REGS_Madd_lut(3)
    );
  Madd_a1_5_3_add0000_Madd_xor_0_11 : X_LUT4
    generic map(
      INIT => X"6996",
      LOC => "SLICE_X66Y12"
    )
    port map (
      ADR0 => RBA_REGLIST_6_IBUF_231,
      ADR1 => RBA_REGLIST_5_IBUF_230,
      ADR2 => RBA_REGLIST_4_IBUF_229,
      ADR3 => RBA_REGLIST_7_IBUF_232,
      O => a1_3_Q
    );
  Madd_RBA_NR_OF_REGS_Madd_xor_1_11 : X_LUT4
    generic map(
      INIT => X"6996",
      LOC => "SLICE_X67Y13"
    )
    port map (
      ADR0 => a1_1_0,
      ADR1 => a1_4_0,
      ADR2 => a2(5),
      ADR3 => Madd_RBA_NR_OF_REGS_Madd_cy_0_Q,
      O => RBA_NR_OF_REGS_1_OBUF_573
    );
  Madd_a2_7_4_add0000_lut_2_1 : X_LUT4
    generic map(
      INIT => X"807F",
      LOC => "SLICE_X66Y21"
    )
    port map (
      ADR0 => RBA_REGLIST_11_IBUF_220,
      ADR1 => Madd_a1_8_6_add0000_Madd_cy(0),
      ADR2 => RBA_REGLIST_10_IBUF_219,
      ADR3 => N4_0,
      O => Madd_a2_7_4_add0000_lut(2)
    );
  Madd_RBA_NR_OF_REGS_Madd_xor_3_11 : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X67Y17"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Madd_RBA_NR_OF_REGS_Madd_lut_3_0,
      ADR2 => VCC,
      ADR3 => Madd_RBA_NR_OF_REGS_Madd_cy_2_Q,
      O => RBA_NR_OF_REGS_3_OBUF_633
    );
  Madd_a1_2_0_add0000_Madd_xor_1_11 : X_LUT4
    generic map(
      INIT => X"7EE8",
      LOC => "SLICE_X67Y10"
    )
    port map (
      ADR0 => RBA_REGLIST_2_IBUF_227,
      ADR1 => RBA_REGLIST_0_IBUF_225,
      ADR2 => RBA_REGLIST_1_IBUF_226,
      ADR3 => RBA_REGLIST_3_IBUF_228,
      O => a1_1_Q
    );
  Madd_a1_8_6_add0000_Madd_xor_1_11 : X_LUT4
    generic map(
      INIT => X"7EE8",
      LOC => "SLICE_X66Y20"
    )
    port map (
      ADR0 => RBA_REGLIST_11_IBUF_220,
      ADR1 => RBA_REGLIST_8_IBUF_233,
      ADR2 => RBA_REGLIST_10_IBUF_219,
      ADR3 => RBA_REGLIST_9_IBUF_213,
      O => a1_7_Q
    );
  Madd_RBA_NR_OF_REGS_Madd_xor_0_11 : X_LUT4
    generic map(
      INIT => X"6996",
      LOC => "SLICE_X66Y10"
    )
    port map (
      ADR0 => RBA_REGLIST_0_IBUF_225,
      ADR1 => Madd_a1_2_0_add0000_Madd_lut_0_0,
      ADR2 => Madd_a2_7_4_add0000_lut(0),
      ADR3 => a1_3_0,
      O => RBA_NR_OF_REGS_0_OBUF_729
    );
  Madd_RBA_NR_OF_REGSR1 : X_LUT4
    generic map(
      INIT => X"A55A",
      LOC => "SLICE_X66Y16"
    )
    port map (
      ADR0 => a1_1_0,
      ADR1 => VCC,
      ADR2 => a1_4_0,
      ADR3 => a2(5),
      O => Madd_RBA_NR_OF_REGSR
    );
  RBA_NR_OF_REGS_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD114",
      PATHPULSE => 798 ps
    )
    port map (
      I => RBA_NR_OF_REGS_0_OBUF_729,
      O => RBA_NR_OF_REGS_0_O
    );
  RBA_NR_OF_REGS_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD109",
      PATHPULSE => 798 ps
    )
    port map (
      I => RBA_NR_OF_REGS_1_OBUF_573,
      O => RBA_NR_OF_REGS_1_O
    );
  RBA_NR_OF_REGS_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD107",
      PATHPULSE => 798 ps
    )
    port map (
      I => RBA_NR_OF_REGS_2_OBUF_525,
      O => RBA_NR_OF_REGS_2_O
    );
  RBA_NR_OF_REGS_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD100",
      PATHPULSE => 798 ps
    )
    port map (
      I => RBA_NR_OF_REGS_3_OBUF_633,
      O => RBA_NR_OF_REGS_3_O
    );
  RBA_NR_OF_REGS_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD106",
      PATHPULSE => 798 ps
    )
    port map (
      I => Madd_RBA_NR_OF_REGS_Madd_cy_3_Q,
      O => RBA_NR_OF_REGS_4_O
    );
  NlwBlock_ArmRegisterBitAdder_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end STRUCTURE;

