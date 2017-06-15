--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: O.76xd
--  \   \         Application: netgen
--  /   /         Filename: ArmLdmStmNextAddress-timesim.vhd
-- /___/   /\     Timestamp: Tue Jun 13 12:50:13 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -sim -ofmt vhdl -pcf ArmLdmStmNextAddress.pcf ArmLdmStmNextAddress_routed.ncd ArmLdmStmNextAddress-timesim.vhd 
-- Device	: 3s500efg320-4 (PRODUCTION 1.27 2011-10-03)
-- Input file	: ArmLdmStmNextAddress_routed.ncd
-- Output file	: ArmLdmStmNextAddress-timesim.vhd
-- # of Entities	: 1
-- Design Name	: ArmLdmStmNextAddress
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

entity ArmLdmStmNextAddress is
  port (
    SYS_CLK : in STD_LOGIC := 'X'; 
    LNA_LOAD_REGLIST : in STD_LOGIC := 'X'; 
    LNA_HOLD_VALUE : in STD_LOGIC := 'X'; 
    SYS_RST : in STD_LOGIC := 'X'; 
    LNA_CURRENT_REGLIST_REG : out STD_LOGIC_VECTOR ( 15 downto 0 ); 
    LNA_REGLIST : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
    LNA_ADDRESS : out STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end ArmLdmStmNextAddress;

architecture STRUCTURE of ArmLdmStmNextAddress is
  signal LNA_LOAD_REGLIST_IBUF_653 : STD_LOGIC; 
  signal LNA_HOLD_VALUE_IBUF_654 : STD_LOGIC; 
  signal LNA_REGLIST_10_IBUF_662 : STD_LOGIC; 
  signal LNA_REGLIST_11_IBUF_664 : STD_LOGIC; 
  signal LNA_REGLIST_12_IBUF_666 : STD_LOGIC; 
  signal LNA_ADDRESS_0_OBUF_0 : STD_LOGIC; 
  signal LNA_REGLIST_13_IBUF_668 : STD_LOGIC; 
  signal LNA_ADDRESS_1_OBUF_0 : STD_LOGIC; 
  signal LNA_REGLIST_14_IBUF_670 : STD_LOGIC; 
  signal LNA_ADDRESS_2_OBUF_0 : STD_LOGIC; 
  signal LNA_REGLIST_15_IBUF_672 : STD_LOGIC; 
  signal LNA_REGLIST_0_IBUF_673 : STD_LOGIC; 
  signal LNA_ADDRESS_3_OBUF_0 : STD_LOGIC; 
  signal LNA_REGLIST_1_IBUF_675 : STD_LOGIC; 
  signal LNA_REGLIST_2_IBUF_676 : STD_LOGIC; 
  signal LNA_REGLIST_3_IBUF_677 : STD_LOGIC; 
  signal LNA_REGLIST_4_IBUF_678 : STD_LOGIC; 
  signal LNA_REGLIST_5_IBUF_679 : STD_LOGIC; 
  signal LNA_REGLIST_6_IBUF_680 : STD_LOGIC; 
  signal LNA_REGLIST_7_IBUF_681 : STD_LOGIC; 
  signal LNA_REGLIST_8_IBUF_682 : STD_LOGIC; 
  signal SYS_CLK_BUFGP : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_14_Q : STD_LOGIC; 
  signal highprio_0_366_O : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_6_Q : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_7_Q : STD_LOGIC; 
  signal N4_0 : STD_LOGIC; 
  signal highprio_1_378_0 : STD_LOGIC; 
  signal highprio_1_322_691 : STD_LOGIC; 
  signal highprio_1_345_0 : STD_LOGIC; 
  signal fuckingPrio_6_0 : STD_LOGIC; 
  signal N18_0 : STD_LOGIC; 
  signal N81_0 : STD_LOGIC; 
  signal N14_0 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal fuckingPrio_0_0 : STD_LOGIC; 
  signal highprio_1_66_0 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_9_Q : STD_LOGIC; 
  signal N281_0 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal highprio_0_51_SW1_O : STD_LOGIC; 
  signal N61_0 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_11_Q : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_15_Q : STD_LOGIC; 
  signal N29_0 : STD_LOGIC; 
  signal highprio_1_22_0 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_8_Q : STD_LOGIC; 
  signal highprio_0_75_0 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_2_Q : STD_LOGIC; 
  signal highprio_1_45_0 : STD_LOGIC; 
  signal highprio_0_362_0 : STD_LOGIC; 
  signal highprio_0_380_0 : STD_LOGIC; 
  signal highprio_2_2_O : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_10_Q : STD_LOGIC; 
  signal N26_0 : STD_LOGIC; 
  signal N101_0 : STD_LOGIC; 
  signal N6_0 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal fuckingPrio_13_0 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_12_Q : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_5_Q : STD_LOGIC; 
  signal highprio_1_93_0 : STD_LOGIC; 
  signal highprio_1_388_O : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal highprio_1_80_O : STD_LOGIC; 
  signal N01_0 : STD_LOGIC; 
  signal highprio_2_62_0 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_3_Q : STD_LOGIC; 
  signal N141_0 : STD_LOGIC; 
  signal CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_Q : STD_LOGIC; 
  signal CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_1_Q : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_13_Q : STD_LOGIC; 
  signal highprio_2_78_0 : STD_LOGIC; 
  signal highprio_3_62_0 : STD_LOGIC; 
  signal highprio_1_345_SW0_O : STD_LOGIC; 
  signal highprio_3_75_0 : STD_LOGIC; 
  signal highprio_1_378_SW0_O : STD_LOGIC; 
  signal SYS_RST_IBUF_759 : STD_LOGIC; 
  signal LNA_REGLIST_9_IBUF_766 : STD_LOGIC; 
  signal N111 : STD_LOGIC; 
  signal CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_0_Q : STD_LOGIC; 
  signal highprio_0_62_0 : STD_LOGIC; 
  signal CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_addsub0000_cy_1_Q : STD_LOGIC; 
  signal CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_addsub0000_cy_3_Q : STD_LOGIC; 
  signal CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_addsub0000_cy_5_Q : STD_LOGIC; 
  signal CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_addsub0000_cy_7_Q : STD_LOGIC; 
  signal CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_addsub0000_cy_9_Q : STD_LOGIC; 
  signal CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_addsub0000_cy_11_Q : STD_LOGIC; 
  signal LNA_CURRENT_REGLIST_REG_11_O : STD_LOGIC; 
  signal LNA_CURRENT_REGLIST_REG_12_O : STD_LOGIC; 
  signal LNA_CURRENT_REGLIST_REG_13_O : STD_LOGIC; 
  signal LNA_CURRENT_REGLIST_REG_14_O : STD_LOGIC; 
  signal LNA_CURRENT_REGLIST_REG_15_O : STD_LOGIC; 
  signal SYS_CLK_INBUF : STD_LOGIC; 
  signal LNA_CURRENT_REGLIST_REG_0_O : STD_LOGIC; 
  signal LNA_LOAD_REGLIST_INBUF : STD_LOGIC; 
  signal LNA_HOLD_VALUE_INBUF : STD_LOGIC; 
  signal LNA_CURRENT_REGLIST_REG_1_O : STD_LOGIC; 
  signal LNA_CURRENT_REGLIST_REG_2_O : STD_LOGIC; 
  signal LNA_CURRENT_REGLIST_REG_3_O : STD_LOGIC; 
  signal LNA_CURRENT_REGLIST_REG_4_O : STD_LOGIC; 
  signal LNA_CURRENT_REGLIST_REG_5_O : STD_LOGIC; 
  signal LNA_CURRENT_REGLIST_REG_6_O : STD_LOGIC; 
  signal LNA_CURRENT_REGLIST_REG_7_O : STD_LOGIC; 
  signal LNA_REGLIST_10_INBUF : STD_LOGIC; 
  signal LNA_CURRENT_REGLIST_REG_8_O : STD_LOGIC; 
  signal LNA_REGLIST_11_INBUF : STD_LOGIC; 
  signal LNA_CURRENT_REGLIST_REG_9_O : STD_LOGIC; 
  signal LNA_REGLIST_12_INBUF : STD_LOGIC; 
  signal LNA_ADDRESS_0_O : STD_LOGIC; 
  signal LNA_REGLIST_13_INBUF : STD_LOGIC; 
  signal LNA_ADDRESS_1_O : STD_LOGIC; 
  signal LNA_REGLIST_14_INBUF : STD_LOGIC; 
  signal LNA_ADDRESS_2_O : STD_LOGIC; 
  signal LNA_REGLIST_15_INBUF : STD_LOGIC; 
  signal LNA_REGLIST_0_INBUF : STD_LOGIC; 
  signal LNA_ADDRESS_3_O : STD_LOGIC; 
  signal LNA_REGLIST_1_INBUF : STD_LOGIC; 
  signal LNA_REGLIST_2_INBUF : STD_LOGIC; 
  signal LNA_REGLIST_3_INBUF : STD_LOGIC; 
  signal LNA_REGLIST_4_INBUF : STD_LOGIC; 
  signal LNA_REGLIST_5_INBUF : STD_LOGIC; 
  signal LNA_REGLIST_6_INBUF : STD_LOGIC; 
  signal LNA_REGLIST_7_INBUF : STD_LOGIC; 
  signal LNA_REGLIST_8_INBUF : STD_LOGIC; 
  signal SYS_CLK_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal SYS_CLK_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal highprio_0_366_O_pack_1 : STD_LOGIC; 
  signal N81 : STD_LOGIC; 
  signal highprio_1_322_pack_1 : STD_LOGIC; 
  signal outReg_3_not0001 : STD_LOGIC; 
  signal N13_pack_1 : STD_LOGIC; 
  signal N281 : STD_LOGIC; 
  signal fuckingPrio_9_pack_1 : STD_LOGIC; 
  signal outReg_9_not0001 : STD_LOGIC; 
  signal N12_pack_1 : STD_LOGIC; 
  signal N29 : STD_LOGIC; 
  signal highprio_0_51_SW1_O_pack_1 : STD_LOGIC; 
  signal highprio_1_22_1214 : STD_LOGIC; 
  signal fuckingPrio_11_pack_1 : STD_LOGIC; 
  signal highprio_0_75_1238 : STD_LOGIC; 
  signal fuckingPrio_8_pack_1 : STD_LOGIC; 
  signal highprio_1_45_1262 : STD_LOGIC; 
  signal fuckingPrio_2_pack_1 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal highprio_2_2_O_pack_1 : STD_LOGIC; 
  signal outReg_15_not0001 : STD_LOGIC; 
  signal N10_pack_1 : STD_LOGIC; 
  signal highprio_0_362_1334 : STD_LOGIC; 
  signal fuckingPrio_15_pack_1 : STD_LOGIC; 
  signal highprio_0_380_1358 : STD_LOGIC; 
  signal fuckingPrio_5_pack_1 : STD_LOGIC; 
  signal LNA_ADDRESS_1_OBUF_1382 : STD_LOGIC; 
  signal highprio_1_388_O_pack_1 : STD_LOGIC; 
  signal highprio_1_93_1406 : STD_LOGIC; 
  signal highprio_1_80_O_pack_1 : STD_LOGIC; 
  signal highprio_2_62_1430 : STD_LOGIC; 
  signal fuckingPrio_12_pack_1 : STD_LOGIC; 
  signal N141 : STD_LOGIC; 
  signal fuckingPrio_3_pack_1 : STD_LOGIC; 
  signal N61 : STD_LOGIC; 
  signal fuckingPrio_4_pack_1 : STD_LOGIC; 
  signal N101 : STD_LOGIC; 
  signal fuckingPrio_1_pack_1 : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal N22_pack_1 : STD_LOGIC; 
  signal LNA_ADDRESS_2_OBUF_1550 : STD_LOGIC; 
  signal N28_pack_1 : STD_LOGIC; 
  signal highprio_3_62_1574 : STD_LOGIC; 
  signal fuckingPrio_10_pack_1 : STD_LOGIC; 
  signal highprio_2_78_1598 : STD_LOGIC; 
  signal fuckingPrio_14_pack_1 : STD_LOGIC; 
  signal highprio_1_345_1622 : STD_LOGIC; 
  signal highprio_1_345_SW0_O_pack_1 : STD_LOGIC; 
  signal highprio_3_75_1646 : STD_LOGIC; 
  signal fuckingPrio_7_pack_1 : STD_LOGIC; 
  signal highprio_1_378_1670 : STD_LOGIC; 
  signal highprio_1_378_SW0_O_pack_1 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal outReg_1_DYMUX_1693 : STD_LOGIC; 
  signal outReg_1_mux0000 : STD_LOGIC; 
  signal outReg_1_CLKINV_1683 : STD_LOGIC; 
  signal outReg_1_CEINV_1682 : STD_LOGIC; 
  signal outReg_2_DYMUX_1722 : STD_LOGIC; 
  signal outReg_2_mux0000 : STD_LOGIC; 
  signal outReg_2_CLKINV_1712 : STD_LOGIC; 
  signal outReg_2_CEINV_1711 : STD_LOGIC; 
  signal outReg_3_DYMUX_1743 : STD_LOGIC; 
  signal outReg_3_mux0000 : STD_LOGIC; 
  signal outReg_3_CLKINV_1733 : STD_LOGIC; 
  signal outReg_3_CEINV_1732 : STD_LOGIC; 
  signal outReg_4_DYMUX_1764 : STD_LOGIC; 
  signal outReg_4_mux0000 : STD_LOGIC; 
  signal outReg_4_CLKINV_1754 : STD_LOGIC; 
  signal outReg_4_CEINV_1753 : STD_LOGIC; 
  signal outReg_5_DYMUX_1785 : STD_LOGIC; 
  signal outReg_5_mux0000 : STD_LOGIC; 
  signal outReg_5_CLKINV_1775 : STD_LOGIC; 
  signal outReg_5_CEINV_1774 : STD_LOGIC; 
  signal outReg_6_DYMUX_1806 : STD_LOGIC; 
  signal outReg_6_mux0000 : STD_LOGIC; 
  signal outReg_6_CLKINV_1796 : STD_LOGIC; 
  signal outReg_6_CEINV_1795 : STD_LOGIC; 
  signal outReg_7_DYMUX_1827 : STD_LOGIC; 
  signal outReg_7_mux0000 : STD_LOGIC; 
  signal outReg_7_CLKINV_1817 : STD_LOGIC; 
  signal outReg_7_CEINV_1816 : STD_LOGIC; 
  signal outReg_8_DYMUX_1848 : STD_LOGIC; 
  signal outReg_8_mux0000 : STD_LOGIC; 
  signal outReg_8_CLKINV_1838 : STD_LOGIC; 
  signal outReg_8_CEINV_1837 : STD_LOGIC; 
  signal outReg_9_DYMUX_1869 : STD_LOGIC; 
  signal outReg_9_mux0000 : STD_LOGIC; 
  signal outReg_9_CLKINV_1859 : STD_LOGIC; 
  signal outReg_9_CEINV_1858 : STD_LOGIC; 
  signal outReg_10_DYMUX_1890 : STD_LOGIC; 
  signal outReg_10_mux0000 : STD_LOGIC; 
  signal outReg_10_CLKINV_1880 : STD_LOGIC; 
  signal outReg_10_CEINV_1879 : STD_LOGIC; 
  signal outReg_11_DYMUX_1911 : STD_LOGIC; 
  signal outReg_11_mux0000 : STD_LOGIC; 
  signal outReg_11_CLKINV_1901 : STD_LOGIC; 
  signal outReg_11_CEINV_1900 : STD_LOGIC; 
  signal outReg_12_DYMUX_1932 : STD_LOGIC; 
  signal outReg_12_mux0000 : STD_LOGIC; 
  signal outReg_12_CLKINV_1922 : STD_LOGIC; 
  signal outReg_12_CEINV_1921 : STD_LOGIC; 
  signal outReg_13_DYMUX_1953 : STD_LOGIC; 
  signal outReg_13_mux0000 : STD_LOGIC; 
  signal outReg_13_CLKINV_1943 : STD_LOGIC; 
  signal outReg_13_CEINV_1942 : STD_LOGIC; 
  signal outReg_14_DYMUX_1974 : STD_LOGIC; 
  signal outReg_14_mux0000 : STD_LOGIC; 
  signal outReg_14_CLKINV_1964 : STD_LOGIC; 
  signal outReg_14_CEINV_1963 : STD_LOGIC; 
  signal outReg_15_DYMUX_1995 : STD_LOGIC; 
  signal outReg_15_mux0000 : STD_LOGIC; 
  signal outReg_15_CLKINV_1985 : STD_LOGIC; 
  signal outReg_15_CEINV_1984 : STD_LOGIC; 
  signal outReg_0_DYMUX_2016 : STD_LOGIC; 
  signal outReg_0_mux0000 : STD_LOGIC; 
  signal outReg_0_CLKINV_2006 : STD_LOGIC; 
  signal outReg_0_CEINV_2005 : STD_LOGIC; 
  signal outReg_7_not0001 : STD_LOGIC; 
  signal N111_pack_1 : STD_LOGIC; 
  signal outReg_0_not0001 : STD_LOGIC; 
  signal outReg_1_not0001 : STD_LOGIC; 
  signal LNA_ADDRESS_0_OBUF_2102 : STD_LOGIC; 
  signal LNA_ADDRESS_3_OBUF_2095 : STD_LOGIC; 
  signal outReg_10_not0001 : STD_LOGIC; 
  signal outReg_2_not0001 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal outReg_5_not0001 : STD_LOGIC; 
  signal outReg_4_not0001 : STD_LOGIC; 
  signal outReg_11_not0001 : STD_LOGIC; 
  signal outReg_6_not0001 : STD_LOGIC; 
  signal outReg_13_not0001 : STD_LOGIC; 
  signal outReg_12_not0001 : STD_LOGIC; 
  signal outReg_14_not0001 : STD_LOGIC; 
  signal outReg_8_not0001 : STD_LOGIC; 
  signal highprio_0_62_2258 : STD_LOGIC; 
  signal highprio_1_66_2270 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_0_XORF_2331 : STD_LOGIC; 
  signal CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_0_LOGIC_ONE_2330 : STD_LOGIC; 
  signal CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_0_CYINIT_2329 : STD_LOGIC; 
  signal CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_0_CYSELF_2320 : STD_LOGIC; 
  signal CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_0_F : STD_LOGIC; 
  signal CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_0_BXINV_2318 : STD_LOGIC; 
  signal CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_0_XORG_2316 : STD_LOGIC; 
  signal CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_0_CYMUXG_2315 : STD_LOGIC; 
  signal CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_addsub0000_cy_0_Q : STD_LOGIC; 
  signal CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_0_LOGIC_ZERO_2313 : STD_LOGIC; 
  signal CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_0_CYSELG_2304 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_2_XORF_2369 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_2_CYINIT_2368 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_2_XORG_2357 : STD_LOGIC; 
  signal CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_addsub0000_cy_2_Q : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_2_CYSELF_2355 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_2_CYMUXFAST_2354 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_2_CYAND_2353 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_2_FASTCARRY_2352 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_2_CYMUXG2_2351 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_2_CYMUXF2_2350 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_2_LOGIC_ZERO_2349 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_2_CYSELG_2340 : STD_LOGIC; 
  signal CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_XORF_2407 : STD_LOGIC; 
  signal CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_CYINIT_2406 : STD_LOGIC; 
  signal CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_XORG_2395 : STD_LOGIC; 
  signal CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_addsub0000_cy_4_Q : STD_LOGIC; 
  signal CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_CYSELF_2393 : STD_LOGIC; 
  signal CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_CYMUXFAST_2392 : STD_LOGIC; 
  signal CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_CYAND_2391 : STD_LOGIC; 
  signal CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_FASTCARRY_2390 : STD_LOGIC; 
  signal CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_CYMUXG2_2389 : STD_LOGIC; 
  signal CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_CYMUXF2_2388 : STD_LOGIC; 
  signal CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_LOGIC_ZERO_2387 : STD_LOGIC; 
  signal CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_CYSELG_2378 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_6_XORF_2445 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_6_CYINIT_2444 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_6_XORG_2433 : STD_LOGIC; 
  signal CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_addsub0000_cy_6_Q : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_6_CYSELF_2431 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_6_CYMUXFAST_2430 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_6_CYAND_2429 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_6_FASTCARRY_2428 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_6_CYMUXG2_2427 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_6_CYMUXF2_2426 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_6_LOGIC_ZERO_2425 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_6_CYSELG_2416 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_8_XORF_2483 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_8_CYINIT_2482 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_8_XORG_2471 : STD_LOGIC; 
  signal CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_addsub0000_cy_8_Q : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_8_CYSELF_2469 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_8_CYMUXFAST_2468 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_8_CYAND_2467 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_8_FASTCARRY_2466 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_8_CYMUXG2_2465 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_8_CYMUXF2_2464 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_8_LOGIC_ZERO_2463 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_8_CYSELG_2454 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_10_XORF_2521 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_10_CYINIT_2520 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_10_XORG_2509 : STD_LOGIC; 
  signal CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_addsub0000_cy_10_Q : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_10_CYSELF_2507 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_10_CYMUXFAST_2506 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_10_CYAND_2505 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_10_FASTCARRY_2504 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_10_CYMUXG2_2503 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_10_CYMUXF2_2502 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_10_LOGIC_ZERO_2501 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_10_CYSELG_2492 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_12_XORF_2559 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_12_CYINIT_2558 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_12_XORG_2547 : STD_LOGIC; 
  signal CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_addsub0000_cy_12_Q : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_12_CYSELF_2545 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_12_CYMUXFAST_2544 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_12_CYAND_2543 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_12_FASTCARRY_2542 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_12_CYMUXG2_2541 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_12_CYMUXF2_2540 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_12_LOGIC_ZERO_2539 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_12_CYSELG_2530 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_14_XORF_2590 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_14_LOGIC_ZERO_2589 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_14_CYINIT_2588 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_14_CYSELF_2579 : STD_LOGIC; 
  signal PVF_VECTOR_FILTERED_addsub0000_14_XORG_2576 : STD_LOGIC; 
  signal CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_addsub0000_cy_14_Q : STD_LOGIC; 
  signal LNA_REGLIST_9_INBUF : STD_LOGIC; 
  signal SYS_RST_INBUF : STD_LOGIC; 
  signal LNA_CURRENT_REGLIST_REG_10_O : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal LNA_CURRENT_REGLIST_REG_0 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal LNA_REGLIST_1 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal LNA_ADDRESS_2 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal outReg : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal fuckingPrio : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000 : STD_LOGIC_VECTOR ( 15 downto 1 ); 
begin
  LNA_CURRENT_REGLIST_REG(15) <= LNA_CURRENT_REGLIST_REG_0(15);
  LNA_CURRENT_REGLIST_REG(14) <= LNA_CURRENT_REGLIST_REG_0(14);
  LNA_CURRENT_REGLIST_REG(13) <= LNA_CURRENT_REGLIST_REG_0(13);
  LNA_CURRENT_REGLIST_REG(12) <= LNA_CURRENT_REGLIST_REG_0(12);
  LNA_CURRENT_REGLIST_REG(11) <= LNA_CURRENT_REGLIST_REG_0(11);
  LNA_CURRENT_REGLIST_REG(10) <= LNA_CURRENT_REGLIST_REG_0(10);
  LNA_CURRENT_REGLIST_REG(9) <= LNA_CURRENT_REGLIST_REG_0(9);
  LNA_CURRENT_REGLIST_REG(8) <= LNA_CURRENT_REGLIST_REG_0(8);
  LNA_CURRENT_REGLIST_REG(7) <= LNA_CURRENT_REGLIST_REG_0(7);
  LNA_CURRENT_REGLIST_REG(6) <= LNA_CURRENT_REGLIST_REG_0(6);
  LNA_CURRENT_REGLIST_REG(5) <= LNA_CURRENT_REGLIST_REG_0(5);
  LNA_CURRENT_REGLIST_REG(4) <= LNA_CURRENT_REGLIST_REG_0(4);
  LNA_CURRENT_REGLIST_REG(3) <= LNA_CURRENT_REGLIST_REG_0(3);
  LNA_CURRENT_REGLIST_REG(2) <= LNA_CURRENT_REGLIST_REG_0(2);
  LNA_CURRENT_REGLIST_REG(1) <= LNA_CURRENT_REGLIST_REG_0(1);
  LNA_CURRENT_REGLIST_REG(0) <= LNA_CURRENT_REGLIST_REG_0(0);
  LNA_REGLIST_1(15) <= LNA_REGLIST(15);
  LNA_REGLIST_1(14) <= LNA_REGLIST(14);
  LNA_REGLIST_1(13) <= LNA_REGLIST(13);
  LNA_REGLIST_1(12) <= LNA_REGLIST(12);
  LNA_REGLIST_1(11) <= LNA_REGLIST(11);
  LNA_REGLIST_1(10) <= LNA_REGLIST(10);
  LNA_REGLIST_1(9) <= LNA_REGLIST(9);
  LNA_REGLIST_1(8) <= LNA_REGLIST(8);
  LNA_REGLIST_1(7) <= LNA_REGLIST(7);
  LNA_REGLIST_1(6) <= LNA_REGLIST(6);
  LNA_REGLIST_1(5) <= LNA_REGLIST(5);
  LNA_REGLIST_1(4) <= LNA_REGLIST(4);
  LNA_REGLIST_1(3) <= LNA_REGLIST(3);
  LNA_REGLIST_1(2) <= LNA_REGLIST(2);
  LNA_REGLIST_1(1) <= LNA_REGLIST(1);
  LNA_REGLIST_1(0) <= LNA_REGLIST(0);
  LNA_ADDRESS(3) <= LNA_ADDRESS_2(3);
  LNA_ADDRESS(2) <= LNA_ADDRESS_2(2);
  LNA_ADDRESS(1) <= LNA_ADDRESS_2(1);
  LNA_ADDRESS(0) <= LNA_ADDRESS_2(0);
  LNA_CURRENT_REGLIST_REG_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD101"
    )
    port map (
      I => LNA_CURRENT_REGLIST_REG_11_O,
      O => LNA_CURRENT_REGLIST_REG_0(11)
    );
  LNA_CURRENT_REGLIST_REG_12_OBUF : X_OBUF
    generic map(
      LOC => "PAD89"
    )
    port map (
      I => LNA_CURRENT_REGLIST_REG_12_O,
      O => LNA_CURRENT_REGLIST_REG_0(12)
    );
  LNA_CURRENT_REGLIST_REG_13_OBUF : X_OBUF
    generic map(
      LOC => "PAD104"
    )
    port map (
      I => LNA_CURRENT_REGLIST_REG_13_O,
      O => LNA_CURRENT_REGLIST_REG_0(13)
    );
  LNA_CURRENT_REGLIST_REG_14_OBUF : X_OBUF
    generic map(
      LOC => "PAD86"
    )
    port map (
      I => LNA_CURRENT_REGLIST_REG_14_O,
      O => LNA_CURRENT_REGLIST_REG_0(14)
    );
  LNA_CURRENT_REGLIST_REG_15_OBUF : X_OBUF
    generic map(
      LOC => "PAD80"
    )
    port map (
      I => LNA_CURRENT_REGLIST_REG_15_O,
      O => LNA_CURRENT_REGLIST_REG_0(15)
    );
  SYS_CLK_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "IPAD28",
      PATHPULSE => 638 ps
    )
    port map (
      I => SYS_CLK,
      O => SYS_CLK_INBUF
    );
  LNA_CURRENT_REGLIST_REG_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD99"
    )
    port map (
      I => LNA_CURRENT_REGLIST_REG_0_O,
      O => LNA_CURRENT_REGLIST_REG_0(0)
    );
  LNA_LOAD_REGLIST_IBUF : X_BUF
    generic map(
      LOC => "PAD115",
      PATHPULSE => 638 ps
    )
    port map (
      I => LNA_LOAD_REGLIST,
      O => LNA_LOAD_REGLIST_INBUF
    );
  LNA_LOAD_REGLIST_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD115",
      PATHPULSE => 638 ps
    )
    port map (
      I => LNA_LOAD_REGLIST_INBUF,
      O => LNA_LOAD_REGLIST_IBUF_653
    );
  LNA_HOLD_VALUE_IBUF : X_BUF
    generic map(
      LOC => "IPAD93",
      PATHPULSE => 638 ps
    )
    port map (
      I => LNA_HOLD_VALUE,
      O => LNA_HOLD_VALUE_INBUF
    );
  LNA_HOLD_VALUE_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD93",
      PATHPULSE => 638 ps
    )
    port map (
      I => LNA_HOLD_VALUE_INBUF,
      O => LNA_HOLD_VALUE_IBUF_654
    );
  LNA_CURRENT_REGLIST_REG_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD95"
    )
    port map (
      I => LNA_CURRENT_REGLIST_REG_1_O,
      O => LNA_CURRENT_REGLIST_REG_0(1)
    );
  LNA_CURRENT_REGLIST_REG_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD106"
    )
    port map (
      I => LNA_CURRENT_REGLIST_REG_2_O,
      O => LNA_CURRENT_REGLIST_REG_0(2)
    );
  LNA_CURRENT_REGLIST_REG_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD107"
    )
    port map (
      I => LNA_CURRENT_REGLIST_REG_3_O,
      O => LNA_CURRENT_REGLIST_REG_0(3)
    );
  LNA_CURRENT_REGLIST_REG_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD100"
    )
    port map (
      I => LNA_CURRENT_REGLIST_REG_4_O,
      O => LNA_CURRENT_REGLIST_REG_0(4)
    );
  LNA_CURRENT_REGLIST_REG_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD92"
    )
    port map (
      I => LNA_CURRENT_REGLIST_REG_5_O,
      O => LNA_CURRENT_REGLIST_REG_0(5)
    );
  LNA_CURRENT_REGLIST_REG_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD85"
    )
    port map (
      I => LNA_CURRENT_REGLIST_REG_6_O,
      O => LNA_CURRENT_REGLIST_REG_0(6)
    );
  LNA_CURRENT_REGLIST_REG_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD97"
    )
    port map (
      I => LNA_CURRENT_REGLIST_REG_7_O,
      O => LNA_CURRENT_REGLIST_REG_0(7)
    );
  LNA_REGLIST_10_IBUF : X_BUF
    generic map(
      LOC => "IPAD112",
      PATHPULSE => 638 ps
    )
    port map (
      I => LNA_REGLIST_1(10),
      O => LNA_REGLIST_10_INBUF
    );
  LNA_REGLIST_10_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD112",
      PATHPULSE => 638 ps
    )
    port map (
      I => LNA_REGLIST_10_INBUF,
      O => LNA_REGLIST_10_IBUF_662
    );
  LNA_CURRENT_REGLIST_REG_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD110"
    )
    port map (
      I => LNA_CURRENT_REGLIST_REG_8_O,
      O => LNA_CURRENT_REGLIST_REG_0(8)
    );
  LNA_REGLIST_11_IBUF : X_BUF
    generic map(
      LOC => "IPAD98",
      PATHPULSE => 638 ps
    )
    port map (
      I => LNA_REGLIST_1(11),
      O => LNA_REGLIST_11_INBUF
    );
  LNA_REGLIST_11_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD98",
      PATHPULSE => 638 ps
    )
    port map (
      I => LNA_REGLIST_11_INBUF,
      O => LNA_REGLIST_11_IBUF_664
    );
  LNA_CURRENT_REGLIST_REG_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD96"
    )
    port map (
      I => LNA_CURRENT_REGLIST_REG_9_O,
      O => LNA_CURRENT_REGLIST_REG_0(9)
    );
  LNA_REGLIST_12_IBUF : X_BUF
    generic map(
      LOC => "PAD90",
      PATHPULSE => 638 ps
    )
    port map (
      I => LNA_REGLIST_1(12),
      O => LNA_REGLIST_12_INBUF
    );
  LNA_REGLIST_12_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD90",
      PATHPULSE => 638 ps
    )
    port map (
      I => LNA_REGLIST_12_INBUF,
      O => LNA_REGLIST_12_IBUF_666
    );
  LNA_ADDRESS_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD116"
    )
    port map (
      I => LNA_ADDRESS_0_O,
      O => LNA_ADDRESS_2(0)
    );
  LNA_REGLIST_13_IBUF : X_BUF
    generic map(
      LOC => "IPAD103",
      PATHPULSE => 638 ps
    )
    port map (
      I => LNA_REGLIST_1(13),
      O => LNA_REGLIST_13_INBUF
    );
  LNA_REGLIST_13_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD103",
      PATHPULSE => 638 ps
    )
    port map (
      I => LNA_REGLIST_13_INBUF,
      O => LNA_REGLIST_13_IBUF_668
    );
  LNA_ADDRESS_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD114"
    )
    port map (
      I => LNA_ADDRESS_1_O,
      O => LNA_ADDRESS_2(1)
    );
  LNA_REGLIST_14_IBUF : X_BUF
    generic map(
      LOC => "PAD87",
      PATHPULSE => 638 ps
    )
    port map (
      I => LNA_REGLIST_1(14),
      O => LNA_REGLIST_14_INBUF
    );
  LNA_REGLIST_14_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD87",
      PATHPULSE => 638 ps
    )
    port map (
      I => LNA_REGLIST_14_INBUF,
      O => LNA_REGLIST_14_IBUF_670
    );
  LNA_ADDRESS_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD113"
    )
    port map (
      I => LNA_ADDRESS_2_O,
      O => LNA_ADDRESS_2(2)
    );
  LNA_REGLIST_15_IBUF : X_BUF
    generic map(
      LOC => "PAD79",
      PATHPULSE => 638 ps
    )
    port map (
      I => LNA_REGLIST_1(15),
      O => LNA_REGLIST_15_INBUF
    );
  LNA_REGLIST_15_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD79",
      PATHPULSE => 638 ps
    )
    port map (
      I => LNA_REGLIST_15_INBUF,
      O => LNA_REGLIST_15_IBUF_672
    );
  LNA_REGLIST_0_IBUF : X_BUF
    generic map(
      LOC => "IPAD78",
      PATHPULSE => 638 ps
    )
    port map (
      I => LNA_REGLIST_1(0),
      O => LNA_REGLIST_0_INBUF
    );
  LNA_REGLIST_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD78",
      PATHPULSE => 638 ps
    )
    port map (
      I => LNA_REGLIST_0_INBUF,
      O => LNA_REGLIST_0_IBUF_673
    );
  LNA_ADDRESS_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD109"
    )
    port map (
      I => LNA_ADDRESS_3_O,
      O => LNA_ADDRESS_2(3)
    );
  LNA_REGLIST_1_IBUF : X_BUF
    generic map(
      LOC => "PAD91",
      PATHPULSE => 638 ps
    )
    port map (
      I => LNA_REGLIST_1(1),
      O => LNA_REGLIST_1_INBUF
    );
  LNA_REGLIST_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD91",
      PATHPULSE => 638 ps
    )
    port map (
      I => LNA_REGLIST_1_INBUF,
      O => LNA_REGLIST_1_IBUF_675
    );
  LNA_REGLIST_2_IBUF : X_BUF
    generic map(
      LOC => "IPAD108",
      PATHPULSE => 638 ps
    )
    port map (
      I => LNA_REGLIST_1(2),
      O => LNA_REGLIST_2_INBUF
    );
  LNA_REGLIST_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD108",
      PATHPULSE => 638 ps
    )
    port map (
      I => LNA_REGLIST_2_INBUF,
      O => LNA_REGLIST_2_IBUF_676
    );
  LNA_REGLIST_3_IBUF : X_BUF
    generic map(
      LOC => "PAD94",
      PATHPULSE => 638 ps
    )
    port map (
      I => LNA_REGLIST_1(3),
      O => LNA_REGLIST_3_INBUF
    );
  LNA_REGLIST_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD94",
      PATHPULSE => 638 ps
    )
    port map (
      I => LNA_REGLIST_3_INBUF,
      O => LNA_REGLIST_3_IBUF_677
    );
  LNA_REGLIST_4_IBUF : X_BUF
    generic map(
      LOC => "PAD102",
      PATHPULSE => 638 ps
    )
    port map (
      I => LNA_REGLIST_1(4),
      O => LNA_REGLIST_4_INBUF
    );
  LNA_REGLIST_4_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD102",
      PATHPULSE => 638 ps
    )
    port map (
      I => LNA_REGLIST_4_INBUF,
      O => LNA_REGLIST_4_IBUF_678
    );
  LNA_REGLIST_5_IBUF : X_BUF
    generic map(
      LOC => "IPAD83",
      PATHPULSE => 638 ps
    )
    port map (
      I => LNA_REGLIST_1(5),
      O => LNA_REGLIST_5_INBUF
    );
  LNA_REGLIST_5_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD83",
      PATHPULSE => 638 ps
    )
    port map (
      I => LNA_REGLIST_5_INBUF,
      O => LNA_REGLIST_5_IBUF_679
    );
  LNA_REGLIST_6_IBUF : X_BUF
    generic map(
      LOC => "PAD82",
      PATHPULSE => 638 ps
    )
    port map (
      I => LNA_REGLIST_1(6),
      O => LNA_REGLIST_6_INBUF
    );
  LNA_REGLIST_6_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD82",
      PATHPULSE => 638 ps
    )
    port map (
      I => LNA_REGLIST_6_INBUF,
      O => LNA_REGLIST_6_IBUF_680
    );
  LNA_REGLIST_7_IBUF : X_BUF
    generic map(
      LOC => "PAD81",
      PATHPULSE => 638 ps
    )
    port map (
      I => LNA_REGLIST_1(7),
      O => LNA_REGLIST_7_INBUF
    );
  LNA_REGLIST_7_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD81",
      PATHPULSE => 638 ps
    )
    port map (
      I => LNA_REGLIST_7_INBUF,
      O => LNA_REGLIST_7_IBUF_681
    );
  LNA_REGLIST_8_IBUF : X_BUF
    generic map(
      LOC => "PAD84",
      PATHPULSE => 638 ps
    )
    port map (
      I => LNA_REGLIST_1(8),
      O => LNA_REGLIST_8_INBUF
    );
  LNA_REGLIST_8_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD84",
      PATHPULSE => 638 ps
    )
    port map (
      I => LNA_REGLIST_8_INBUF,
      O => LNA_REGLIST_8_IBUF_682
    );
  SYS_CLK_BUFGP_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX_X2Y10"
    )
    port map (
      I0 => SYS_CLK_BUFGP_BUFG_I0_INV,
      I1 => GND,
      S => SYS_CLK_BUFGP_BUFG_S_INVNOT,
      O => SYS_CLK_BUFGP
    );
  SYS_CLK_BUFGP_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX_X2Y10",
      PATHPULSE => 638 ps
    )
    port map (
      I => '1',
      O => SYS_CLK_BUFGP_BUFG_S_INVNOT
    );
  SYS_CLK_BUFGP_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX_X2Y10",
      PATHPULSE => 638 ps
    )
    port map (
      I => SYS_CLK_INBUF,
      O => SYS_CLK_BUFGP_BUFG_I0_INV
    );
  N4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y47",
      PATHPULSE => 638 ps
    )
    port map (
      I => N4,
      O => N4_0
    );
  N4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y47",
      PATHPULSE => 638 ps
    )
    port map (
      I => highprio_0_366_O_pack_1,
      O => highprio_0_366_O
    );
  highprio_0_366 : X_LUT4
    generic map(
      INIT => X"0777",
      LOC => "SLICE_X67Y47"
    )
    port map (
      ADR0 => PVF_VECTOR_FILTERED_addsub0000_6_Q,
      ADR1 => outReg(6),
      ADR2 => outReg(7),
      ADR3 => PVF_VECTOR_FILTERED_addsub0000_7_Q,
      O => highprio_0_366_O_pack_1
    );
  N81_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y43",
      PATHPULSE => 638 ps
    )
    port map (
      I => N81,
      O => N81_0
    );
  N81_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y43",
      PATHPULSE => 638 ps
    )
    port map (
      I => highprio_1_322_pack_1,
      O => highprio_1_322_691
    );
  highprio_1_322 : X_LUT4
    generic map(
      INIT => X"1320",
      LOC => "SLICE_X65Y43"
    )
    port map (
      ADR0 => outReg(7),
      ADR1 => N18_0,
      ADR2 => PVF_VECTOR_FILTERED_addsub0000_7_Q,
      ADR3 => fuckingPrio_6_0,
      O => highprio_1_322_pack_1
    );
  outReg_3_not0001_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y35",
      PATHPULSE => 638 ps
    )
    port map (
      I => N13_pack_1,
      O => N13
    );
  outReg_0_not000111 : X_LUT4
    generic map(
      INIT => X"0011",
      LOC => "SLICE_X65Y35"
    )
    port map (
      ADR0 => LNA_HOLD_VALUE_IBUF_654,
      ADR1 => LNA_ADDRESS_3_OBUF_0,
      ADR2 => VCC,
      ADR3 => LNA_ADDRESS_2_OBUF_0,
      O => N13_pack_1
    );
  N281_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y39",
      PATHPULSE => 638 ps
    )
    port map (
      I => N281,
      O => N281_0
    );
  N281_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y39",
      PATHPULSE => 638 ps
    )
    port map (
      I => fuckingPrio_9_pack_1,
      O => fuckingPrio(9)
    );
  CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_9_1 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X65Y39"
    )
    port map (
      ADR0 => VCC,
      ADR1 => outReg(9),
      ADR2 => VCC,
      ADR3 => PVF_VECTOR_FILTERED_addsub0000_9_Q,
      O => fuckingPrio_9_pack_1
    );
  outReg_9_not0001_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y44",
      PATHPULSE => 638 ps
    )
    port map (
      I => N12_pack_1,
      O => N12
    );
  outReg_10_not000111 : X_LUT4
    generic map(
      INIT => X"0050",
      LOC => "SLICE_X64Y44"
    )
    port map (
      ADR0 => LNA_ADDRESS_2_OBUF_0,
      ADR1 => VCC,
      ADR2 => LNA_ADDRESS_3_OBUF_0,
      ADR3 => LNA_HOLD_VALUE_IBUF_654,
      O => N12_pack_1
    );
  N29_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y40",
      PATHPULSE => 638 ps
    )
    port map (
      I => N29,
      O => N29_0
    );
  N29_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y40",
      PATHPULSE => 638 ps
    )
    port map (
      I => highprio_0_51_SW1_O_pack_1,
      O => highprio_0_51_SW1_O
    );
  highprio_0_51_SW1 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X66Y40"
    )
    port map (
      ADR0 => PVF_VECTOR_FILTERED_addsub0000_11_Q,
      ADR1 => outReg(11),
      ADR2 => outReg(15),
      ADR3 => PVF_VECTOR_FILTERED_addsub0000_15_Q,
      O => highprio_0_51_SW1_O_pack_1
    );
  highprio_1_22_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y42",
      PATHPULSE => 638 ps
    )
    port map (
      I => highprio_1_22_1214,
      O => highprio_1_22_0
    );
  highprio_1_22_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y42",
      PATHPULSE => 638 ps
    )
    port map (
      I => fuckingPrio_11_pack_1,
      O => fuckingPrio(11)
    );
  CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_11_1 : X_LUT4
    generic map(
      INIT => X"C0C0",
      LOC => "SLICE_X66Y42"
    )
    port map (
      ADR0 => VCC,
      ADR1 => outReg(11),
      ADR2 => PVF_VECTOR_FILTERED_addsub0000_11_Q,
      ADR3 => VCC,
      O => fuckingPrio_11_pack_1
    );
  highprio_0_75_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => highprio_0_75_1238,
      O => highprio_0_75_0
    );
  highprio_0_75_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => fuckingPrio_8_pack_1,
      O => fuckingPrio(8)
    );
  CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_8_1 : X_LUT4
    generic map(
      INIT => X"F000",
      LOC => "SLICE_X67Y29"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => outReg(8),
      ADR3 => PVF_VECTOR_FILTERED_addsub0000_8_Q,
      O => fuckingPrio_8_pack_1
    );
  highprio_1_45_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => highprio_1_45_1262,
      O => highprio_1_45_0
    );
  highprio_1_45_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => fuckingPrio_2_pack_1,
      O => fuckingPrio(2)
    );
  CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_2_1 : X_LUT4
    generic map(
      INIT => X"AA00",
      LOC => "SLICE_X64Y37"
    )
    port map (
      ADR0 => outReg(2),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => PVF_VECTOR_FILTERED_addsub0000_2_Q,
      O => fuckingPrio_2_pack_1
    );
  N6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y46",
      PATHPULSE => 638 ps
    )
    port map (
      I => N6,
      O => N6_0
    );
  N6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y46",
      PATHPULSE => 638 ps
    )
    port map (
      I => highprio_2_2_O_pack_1,
      O => highprio_2_2_O
    );
  highprio_2_2 : X_LUT4
    generic map(
      INIT => X"0105",
      LOC => "SLICE_X66Y46"
    )
    port map (
      ADR0 => N26_0,
      ADR1 => outReg(10),
      ADR2 => N101_0,
      ADR3 => PVF_VECTOR_FILTERED_addsub0000_10_Q,
      O => highprio_2_2_O_pack_1
    );
  outReg_15_not0001_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y45",
      PATHPULSE => 638 ps
    )
    port map (
      I => N10_pack_1,
      O => N10
    );
  outReg_12_not000111 : X_LUT4
    generic map(
      INIT => X"3000",
      LOC => "SLICE_X64Y45"
    )
    port map (
      ADR0 => VCC,
      ADR1 => LNA_HOLD_VALUE_IBUF_654,
      ADR2 => LNA_ADDRESS_3_OBUF_0,
      ADR3 => LNA_ADDRESS_2_OBUF_0,
      O => N10_pack_1
    );
  highprio_0_362_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y45",
      PATHPULSE => 638 ps
    )
    port map (
      I => highprio_0_362_1334,
      O => highprio_0_362_0
    );
  highprio_0_362_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y45",
      PATHPULSE => 638 ps
    )
    port map (
      I => fuckingPrio_15_pack_1,
      O => fuckingPrio(15)
    );
  CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_15_1 : X_LUT4
    generic map(
      INIT => X"C0C0",
      LOC => "SLICE_X66Y45"
    )
    port map (
      ADR0 => VCC,
      ADR1 => outReg(15),
      ADR2 => PVF_VECTOR_FILTERED_addsub0000_15_Q,
      ADR3 => VCC,
      O => fuckingPrio_15_pack_1
    );
  highprio_0_380_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y42",
      PATHPULSE => 638 ps
    )
    port map (
      I => highprio_0_380_1358,
      O => highprio_0_380_0
    );
  highprio_0_380_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y42",
      PATHPULSE => 638 ps
    )
    port map (
      I => fuckingPrio_5_pack_1,
      O => fuckingPrio(5)
    );
  CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_5_1 : X_LUT4
    generic map(
      INIT => X"C0C0",
      LOC => "SLICE_X64Y42"
    )
    port map (
      ADR0 => VCC,
      ADR1 => outReg(5),
      ADR2 => PVF_VECTOR_FILTERED_addsub0000_5_Q,
      ADR3 => VCC,
      O => fuckingPrio_5_pack_1
    );
  LNA_ADDRESS_1_OBUF_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y43",
      PATHPULSE => 638 ps
    )
    port map (
      I => LNA_ADDRESS_1_OBUF_1382,
      O => LNA_ADDRESS_1_OBUF_0
    );
  LNA_ADDRESS_1_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y43",
      PATHPULSE => 638 ps
    )
    port map (
      I => highprio_1_388_O_pack_1,
      O => highprio_1_388_O
    );
  highprio_1_388 : X_LUT4
    generic map(
      INIT => X"E000",
      LOC => "SLICE_X64Y43"
    )
    port map (
      ADR0 => highprio_1_322_691,
      ADR1 => highprio_1_345_0,
      ADR2 => N28,
      ADR3 => highprio_1_378_0,
      O => highprio_1_388_O_pack_1
    );
  highprio_1_93_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y41",
      PATHPULSE => 638 ps
    )
    port map (
      I => highprio_1_93_1406,
      O => highprio_1_93_0
    );
  highprio_1_93_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y41",
      PATHPULSE => 638 ps
    )
    port map (
      I => highprio_1_80_O_pack_1,
      O => highprio_1_80_O
    );
  highprio_1_80 : X_LUT4
    generic map(
      INIT => X"0013",
      LOC => "SLICE_X64Y41"
    )
    port map (
      ADR0 => PVF_VECTOR_FILTERED_addsub0000_12_Q,
      ADR1 => fuckingPrio(5),
      ADR2 => outReg(12),
      ADR3 => fuckingPrio(1),
      O => highprio_1_80_O_pack_1
    );
  highprio_2_62_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y40",
      PATHPULSE => 638 ps
    )
    port map (
      I => highprio_2_62_1430,
      O => highprio_2_62_0
    );
  highprio_2_62_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y40",
      PATHPULSE => 638 ps
    )
    port map (
      I => fuckingPrio_12_pack_1,
      O => fuckingPrio(12)
    );
  CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_12_1 : X_LUT4
    generic map(
      INIT => X"C0C0",
      LOC => "SLICE_X64Y40"
    )
    port map (
      ADR0 => VCC,
      ADR1 => outReg(12),
      ADR2 => PVF_VECTOR_FILTERED_addsub0000_12_Q,
      ADR3 => VCC,
      O => fuckingPrio_12_pack_1
    );
  N141_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => N141,
      O => N141_0
    );
  N141_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => fuckingPrio_3_pack_1,
      O => fuckingPrio(3)
    );
  CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_3_1 : X_LUT4
    generic map(
      INIT => X"F000",
      LOC => "SLICE_X65Y36"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => PVF_VECTOR_FILTERED_addsub0000_3_Q,
      ADR3 => outReg(3),
      O => fuckingPrio_3_pack_1
    );
  N61_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => N61,
      O => N61_0
    );
  N61_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => fuckingPrio_4_pack_1,
      O => fuckingPrio(4)
    );
  CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_4_1 : X_LUT4
    generic map(
      INIT => X"F000",
      LOC => "SLICE_X67Y33"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_Q,
      ADR3 => outReg(4),
      O => fuckingPrio_4_pack_1
    );
  N101_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => N101,
      O => N101_0
    );
  N101_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => fuckingPrio_1_pack_1,
      O => fuckingPrio(1)
    );
  CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_1_1 : X_LUT4
    generic map(
      INIT => X"F000",
      LOC => "SLICE_X64Y36"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_1_Q,
      ADR3 => outReg(1),
      O => fuckingPrio_1_pack_1
    );
  N01_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y39",
      PATHPULSE => 638 ps
    )
    port map (
      I => N01,
      O => N01_0
    );
  N01_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y39",
      PATHPULSE => 638 ps
    )
    port map (
      I => N22_pack_1,
      O => N22
    );
  highprio_0_4_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X66Y39"
    )
    port map (
      ADR0 => outReg(13),
      ADR1 => outReg(6),
      ADR2 => PVF_VECTOR_FILTERED_addsub0000_13_Q,
      ADR3 => PVF_VECTOR_FILTERED_addsub0000_6_Q,
      O => N22_pack_1
    );
  LNA_ADDRESS_2_OBUF_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y40",
      PATHPULSE => 638 ps
    )
    port map (
      I => LNA_ADDRESS_2_OBUF_1550,
      O => LNA_ADDRESS_2_OBUF_0
    );
  LNA_ADDRESS_2_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y40",
      PATHPULSE => 638 ps
    )
    port map (
      I => N28_pack_1,
      O => N28
    );
  highprio_2_31 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X65Y40"
    )
    port map (
      ADR0 => N101_0,
      ADR1 => N141_0,
      ADR2 => fuckingPrio(10),
      ADR3 => fuckingPrio(11),
      O => N28_pack_1
    );
  highprio_3_62_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y41",
      PATHPULSE => 638 ps
    )
    port map (
      I => highprio_3_62_1574,
      O => highprio_3_62_0
    );
  highprio_3_62_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y41",
      PATHPULSE => 638 ps
    )
    port map (
      I => fuckingPrio_10_pack_1,
      O => fuckingPrio(10)
    );
  CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_10_1 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X66Y41"
    )
    port map (
      ADR0 => VCC,
      ADR1 => outReg(10),
      ADR2 => VCC,
      ADR3 => PVF_VECTOR_FILTERED_addsub0000_10_Q,
      O => fuckingPrio_10_pack_1
    );
  highprio_2_78_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y44",
      PATHPULSE => 638 ps
    )
    port map (
      I => highprio_2_78_1598,
      O => highprio_2_78_0
    );
  highprio_2_78_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y44",
      PATHPULSE => 638 ps
    )
    port map (
      I => fuckingPrio_14_pack_1,
      O => fuckingPrio(14)
    );
  CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_14_1 : X_LUT4
    generic map(
      INIT => X"AA00",
      LOC => "SLICE_X67Y44"
    )
    port map (
      ADR0 => PVF_VECTOR_FILTERED_addsub0000_14_Q,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => outReg(14),
      O => fuckingPrio_14_pack_1
    );
  highprio_1_345_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y44",
      PATHPULSE => 638 ps
    )
    port map (
      I => highprio_1_345_1622,
      O => highprio_1_345_0
    );
  highprio_1_345_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y44",
      PATHPULSE => 638 ps
    )
    port map (
      I => highprio_1_345_SW0_O_pack_1,
      O => highprio_1_345_SW0_O
    );
  highprio_1_345_SW0 : X_LUT4
    generic map(
      INIT => X"935F",
      LOC => "SLICE_X66Y44"
    )
    port map (
      ADR0 => outReg(15),
      ADR1 => outReg(14),
      ADR2 => PVF_VECTOR_FILTERED_addsub0000_15_Q,
      ADR3 => PVF_VECTOR_FILTERED_addsub0000_14_Q,
      O => highprio_1_345_SW0_O_pack_1
    );
  highprio_3_75_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y38",
      PATHPULSE => 638 ps
    )
    port map (
      I => highprio_3_75_1646,
      O => highprio_3_75_0
    );
  highprio_3_75_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y38",
      PATHPULSE => 638 ps
    )
    port map (
      I => fuckingPrio_7_pack_1,
      O => fuckingPrio(7)
    );
  CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_7_1 : X_LUT4
    generic map(
      INIT => X"A0A0",
      LOC => "SLICE_X64Y38"
    )
    port map (
      ADR0 => outReg(7),
      ADR1 => VCC,
      ADR2 => PVF_VECTOR_FILTERED_addsub0000_7_Q,
      ADR3 => VCC,
      O => fuckingPrio_7_pack_1
    );
  highprio_1_378_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y42",
      PATHPULSE => 638 ps
    )
    port map (
      I => highprio_1_378_1670,
      O => highprio_1_378_0
    );
  highprio_1_378_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y42",
      PATHPULSE => 638 ps
    )
    port map (
      I => highprio_1_378_SW0_O_pack_1,
      O => highprio_1_378_SW0_O
    );
  highprio_1_378_SW0 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X65Y42"
    )
    port map (
      ADR0 => outReg(5),
      ADR1 => outReg(12),
      ADR2 => PVF_VECTOR_FILTERED_addsub0000_5_Q,
      ADR3 => PVF_VECTOR_FILTERED_addsub0000_12_Q,
      O => highprio_1_378_SW0_O_pack_1
    );
  outReg_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => N14,
      O => N14_0
    );
  outReg_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => outReg_1_mux0000,
      O => outReg_1_DYMUX_1693
    );
  outReg_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => SYS_CLK_BUFGP,
      O => outReg_1_CLKINV_1683
    );
  outReg_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => outReg_1_not0001,
      O => outReg_1_CEINV_1682
    );
  outReg_1_mux00001 : X_LUT4
    generic map(
      INIT => X"F000",
      LOC => "SLICE_X67Y34"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => LNA_LOAD_REGLIST_IBUF_653,
      ADR3 => LNA_REGLIST_1_IBUF_675,
      O => outReg_1_mux0000
    );
  outReg_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => outReg_2_mux0000,
      O => outReg_2_DYMUX_1722
    );
  outReg_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => SYS_CLK_BUFGP,
      O => outReg_2_CLKINV_1712
    );
  outReg_2_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => outReg_2_not0001,
      O => outReg_2_CEINV_1711
    );
  outReg_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => outReg_3_mux0000,
      O => outReg_3_DYMUX_1743
    );
  outReg_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => SYS_CLK_BUFGP,
      O => outReg_3_CLKINV_1733
    );
  outReg_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => outReg_3_not0001,
      O => outReg_3_CEINV_1732
    );
  outReg_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => outReg_4_mux0000,
      O => outReg_4_DYMUX_1764
    );
  outReg_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => SYS_CLK_BUFGP,
      O => outReg_4_CLKINV_1754
    );
  outReg_4_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => outReg_4_not0001,
      O => outReg_4_CEINV_1753
    );
  outReg_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => outReg_5_mux0000,
      O => outReg_5_DYMUX_1785
    );
  outReg_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => SYS_CLK_BUFGP,
      O => outReg_5_CLKINV_1775
    );
  outReg_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => outReg_5_not0001,
      O => outReg_5_CEINV_1774
    );
  outReg_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y38",
      PATHPULSE => 638 ps
    )
    port map (
      I => outReg_6_mux0000,
      O => outReg_6_DYMUX_1806
    );
  outReg_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y38",
      PATHPULSE => 638 ps
    )
    port map (
      I => SYS_CLK_BUFGP,
      O => outReg_6_CLKINV_1796
    );
  outReg_6_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y38",
      PATHPULSE => 638 ps
    )
    port map (
      I => outReg_6_not0001,
      O => outReg_6_CEINV_1795
    );
  outReg_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y49",
      PATHPULSE => 638 ps
    )
    port map (
      I => outReg_7_mux0000,
      O => outReg_7_DYMUX_1827
    );
  outReg_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y49",
      PATHPULSE => 638 ps
    )
    port map (
      I => SYS_CLK_BUFGP,
      O => outReg_7_CLKINV_1817
    );
  outReg_7_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y49",
      PATHPULSE => 638 ps
    )
    port map (
      I => outReg_7_not0001,
      O => outReg_7_CEINV_1816
    );
  outReg_8_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y47",
      PATHPULSE => 638 ps
    )
    port map (
      I => outReg_8_mux0000,
      O => outReg_8_DYMUX_1848
    );
  outReg_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y47",
      PATHPULSE => 638 ps
    )
    port map (
      I => SYS_CLK_BUFGP,
      O => outReg_8_CLKINV_1838
    );
  outReg_8_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y47",
      PATHPULSE => 638 ps
    )
    port map (
      I => outReg_8_not0001,
      O => outReg_8_CEINV_1837
    );
  outReg_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y44",
      PATHPULSE => 638 ps
    )
    port map (
      I => outReg_9_mux0000,
      O => outReg_9_DYMUX_1869
    );
  outReg_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y44",
      PATHPULSE => 638 ps
    )
    port map (
      I => SYS_CLK_BUFGP,
      O => outReg_9_CLKINV_1859
    );
  outReg_9_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y44",
      PATHPULSE => 638 ps
    )
    port map (
      I => outReg_9_not0001,
      O => outReg_9_CEINV_1858
    );
  outReg_10_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y41",
      PATHPULSE => 638 ps
    )
    port map (
      I => outReg_10_mux0000,
      O => outReg_10_DYMUX_1890
    );
  outReg_10_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y41",
      PATHPULSE => 638 ps
    )
    port map (
      I => SYS_CLK_BUFGP,
      O => outReg_10_CLKINV_1880
    );
  outReg_10_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y41",
      PATHPULSE => 638 ps
    )
    port map (
      I => outReg_10_not0001,
      O => outReg_10_CEINV_1879
    );
  outReg_11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => outReg_11_mux0000,
      O => outReg_11_DYMUX_1911
    );
  outReg_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => SYS_CLK_BUFGP,
      O => outReg_11_CLKINV_1901
    );
  outReg_11_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => outReg_11_not0001,
      O => outReg_11_CEINV_1900
    );
  outReg_12_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y43",
      PATHPULSE => 638 ps
    )
    port map (
      I => outReg_12_mux0000,
      O => outReg_12_DYMUX_1932
    );
  outReg_12_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y43",
      PATHPULSE => 638 ps
    )
    port map (
      I => SYS_CLK_BUFGP,
      O => outReg_12_CLKINV_1922
    );
  outReg_12_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y43",
      PATHPULSE => 638 ps
    )
    port map (
      I => outReg_12_not0001,
      O => outReg_12_CEINV_1921
    );
  outReg_13_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => outReg_13_mux0000,
      O => outReg_13_DYMUX_1953
    );
  outReg_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => SYS_CLK_BUFGP,
      O => outReg_13_CLKINV_1943
    );
  outReg_13_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => outReg_13_not0001,
      O => outReg_13_CEINV_1942
    );
  outReg_14_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y46",
      PATHPULSE => 638 ps
    )
    port map (
      I => outReg_14_mux0000,
      O => outReg_14_DYMUX_1974
    );
  outReg_14_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y46",
      PATHPULSE => 638 ps
    )
    port map (
      I => SYS_CLK_BUFGP,
      O => outReg_14_CLKINV_1964
    );
  outReg_14_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y46",
      PATHPULSE => 638 ps
    )
    port map (
      I => outReg_14_not0001,
      O => outReg_14_CEINV_1963
    );
  outReg_15_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y48",
      PATHPULSE => 638 ps
    )
    port map (
      I => outReg_15_mux0000,
      O => outReg_15_DYMUX_1995
    );
  outReg_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y48",
      PATHPULSE => 638 ps
    )
    port map (
      I => SYS_CLK_BUFGP,
      O => outReg_15_CLKINV_1985
    );
  outReg_15_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y48",
      PATHPULSE => 638 ps
    )
    port map (
      I => outReg_15_not0001,
      O => outReg_15_CEINV_1984
    );
  outReg_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => outReg_0_mux0000,
      O => outReg_0_DYMUX_2016
    );
  outReg_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => SYS_CLK_BUFGP,
      O => outReg_0_CLKINV_2006
    );
  outReg_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => outReg_0_not0001,
      O => outReg_0_CEINV_2005
    );
  outReg_7_not0001_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y47",
      PATHPULSE => 638 ps
    )
    port map (
      I => N111_pack_1,
      O => N111
    );
  outReg_4_not000111 : X_LUT4
    generic map(
      INIT => X"0030",
      LOC => "SLICE_X64Y47"
    )
    port map (
      ADR0 => VCC,
      ADR1 => LNA_HOLD_VALUE_IBUF_654,
      ADR2 => LNA_ADDRESS_2_OBUF_0,
      ADR3 => LNA_ADDRESS_3_OBUF_0,
      O => N111_pack_1
    );
  fuckingPrio_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y35",
      PATHPULSE => 638 ps
    )
    port map (
      I => fuckingPrio(0),
      O => fuckingPrio_0_0
    );
  CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_0_1 : X_LUT4
    generic map(
      INIT => X"C0C0",
      LOC => "SLICE_X67Y35"
    )
    port map (
      ADR0 => VCC,
      ADR1 => outReg(0),
      ADR2 => CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_0_Q,
      ADR3 => VCC,
      O => fuckingPrio(0)
    );
  outReg_1_not00011 : X_LUT4
    generic map(
      INIT => X"AEAA",
      LOC => "SLICE_X66Y35"
    )
    port map (
      ADR0 => N14_0,
      ADR1 => LNA_ADDRESS_0_OBUF_0,
      ADR2 => LNA_ADDRESS_1_OBUF_0,
      ADR3 => N13,
      O => outReg_1_not0001
    );
  LNA_ADDRESS_0_OBUF_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y47",
      PATHPULSE => 638 ps
    )
    port map (
      I => LNA_ADDRESS_0_OBUF_2102,
      O => LNA_ADDRESS_0_OBUF_0
    );
  LNA_ADDRESS_0_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y47",
      PATHPULSE => 638 ps
    )
    port map (
      I => LNA_ADDRESS_3_OBUF_2095,
      O => LNA_ADDRESS_3_OBUF_0
    );
  highprio_3_107 : X_LUT4
    generic map(
      INIT => X"EAAA",
      LOC => "SLICE_X66Y47"
    )
    port map (
      ADR0 => N6_0,
      ADR1 => N29_0,
      ADR2 => highprio_3_62_0,
      ADR3 => highprio_3_75_0,
      O => LNA_ADDRESS_3_OBUF_2095
    );
  outReg_2_not00011 : X_LUT4
    generic map(
      INIT => X"CECC",
      LOC => "SLICE_X64Y35"
    )
    port map (
      ADR0 => N13,
      ADR1 => N14_0,
      ADR2 => LNA_ADDRESS_0_OBUF_0,
      ADR3 => LNA_ADDRESS_1_OBUF_0,
      O => outReg_2_not0001
    );
  N18_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y45",
      PATHPULSE => 638 ps
    )
    port map (
      I => N18,
      O => N18_0
    );
  highprio_1_322_SW0 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X67Y45"
    )
    port map (
      ADR0 => PVF_VECTOR_FILTERED_addsub0000_14_Q,
      ADR1 => outReg(14),
      ADR2 => outReg(15),
      ADR3 => PVF_VECTOR_FILTERED_addsub0000_15_Q,
      O => N18
    );
  outReg_4_not00011 : X_LUT4
    generic map(
      INIT => X"F1F0",
      LOC => "SLICE_X67Y32"
    )
    port map (
      ADR0 => LNA_ADDRESS_0_OBUF_0,
      ADR1 => LNA_ADDRESS_1_OBUF_0,
      ADR2 => N14_0,
      ADR3 => N111,
      O => outReg_4_not0001
    );
  fuckingPrio_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y46",
      PATHPULSE => 638 ps
    )
    port map (
      I => fuckingPrio(6),
      O => fuckingPrio_6_0
    );
  CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_6_1 : X_LUT4
    generic map(
      INIT => X"8888",
      LOC => "SLICE_X67Y46"
    )
    port map (
      ADR0 => PVF_VECTOR_FILTERED_addsub0000_6_Q,
      ADR1 => outReg(6),
      ADR2 => VCC,
      ADR3 => VCC,
      O => fuckingPrio(6)
    );
  outReg_6_not00011 : X_LUT4
    generic map(
      INIT => X"BAAA",
      LOC => "SLICE_X67Y30"
    )
    port map (
      ADR0 => N14_0,
      ADR1 => LNA_ADDRESS_0_OBUF_0,
      ADR2 => LNA_ADDRESS_1_OBUF_0,
      ADR3 => N111,
      O => outReg_6_not0001
    );
  outReg_12_not00011 : X_LUT4
    generic map(
      INIT => X"CCCE",
      LOC => "SLICE_X66Y33"
    )
    port map (
      ADR0 => N10,
      ADR1 => N14_0,
      ADR2 => LNA_ADDRESS_1_OBUF_0,
      ADR3 => LNA_ADDRESS_0_OBUF_0,
      O => outReg_12_not0001
    );
  outReg_8_not00011 : X_LUT4
    generic map(
      INIT => X"CCDC",
      LOC => "SLICE_X65Y46"
    )
    port map (
      ADR0 => LNA_ADDRESS_1_OBUF_0,
      ADR1 => N14_0,
      ADR2 => N12,
      ADR3 => LNA_ADDRESS_0_OBUF_0,
      O => outReg_8_not0001
    );
  highprio_0_62_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y39",
      PATHPULSE => 638 ps
    )
    port map (
      I => highprio_0_62_2258,
      O => highprio_0_62_0
    );
  highprio_0_62 : X_LUT4
    generic map(
      INIT => X"0116",
      LOC => "SLICE_X64Y39"
    )
    port map (
      ADR0 => fuckingPrio(3),
      ADR1 => fuckingPrio(7),
      ADR2 => fuckingPrio(1),
      ADR3 => fuckingPrio(5),
      O => highprio_0_62_2258
    );
  highprio_1_66_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y38",
      PATHPULSE => 638 ps
    )
    port map (
      I => highprio_1_66_2270,
      O => highprio_1_66_0
    );
  highprio_1_66 : X_LUT4
    generic map(
      INIT => X"153F",
      LOC => "SLICE_X65Y38"
    )
    port map (
      ADR0 => PVF_VECTOR_FILTERED_addsub0000_7_Q,
      ADR1 => PVF_VECTOR_FILTERED_addsub0000_8_Q,
      ADR2 => outReg(8),
      ADR3 => outReg(7),
      O => highprio_1_66_2270
    );
  fuckingPrio_13_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y45",
      PATHPULSE => 638 ps
    )
    port map (
      I => fuckingPrio(13),
      O => fuckingPrio_13_0
    );
  CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_13_1 : X_LUT4
    generic map(
      INIT => X"F000",
      LOC => "SLICE_X65Y45"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => PVF_VECTOR_FILTERED_addsub0000_13_Q,
      ADR3 => outReg(13),
      O => fuckingPrio(13)
    );
  N26_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => N26,
      O => N26_0
    );
  highprio_2_2_SW2 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X66Y34"
    )
    port map (
      ADR0 => outReg(3),
      ADR1 => PVF_VECTOR_FILTERED_addsub0000_2_Q,
      ADR2 => outReg(2),
      ADR3 => PVF_VECTOR_FILTERED_addsub0000_3_Q,
      O => N26
    );
  CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X67Y36"
    )
    port map (
      O => CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_0_LOGIC_ZERO_2313
    );
  CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_0_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X67Y36"
    )
    port map (
      O => CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_0_LOGIC_ONE_2330
    );
  CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_0_XORF_2331,
      O => CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_0_Q
    );
  CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X67Y36"
    )
    port map (
      I0 => CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_0_CYINIT_2329,
      I1 => CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_0_F,
      O => CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_0_XORF_2331
    );
  CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X67Y36"
    )
    port map (
      IA => CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_0_LOGIC_ONE_2330,
      IB => CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_0_CYINIT_2329,
      SEL => CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_0_CYSELF_2320,
      O => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_addsub0000_cy_0_Q
    );
  CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X67Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_0_BXINV_2318,
      O => CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_0_CYINIT_2329
    );
  CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X67Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_0_F,
      O => CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_0_CYSELF_2320
    );
  CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => '0',
      O => CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_0_BXINV_2318
    );
  CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_0_XORG_2316,
      O => CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_1_Q
    );
  CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X67Y36"
    )
    port map (
      I0 => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_addsub0000_cy_0_Q,
      I1 => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000(1),
      O => CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_0_XORG_2316
    );
  CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_0_CYMUXG_2315,
      O => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_addsub0000_cy_1_Q
    );
  CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X67Y36"
    )
    port map (
      IA => CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_0_LOGIC_ZERO_2313,
      IB => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_addsub0000_cy_0_Q,
      SEL => CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_0_CYSELG_2304,
      O => CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_0_CYMUXG_2315
    );
  CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X67Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000(1),
      O => CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_0_CYSELG_2304
    );
  CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000_1_1_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X67Y36"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => outReg(1),
      O => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000(1)
    );
  PVF_VECTOR_FILTERED_addsub0000_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X67Y37"
    )
    port map (
      O => PVF_VECTOR_FILTERED_addsub0000_2_LOGIC_ZERO_2349
    );
  PVF_VECTOR_FILTERED_addsub0000_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => PVF_VECTOR_FILTERED_addsub0000_2_XORF_2369,
      O => PVF_VECTOR_FILTERED_addsub0000_2_Q
    );
  PVF_VECTOR_FILTERED_addsub0000_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X67Y37"
    )
    port map (
      I0 => PVF_VECTOR_FILTERED_addsub0000_2_CYINIT_2368,
      I1 => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000(2),
      O => PVF_VECTOR_FILTERED_addsub0000_2_XORF_2369
    );
  PVF_VECTOR_FILTERED_addsub0000_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X67Y37"
    )
    port map (
      IA => PVF_VECTOR_FILTERED_addsub0000_2_LOGIC_ZERO_2349,
      IB => PVF_VECTOR_FILTERED_addsub0000_2_CYINIT_2368,
      SEL => PVF_VECTOR_FILTERED_addsub0000_2_CYSELF_2355,
      O => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_addsub0000_cy_2_Q
    );
  PVF_VECTOR_FILTERED_addsub0000_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y37"
    )
    port map (
      IA => PVF_VECTOR_FILTERED_addsub0000_2_LOGIC_ZERO_2349,
      IB => PVF_VECTOR_FILTERED_addsub0000_2_LOGIC_ZERO_2349,
      SEL => PVF_VECTOR_FILTERED_addsub0000_2_CYSELF_2355,
      O => PVF_VECTOR_FILTERED_addsub0000_2_CYMUXF2_2350
    );
  PVF_VECTOR_FILTERED_addsub0000_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X67Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_addsub0000_cy_1_Q,
      O => PVF_VECTOR_FILTERED_addsub0000_2_CYINIT_2368
    );
  PVF_VECTOR_FILTERED_addsub0000_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X67Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000(2),
      O => PVF_VECTOR_FILTERED_addsub0000_2_CYSELF_2355
    );
  PVF_VECTOR_FILTERED_addsub0000_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => PVF_VECTOR_FILTERED_addsub0000_2_XORG_2357,
      O => PVF_VECTOR_FILTERED_addsub0000_3_Q
    );
  PVF_VECTOR_FILTERED_addsub0000_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X67Y37"
    )
    port map (
      I0 => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_addsub0000_cy_2_Q,
      I1 => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000(3),
      O => PVF_VECTOR_FILTERED_addsub0000_2_XORG_2357
    );
  PVF_VECTOR_FILTERED_addsub0000_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => PVF_VECTOR_FILTERED_addsub0000_2_CYMUXFAST_2354,
      O => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_addsub0000_cy_3_Q
    );
  PVF_VECTOR_FILTERED_addsub0000_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X67Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_addsub0000_cy_1_Q,
      O => PVF_VECTOR_FILTERED_addsub0000_2_FASTCARRY_2352
    );
  PVF_VECTOR_FILTERED_addsub0000_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X67Y37"
    )
    port map (
      I0 => PVF_VECTOR_FILTERED_addsub0000_2_CYSELG_2340,
      I1 => PVF_VECTOR_FILTERED_addsub0000_2_CYSELF_2355,
      O => PVF_VECTOR_FILTERED_addsub0000_2_CYAND_2353
    );
  PVF_VECTOR_FILTERED_addsub0000_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X67Y37"
    )
    port map (
      IA => PVF_VECTOR_FILTERED_addsub0000_2_CYMUXG2_2351,
      IB => PVF_VECTOR_FILTERED_addsub0000_2_FASTCARRY_2352,
      SEL => PVF_VECTOR_FILTERED_addsub0000_2_CYAND_2353,
      O => PVF_VECTOR_FILTERED_addsub0000_2_CYMUXFAST_2354
    );
  PVF_VECTOR_FILTERED_addsub0000_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y37"
    )
    port map (
      IA => PVF_VECTOR_FILTERED_addsub0000_2_LOGIC_ZERO_2349,
      IB => PVF_VECTOR_FILTERED_addsub0000_2_CYMUXF2_2350,
      SEL => PVF_VECTOR_FILTERED_addsub0000_2_CYSELG_2340,
      O => PVF_VECTOR_FILTERED_addsub0000_2_CYMUXG2_2351
    );
  PVF_VECTOR_FILTERED_addsub0000_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X67Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000(3),
      O => PVF_VECTOR_FILTERED_addsub0000_2_CYSELG_2340
    );
  CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000_3_1_INV_0 : X_LUT4
    generic map(
      INIT => X"0F0F",
      LOC => "SLICE_X67Y37"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => outReg(3),
      ADR3 => VCC,
      O => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000(3)
    );
  CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X67Y38"
    )
    port map (
      O => CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_LOGIC_ZERO_2387
    );
  CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y38",
      PATHPULSE => 638 ps
    )
    port map (
      I => CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_XORF_2407,
      O => CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_Q
    );
  CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X67Y38"
    )
    port map (
      I0 => CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_CYINIT_2406,
      I1 => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000(4),
      O => CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_XORF_2407
    );
  CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X67Y38"
    )
    port map (
      IA => CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_LOGIC_ZERO_2387,
      IB => CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_CYINIT_2406,
      SEL => CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_CYSELF_2393,
      O => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_addsub0000_cy_4_Q
    );
  CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y38"
    )
    port map (
      IA => CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_LOGIC_ZERO_2387,
      IB => CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_LOGIC_ZERO_2387,
      SEL => CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_CYSELF_2393,
      O => CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_CYMUXF2_2388
    );
  CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X67Y38",
      PATHPULSE => 638 ps
    )
    port map (
      I => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_addsub0000_cy_3_Q,
      O => CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_CYINIT_2406
    );
  CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X67Y38",
      PATHPULSE => 638 ps
    )
    port map (
      I => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000(4),
      O => CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_CYSELF_2393
    );
  CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y38",
      PATHPULSE => 638 ps
    )
    port map (
      I => CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_XORG_2395,
      O => PVF_VECTOR_FILTERED_addsub0000_5_Q
    );
  CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X67Y38"
    )
    port map (
      I0 => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_addsub0000_cy_4_Q,
      I1 => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000(5),
      O => CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_XORG_2395
    );
  CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y38",
      PATHPULSE => 638 ps
    )
    port map (
      I => CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_CYMUXFAST_2392,
      O => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_addsub0000_cy_5_Q
    );
  CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X67Y38",
      PATHPULSE => 638 ps
    )
    port map (
      I => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_addsub0000_cy_3_Q,
      O => CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_FASTCARRY_2390
    );
  CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X67Y38"
    )
    port map (
      I0 => CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_CYSELG_2378,
      I1 => CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_CYSELF_2393,
      O => CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_CYAND_2391
    );
  CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X67Y38"
    )
    port map (
      IA => CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_CYMUXG2_2389,
      IB => CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_FASTCARRY_2390,
      SEL => CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_CYAND_2391,
      O => CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_CYMUXFAST_2392
    );
  CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y38"
    )
    port map (
      IA => CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_LOGIC_ZERO_2387,
      IB => CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_CYMUXF2_2388,
      SEL => CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_CYSELG_2378,
      O => CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_CYMUXG2_2389
    );
  CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X67Y38",
      PATHPULSE => 638 ps
    )
    port map (
      I => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000(5),
      O => CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_4_CYSELG_2378
    );
  CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000_5_1_INV_0 : X_LUT4
    generic map(
      INIT => X"5555",
      LOC => "SLICE_X67Y38"
    )
    port map (
      ADR0 => outReg(5),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000(5)
    );
  PVF_VECTOR_FILTERED_addsub0000_6_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X67Y39"
    )
    port map (
      O => PVF_VECTOR_FILTERED_addsub0000_6_LOGIC_ZERO_2425
    );
  PVF_VECTOR_FILTERED_addsub0000_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y39",
      PATHPULSE => 638 ps
    )
    port map (
      I => PVF_VECTOR_FILTERED_addsub0000_6_XORF_2445,
      O => PVF_VECTOR_FILTERED_addsub0000_6_Q
    );
  PVF_VECTOR_FILTERED_addsub0000_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X67Y39"
    )
    port map (
      I0 => PVF_VECTOR_FILTERED_addsub0000_6_CYINIT_2444,
      I1 => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000(6),
      O => PVF_VECTOR_FILTERED_addsub0000_6_XORF_2445
    );
  PVF_VECTOR_FILTERED_addsub0000_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X67Y39"
    )
    port map (
      IA => PVF_VECTOR_FILTERED_addsub0000_6_LOGIC_ZERO_2425,
      IB => PVF_VECTOR_FILTERED_addsub0000_6_CYINIT_2444,
      SEL => PVF_VECTOR_FILTERED_addsub0000_6_CYSELF_2431,
      O => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_addsub0000_cy_6_Q
    );
  PVF_VECTOR_FILTERED_addsub0000_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y39"
    )
    port map (
      IA => PVF_VECTOR_FILTERED_addsub0000_6_LOGIC_ZERO_2425,
      IB => PVF_VECTOR_FILTERED_addsub0000_6_LOGIC_ZERO_2425,
      SEL => PVF_VECTOR_FILTERED_addsub0000_6_CYSELF_2431,
      O => PVF_VECTOR_FILTERED_addsub0000_6_CYMUXF2_2426
    );
  PVF_VECTOR_FILTERED_addsub0000_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X67Y39",
      PATHPULSE => 638 ps
    )
    port map (
      I => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_addsub0000_cy_5_Q,
      O => PVF_VECTOR_FILTERED_addsub0000_6_CYINIT_2444
    );
  PVF_VECTOR_FILTERED_addsub0000_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X67Y39",
      PATHPULSE => 638 ps
    )
    port map (
      I => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000(6),
      O => PVF_VECTOR_FILTERED_addsub0000_6_CYSELF_2431
    );
  PVF_VECTOR_FILTERED_addsub0000_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y39",
      PATHPULSE => 638 ps
    )
    port map (
      I => PVF_VECTOR_FILTERED_addsub0000_6_XORG_2433,
      O => PVF_VECTOR_FILTERED_addsub0000_7_Q
    );
  PVF_VECTOR_FILTERED_addsub0000_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X67Y39"
    )
    port map (
      I0 => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_addsub0000_cy_6_Q,
      I1 => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000(7),
      O => PVF_VECTOR_FILTERED_addsub0000_6_XORG_2433
    );
  PVF_VECTOR_FILTERED_addsub0000_6_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y39",
      PATHPULSE => 638 ps
    )
    port map (
      I => PVF_VECTOR_FILTERED_addsub0000_6_CYMUXFAST_2430,
      O => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_addsub0000_cy_7_Q
    );
  PVF_VECTOR_FILTERED_addsub0000_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X67Y39",
      PATHPULSE => 638 ps
    )
    port map (
      I => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_addsub0000_cy_5_Q,
      O => PVF_VECTOR_FILTERED_addsub0000_6_FASTCARRY_2428
    );
  PVF_VECTOR_FILTERED_addsub0000_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X67Y39"
    )
    port map (
      I0 => PVF_VECTOR_FILTERED_addsub0000_6_CYSELG_2416,
      I1 => PVF_VECTOR_FILTERED_addsub0000_6_CYSELF_2431,
      O => PVF_VECTOR_FILTERED_addsub0000_6_CYAND_2429
    );
  PVF_VECTOR_FILTERED_addsub0000_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X67Y39"
    )
    port map (
      IA => PVF_VECTOR_FILTERED_addsub0000_6_CYMUXG2_2427,
      IB => PVF_VECTOR_FILTERED_addsub0000_6_FASTCARRY_2428,
      SEL => PVF_VECTOR_FILTERED_addsub0000_6_CYAND_2429,
      O => PVF_VECTOR_FILTERED_addsub0000_6_CYMUXFAST_2430
    );
  PVF_VECTOR_FILTERED_addsub0000_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y39"
    )
    port map (
      IA => PVF_VECTOR_FILTERED_addsub0000_6_LOGIC_ZERO_2425,
      IB => PVF_VECTOR_FILTERED_addsub0000_6_CYMUXF2_2426,
      SEL => PVF_VECTOR_FILTERED_addsub0000_6_CYSELG_2416,
      O => PVF_VECTOR_FILTERED_addsub0000_6_CYMUXG2_2427
    );
  PVF_VECTOR_FILTERED_addsub0000_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X67Y39",
      PATHPULSE => 638 ps
    )
    port map (
      I => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000(7),
      O => PVF_VECTOR_FILTERED_addsub0000_6_CYSELG_2416
    );
  CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000_7_1_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X67Y39"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => outReg(7),
      O => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000(7)
    );
  PVF_VECTOR_FILTERED_addsub0000_8_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X67Y40"
    )
    port map (
      O => PVF_VECTOR_FILTERED_addsub0000_8_LOGIC_ZERO_2463
    );
  PVF_VECTOR_FILTERED_addsub0000_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y40",
      PATHPULSE => 638 ps
    )
    port map (
      I => PVF_VECTOR_FILTERED_addsub0000_8_XORF_2483,
      O => PVF_VECTOR_FILTERED_addsub0000_8_Q
    );
  PVF_VECTOR_FILTERED_addsub0000_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X67Y40"
    )
    port map (
      I0 => PVF_VECTOR_FILTERED_addsub0000_8_CYINIT_2482,
      I1 => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000(8),
      O => PVF_VECTOR_FILTERED_addsub0000_8_XORF_2483
    );
  PVF_VECTOR_FILTERED_addsub0000_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X67Y40"
    )
    port map (
      IA => PVF_VECTOR_FILTERED_addsub0000_8_LOGIC_ZERO_2463,
      IB => PVF_VECTOR_FILTERED_addsub0000_8_CYINIT_2482,
      SEL => PVF_VECTOR_FILTERED_addsub0000_8_CYSELF_2469,
      O => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_addsub0000_cy_8_Q
    );
  PVF_VECTOR_FILTERED_addsub0000_8_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y40"
    )
    port map (
      IA => PVF_VECTOR_FILTERED_addsub0000_8_LOGIC_ZERO_2463,
      IB => PVF_VECTOR_FILTERED_addsub0000_8_LOGIC_ZERO_2463,
      SEL => PVF_VECTOR_FILTERED_addsub0000_8_CYSELF_2469,
      O => PVF_VECTOR_FILTERED_addsub0000_8_CYMUXF2_2464
    );
  PVF_VECTOR_FILTERED_addsub0000_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X67Y40",
      PATHPULSE => 638 ps
    )
    port map (
      I => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_addsub0000_cy_7_Q,
      O => PVF_VECTOR_FILTERED_addsub0000_8_CYINIT_2482
    );
  PVF_VECTOR_FILTERED_addsub0000_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X67Y40",
      PATHPULSE => 638 ps
    )
    port map (
      I => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000(8),
      O => PVF_VECTOR_FILTERED_addsub0000_8_CYSELF_2469
    );
  PVF_VECTOR_FILTERED_addsub0000_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y40",
      PATHPULSE => 638 ps
    )
    port map (
      I => PVF_VECTOR_FILTERED_addsub0000_8_XORG_2471,
      O => PVF_VECTOR_FILTERED_addsub0000_9_Q
    );
  PVF_VECTOR_FILTERED_addsub0000_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X67Y40"
    )
    port map (
      I0 => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_addsub0000_cy_8_Q,
      I1 => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000(9),
      O => PVF_VECTOR_FILTERED_addsub0000_8_XORG_2471
    );
  PVF_VECTOR_FILTERED_addsub0000_8_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y40",
      PATHPULSE => 638 ps
    )
    port map (
      I => PVF_VECTOR_FILTERED_addsub0000_8_CYMUXFAST_2468,
      O => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_addsub0000_cy_9_Q
    );
  PVF_VECTOR_FILTERED_addsub0000_8_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X67Y40",
      PATHPULSE => 638 ps
    )
    port map (
      I => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_addsub0000_cy_7_Q,
      O => PVF_VECTOR_FILTERED_addsub0000_8_FASTCARRY_2466
    );
  PVF_VECTOR_FILTERED_addsub0000_8_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X67Y40"
    )
    port map (
      I0 => PVF_VECTOR_FILTERED_addsub0000_8_CYSELG_2454,
      I1 => PVF_VECTOR_FILTERED_addsub0000_8_CYSELF_2469,
      O => PVF_VECTOR_FILTERED_addsub0000_8_CYAND_2467
    );
  PVF_VECTOR_FILTERED_addsub0000_8_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X67Y40"
    )
    port map (
      IA => PVF_VECTOR_FILTERED_addsub0000_8_CYMUXG2_2465,
      IB => PVF_VECTOR_FILTERED_addsub0000_8_FASTCARRY_2466,
      SEL => PVF_VECTOR_FILTERED_addsub0000_8_CYAND_2467,
      O => PVF_VECTOR_FILTERED_addsub0000_8_CYMUXFAST_2468
    );
  PVF_VECTOR_FILTERED_addsub0000_8_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y40"
    )
    port map (
      IA => PVF_VECTOR_FILTERED_addsub0000_8_LOGIC_ZERO_2463,
      IB => PVF_VECTOR_FILTERED_addsub0000_8_CYMUXF2_2464,
      SEL => PVF_VECTOR_FILTERED_addsub0000_8_CYSELG_2454,
      O => PVF_VECTOR_FILTERED_addsub0000_8_CYMUXG2_2465
    );
  PVF_VECTOR_FILTERED_addsub0000_8_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X67Y40",
      PATHPULSE => 638 ps
    )
    port map (
      I => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000(9),
      O => PVF_VECTOR_FILTERED_addsub0000_8_CYSELG_2454
    );
  CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000_9_1_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X67Y40"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => outReg(9),
      O => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000(9)
    );
  PVF_VECTOR_FILTERED_addsub0000_10_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X67Y41"
    )
    port map (
      O => PVF_VECTOR_FILTERED_addsub0000_10_LOGIC_ZERO_2501
    );
  PVF_VECTOR_FILTERED_addsub0000_10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y41",
      PATHPULSE => 638 ps
    )
    port map (
      I => PVF_VECTOR_FILTERED_addsub0000_10_XORF_2521,
      O => PVF_VECTOR_FILTERED_addsub0000_10_Q
    );
  PVF_VECTOR_FILTERED_addsub0000_10_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X67Y41"
    )
    port map (
      I0 => PVF_VECTOR_FILTERED_addsub0000_10_CYINIT_2520,
      I1 => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000(10),
      O => PVF_VECTOR_FILTERED_addsub0000_10_XORF_2521
    );
  PVF_VECTOR_FILTERED_addsub0000_10_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X67Y41"
    )
    port map (
      IA => PVF_VECTOR_FILTERED_addsub0000_10_LOGIC_ZERO_2501,
      IB => PVF_VECTOR_FILTERED_addsub0000_10_CYINIT_2520,
      SEL => PVF_VECTOR_FILTERED_addsub0000_10_CYSELF_2507,
      O => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_addsub0000_cy_10_Q
    );
  PVF_VECTOR_FILTERED_addsub0000_10_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y41"
    )
    port map (
      IA => PVF_VECTOR_FILTERED_addsub0000_10_LOGIC_ZERO_2501,
      IB => PVF_VECTOR_FILTERED_addsub0000_10_LOGIC_ZERO_2501,
      SEL => PVF_VECTOR_FILTERED_addsub0000_10_CYSELF_2507,
      O => PVF_VECTOR_FILTERED_addsub0000_10_CYMUXF2_2502
    );
  PVF_VECTOR_FILTERED_addsub0000_10_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X67Y41",
      PATHPULSE => 638 ps
    )
    port map (
      I => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_addsub0000_cy_9_Q,
      O => PVF_VECTOR_FILTERED_addsub0000_10_CYINIT_2520
    );
  PVF_VECTOR_FILTERED_addsub0000_10_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X67Y41",
      PATHPULSE => 638 ps
    )
    port map (
      I => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000(10),
      O => PVF_VECTOR_FILTERED_addsub0000_10_CYSELF_2507
    );
  PVF_VECTOR_FILTERED_addsub0000_10_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y41",
      PATHPULSE => 638 ps
    )
    port map (
      I => PVF_VECTOR_FILTERED_addsub0000_10_XORG_2509,
      O => PVF_VECTOR_FILTERED_addsub0000_11_Q
    );
  PVF_VECTOR_FILTERED_addsub0000_10_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X67Y41"
    )
    port map (
      I0 => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_addsub0000_cy_10_Q,
      I1 => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000(11),
      O => PVF_VECTOR_FILTERED_addsub0000_10_XORG_2509
    );
  PVF_VECTOR_FILTERED_addsub0000_10_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y41",
      PATHPULSE => 638 ps
    )
    port map (
      I => PVF_VECTOR_FILTERED_addsub0000_10_CYMUXFAST_2506,
      O => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_addsub0000_cy_11_Q
    );
  PVF_VECTOR_FILTERED_addsub0000_10_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X67Y41",
      PATHPULSE => 638 ps
    )
    port map (
      I => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_addsub0000_cy_9_Q,
      O => PVF_VECTOR_FILTERED_addsub0000_10_FASTCARRY_2504
    );
  PVF_VECTOR_FILTERED_addsub0000_10_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X67Y41"
    )
    port map (
      I0 => PVF_VECTOR_FILTERED_addsub0000_10_CYSELG_2492,
      I1 => PVF_VECTOR_FILTERED_addsub0000_10_CYSELF_2507,
      O => PVF_VECTOR_FILTERED_addsub0000_10_CYAND_2505
    );
  PVF_VECTOR_FILTERED_addsub0000_10_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X67Y41"
    )
    port map (
      IA => PVF_VECTOR_FILTERED_addsub0000_10_CYMUXG2_2503,
      IB => PVF_VECTOR_FILTERED_addsub0000_10_FASTCARRY_2504,
      SEL => PVF_VECTOR_FILTERED_addsub0000_10_CYAND_2505,
      O => PVF_VECTOR_FILTERED_addsub0000_10_CYMUXFAST_2506
    );
  PVF_VECTOR_FILTERED_addsub0000_10_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y41"
    )
    port map (
      IA => PVF_VECTOR_FILTERED_addsub0000_10_LOGIC_ZERO_2501,
      IB => PVF_VECTOR_FILTERED_addsub0000_10_CYMUXF2_2502,
      SEL => PVF_VECTOR_FILTERED_addsub0000_10_CYSELG_2492,
      O => PVF_VECTOR_FILTERED_addsub0000_10_CYMUXG2_2503
    );
  PVF_VECTOR_FILTERED_addsub0000_10_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X67Y41",
      PATHPULSE => 638 ps
    )
    port map (
      I => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000(11),
      O => PVF_VECTOR_FILTERED_addsub0000_10_CYSELG_2492
    );
  CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000_11_1_INV_0 : X_LUT4
    generic map(
      INIT => X"0F0F",
      LOC => "SLICE_X67Y41"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => outReg(11),
      ADR3 => VCC,
      O => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000(11)
    );
  PVF_VECTOR_FILTERED_addsub0000_12_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X67Y42"
    )
    port map (
      O => PVF_VECTOR_FILTERED_addsub0000_12_LOGIC_ZERO_2539
    );
  PVF_VECTOR_FILTERED_addsub0000_12_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y42",
      PATHPULSE => 638 ps
    )
    port map (
      I => PVF_VECTOR_FILTERED_addsub0000_12_XORF_2559,
      O => PVF_VECTOR_FILTERED_addsub0000_12_Q
    );
  PVF_VECTOR_FILTERED_addsub0000_12_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X67Y42"
    )
    port map (
      I0 => PVF_VECTOR_FILTERED_addsub0000_12_CYINIT_2558,
      I1 => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000(12),
      O => PVF_VECTOR_FILTERED_addsub0000_12_XORF_2559
    );
  PVF_VECTOR_FILTERED_addsub0000_12_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X67Y42"
    )
    port map (
      IA => PVF_VECTOR_FILTERED_addsub0000_12_LOGIC_ZERO_2539,
      IB => PVF_VECTOR_FILTERED_addsub0000_12_CYINIT_2558,
      SEL => PVF_VECTOR_FILTERED_addsub0000_12_CYSELF_2545,
      O => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_addsub0000_cy_12_Q
    );
  PVF_VECTOR_FILTERED_addsub0000_12_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y42"
    )
    port map (
      IA => PVF_VECTOR_FILTERED_addsub0000_12_LOGIC_ZERO_2539,
      IB => PVF_VECTOR_FILTERED_addsub0000_12_LOGIC_ZERO_2539,
      SEL => PVF_VECTOR_FILTERED_addsub0000_12_CYSELF_2545,
      O => PVF_VECTOR_FILTERED_addsub0000_12_CYMUXF2_2540
    );
  PVF_VECTOR_FILTERED_addsub0000_12_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X67Y42",
      PATHPULSE => 638 ps
    )
    port map (
      I => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_addsub0000_cy_11_Q,
      O => PVF_VECTOR_FILTERED_addsub0000_12_CYINIT_2558
    );
  PVF_VECTOR_FILTERED_addsub0000_12_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X67Y42",
      PATHPULSE => 638 ps
    )
    port map (
      I => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000(12),
      O => PVF_VECTOR_FILTERED_addsub0000_12_CYSELF_2545
    );
  PVF_VECTOR_FILTERED_addsub0000_12_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y42",
      PATHPULSE => 638 ps
    )
    port map (
      I => PVF_VECTOR_FILTERED_addsub0000_12_XORG_2547,
      O => PVF_VECTOR_FILTERED_addsub0000_13_Q
    );
  PVF_VECTOR_FILTERED_addsub0000_12_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X67Y42"
    )
    port map (
      I0 => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_addsub0000_cy_12_Q,
      I1 => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000(13),
      O => PVF_VECTOR_FILTERED_addsub0000_12_XORG_2547
    );
  PVF_VECTOR_FILTERED_addsub0000_12_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X67Y42",
      PATHPULSE => 638 ps
    )
    port map (
      I => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_addsub0000_cy_11_Q,
      O => PVF_VECTOR_FILTERED_addsub0000_12_FASTCARRY_2542
    );
  PVF_VECTOR_FILTERED_addsub0000_12_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X67Y42"
    )
    port map (
      I0 => PVF_VECTOR_FILTERED_addsub0000_12_CYSELG_2530,
      I1 => PVF_VECTOR_FILTERED_addsub0000_12_CYSELF_2545,
      O => PVF_VECTOR_FILTERED_addsub0000_12_CYAND_2543
    );
  PVF_VECTOR_FILTERED_addsub0000_12_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X67Y42"
    )
    port map (
      IA => PVF_VECTOR_FILTERED_addsub0000_12_CYMUXG2_2541,
      IB => PVF_VECTOR_FILTERED_addsub0000_12_FASTCARRY_2542,
      SEL => PVF_VECTOR_FILTERED_addsub0000_12_CYAND_2543,
      O => PVF_VECTOR_FILTERED_addsub0000_12_CYMUXFAST_2544
    );
  PVF_VECTOR_FILTERED_addsub0000_12_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y42"
    )
    port map (
      IA => PVF_VECTOR_FILTERED_addsub0000_12_LOGIC_ZERO_2539,
      IB => PVF_VECTOR_FILTERED_addsub0000_12_CYMUXF2_2540,
      SEL => PVF_VECTOR_FILTERED_addsub0000_12_CYSELG_2530,
      O => PVF_VECTOR_FILTERED_addsub0000_12_CYMUXG2_2541
    );
  PVF_VECTOR_FILTERED_addsub0000_12_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X67Y42",
      PATHPULSE => 638 ps
    )
    port map (
      I => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000(13),
      O => PVF_VECTOR_FILTERED_addsub0000_12_CYSELG_2530
    );
  CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000_13_1_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X67Y42"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => outReg(13),
      O => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000(13)
    );
  PVF_VECTOR_FILTERED_addsub0000_14_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X67Y43"
    )
    port map (
      O => PVF_VECTOR_FILTERED_addsub0000_14_LOGIC_ZERO_2589
    );
  PVF_VECTOR_FILTERED_addsub0000_14_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y43",
      PATHPULSE => 638 ps
    )
    port map (
      I => PVF_VECTOR_FILTERED_addsub0000_14_XORF_2590,
      O => PVF_VECTOR_FILTERED_addsub0000_14_Q
    );
  PVF_VECTOR_FILTERED_addsub0000_14_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X67Y43"
    )
    port map (
      I0 => PVF_VECTOR_FILTERED_addsub0000_14_CYINIT_2588,
      I1 => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000(14),
      O => PVF_VECTOR_FILTERED_addsub0000_14_XORF_2590
    );
  PVF_VECTOR_FILTERED_addsub0000_14_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X67Y43"
    )
    port map (
      IA => PVF_VECTOR_FILTERED_addsub0000_14_LOGIC_ZERO_2589,
      IB => PVF_VECTOR_FILTERED_addsub0000_14_CYINIT_2588,
      SEL => PVF_VECTOR_FILTERED_addsub0000_14_CYSELF_2579,
      O => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_addsub0000_cy_14_Q
    );
  PVF_VECTOR_FILTERED_addsub0000_14_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X67Y43",
      PATHPULSE => 638 ps
    )
    port map (
      I => PVF_VECTOR_FILTERED_addsub0000_12_CYMUXFAST_2544,
      O => PVF_VECTOR_FILTERED_addsub0000_14_CYINIT_2588
    );
  PVF_VECTOR_FILTERED_addsub0000_14_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X67Y43",
      PATHPULSE => 638 ps
    )
    port map (
      I => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000(14),
      O => PVF_VECTOR_FILTERED_addsub0000_14_CYSELF_2579
    );
  PVF_VECTOR_FILTERED_addsub0000_14_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y43",
      PATHPULSE => 638 ps
    )
    port map (
      I => PVF_VECTOR_FILTERED_addsub0000_14_XORG_2576,
      O => PVF_VECTOR_FILTERED_addsub0000_15_Q
    );
  PVF_VECTOR_FILTERED_addsub0000_14_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X67Y43"
    )
    port map (
      I0 => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_addsub0000_cy_14_Q,
      I1 => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000(15),
      O => PVF_VECTOR_FILTERED_addsub0000_14_XORG_2576
    );
  CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000_15_1_INV_0 : X_LUT4
    generic map(
      INIT => X"0F0F",
      LOC => "SLICE_X67Y43"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => outReg(15),
      ADR3 => VCC,
      O => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000(15)
    );
  LNA_REGLIST_9_IBUF : X_BUF
    generic map(
      LOC => "IPAD88",
      PATHPULSE => 638 ps
    )
    port map (
      I => LNA_REGLIST_1(9),
      O => LNA_REGLIST_9_INBUF
    );
  LNA_REGLIST_9_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD88",
      PATHPULSE => 638 ps
    )
    port map (
      I => LNA_REGLIST_9_INBUF,
      O => LNA_REGLIST_9_IBUF_766
    );
  SYS_RST_IBUF : X_BUF
    generic map(
      LOC => "PAD105",
      PATHPULSE => 638 ps
    )
    port map (
      I => SYS_RST,
      O => SYS_RST_INBUF
    );
  SYS_RST_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD105",
      PATHPULSE => 638 ps
    )
    port map (
      I => SYS_RST_INBUF,
      O => SYS_RST_IBUF_759
    );
  LNA_CURRENT_REGLIST_REG_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD111"
    )
    port map (
      I => LNA_CURRENT_REGLIST_REG_10_O,
      O => LNA_CURRENT_REGLIST_REG_0(10)
    );
  outReg_6_mux00001 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X66Y38"
    )
    port map (
      ADR0 => VCC,
      ADR1 => LNA_LOAD_REGLIST_IBUF_653,
      ADR2 => VCC,
      ADR3 => LNA_REGLIST_6_IBUF_680,
      O => outReg_6_mux0000
    );
  outReg_6 : X_FF
    generic map(
      LOC => "SLICE_X66Y38",
      INIT => '0'
    )
    port map (
      I => outReg_6_DYMUX_1806,
      CE => outReg_6_CEINV_1795,
      CLK => outReg_6_CLKINV_1796,
      SET => GND,
      RST => GND,
      O => outReg(6)
    );
  outReg_7_mux00001 : X_LUT4
    generic map(
      INIT => X"A0A0",
      LOC => "SLICE_X66Y49"
    )
    port map (
      ADR0 => LNA_REGLIST_7_IBUF_681,
      ADR1 => VCC,
      ADR2 => LNA_LOAD_REGLIST_IBUF_653,
      ADR3 => VCC,
      O => outReg_7_mux0000
    );
  outReg_7 : X_FF
    generic map(
      LOC => "SLICE_X66Y49",
      INIT => '0'
    )
    port map (
      I => outReg_7_DYMUX_1827,
      CE => outReg_7_CEINV_1816,
      CLK => outReg_7_CLKINV_1817,
      SET => GND,
      RST => GND,
      O => outReg(7)
    );
  outReg_8_mux00001 : X_LUT4
    generic map(
      INIT => X"F000",
      LOC => "SLICE_X65Y47"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => LNA_REGLIST_8_IBUF_682,
      ADR3 => LNA_LOAD_REGLIST_IBUF_653,
      O => outReg_8_mux0000
    );
  outReg_8 : X_FF
    generic map(
      LOC => "SLICE_X65Y47",
      INIT => '0'
    )
    port map (
      I => outReg_8_DYMUX_1848,
      CE => outReg_8_CEINV_1837,
      CLK => outReg_8_CLKINV_1838,
      SET => GND,
      RST => GND,
      O => outReg(8)
    );
  outReg_9_mux00001 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X65Y44"
    )
    port map (
      ADR0 => VCC,
      ADR1 => LNA_LOAD_REGLIST_IBUF_653,
      ADR2 => VCC,
      ADR3 => LNA_REGLIST_9_IBUF_766,
      O => outReg_9_mux0000
    );
  outReg_9 : X_FF
    generic map(
      LOC => "SLICE_X65Y44",
      INIT => '0'
    )
    port map (
      I => outReg_9_DYMUX_1869,
      CE => outReg_9_CEINV_1858,
      CLK => outReg_9_CLKINV_1859,
      SET => GND,
      RST => GND,
      O => outReg(9)
    );
  outReg_10_mux00001 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X65Y41"
    )
    port map (
      ADR0 => VCC,
      ADR1 => LNA_LOAD_REGLIST_IBUF_653,
      ADR2 => VCC,
      ADR3 => LNA_REGLIST_10_IBUF_662,
      O => outReg_10_mux0000
    );
  outReg_10 : X_FF
    generic map(
      LOC => "SLICE_X65Y41",
      INIT => '0'
    )
    port map (
      I => outReg_10_DYMUX_1890,
      CE => outReg_10_CEINV_1879,
      CLK => outReg_10_CLKINV_1880,
      SET => GND,
      RST => GND,
      O => outReg(10)
    );
  outReg_11_mux00001 : X_LUT4
    generic map(
      INIT => X"A0A0",
      LOC => "SLICE_X67Y31"
    )
    port map (
      ADR0 => LNA_REGLIST_11_IBUF_664,
      ADR1 => VCC,
      ADR2 => LNA_LOAD_REGLIST_IBUF_653,
      ADR3 => VCC,
      O => outReg_11_mux0000
    );
  outReg_11 : X_FF
    generic map(
      LOC => "SLICE_X67Y31",
      INIT => '0'
    )
    port map (
      I => outReg_11_DYMUX_1911,
      CE => outReg_11_CEINV_1900,
      CLK => outReg_11_CLKINV_1901,
      SET => GND,
      RST => GND,
      O => outReg(11)
    );
  outReg_12_mux00001 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X66Y43"
    )
    port map (
      ADR0 => VCC,
      ADR1 => LNA_REGLIST_12_IBUF_666,
      ADR2 => VCC,
      ADR3 => LNA_LOAD_REGLIST_IBUF_653,
      O => outReg_12_mux0000
    );
  highprio_2_2_SW1 : X_LUT4
    generic map(
      INIT => X"FFEC",
      LOC => "SLICE_X64Y36"
    )
    port map (
      ADR0 => outReg(8),
      ADR1 => fuckingPrio_0_0,
      ADR2 => PVF_VECTOR_FILTERED_addsub0000_8_Q,
      ADR3 => fuckingPrio(1),
      O => N101
    );
  highprio_0_4_SW0 : X_LUT4
    generic map(
      INIT => X"FCF0",
      LOC => "SLICE_X66Y39"
    )
    port map (
      ADR0 => VCC,
      ADR1 => outReg(15),
      ADR2 => N22,
      ADR3 => PVF_VECTOR_FILTERED_addsub0000_15_Q,
      O => N01
    );
  highprio_2_104 : X_LUT4
    generic map(
      INIT => X"A8A0",
      LOC => "SLICE_X65Y40"
    )
    port map (
      ADR0 => N28,
      ADR1 => highprio_2_78_0,
      ADR2 => N81_0,
      ADR3 => highprio_2_62_0,
      O => LNA_ADDRESS_2_OBUF_1550
    );
  highprio_3_62 : X_LUT4
    generic map(
      INIT => X"0116",
      LOC => "SLICE_X66Y41"
    )
    port map (
      ADR0 => fuckingPrio(14),
      ADR1 => fuckingPrio(8),
      ADR2 => fuckingPrio(10),
      ADR3 => fuckingPrio(12),
      O => highprio_3_62_1574
    );
  highprio_2_78 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X67Y44"
    )
    port map (
      ADR0 => fuckingPrio_6_0,
      ADR1 => fuckingPrio(15),
      ADR2 => fuckingPrio(7),
      ADR3 => fuckingPrio(14),
      O => highprio_2_78_1598
    );
  highprio_1_345 : X_LUT4
    generic map(
      INIT => X"0007",
      LOC => "SLICE_X66Y44"
    )
    port map (
      ADR0 => outReg(7),
      ADR1 => PVF_VECTOR_FILTERED_addsub0000_7_Q,
      ADR2 => fuckingPrio_6_0,
      ADR3 => highprio_1_345_SW0_O,
      O => highprio_1_345_1622
    );
  highprio_3_75 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X64Y38"
    )
    port map (
      ADR0 => fuckingPrio(3),
      ADR1 => fuckingPrio(1),
      ADR2 => fuckingPrio(7),
      ADR3 => fuckingPrio(5),
      O => highprio_3_75_1646
    );
  highprio_0_393_SW0 : X_LUT4
    generic map(
      INIT => X"A0FF",
      LOC => "SLICE_X67Y47"
    )
    port map (
      ADR0 => PVF_VECTOR_FILTERED_addsub0000_14_Q,
      ADR1 => VCC,
      ADR2 => outReg(14),
      ADR3 => highprio_0_366_O,
      O => N4
    );
  highprio_1_388_SW0 : X_LUT4
    generic map(
      INIT => X"AA88",
      LOC => "SLICE_X65Y43"
    )
    port map (
      ADR0 => highprio_1_378_0,
      ADR1 => highprio_1_322_691,
      ADR2 => VCC,
      ADR3 => highprio_1_345_0,
      O => N81
    );
  outReg_3_not00011 : X_LUT4
    generic map(
      INIT => X"F8F0",
      LOC => "SLICE_X65Y35"
    )
    port map (
      ADR0 => LNA_ADDRESS_0_OBUF_0,
      ADR1 => LNA_ADDRESS_1_OBUF_0,
      ADR2 => N14_0,
      ADR3 => N13,
      O => outReg_3_not0001
    );
  highprio_0_4_SW1_SW0 : X_LUT4
    generic map(
      INIT => X"FFFB",
      LOC => "SLICE_X65Y39"
    )
    port map (
      ADR0 => fuckingPrio(4),
      ADR1 => highprio_1_66_0,
      ADR2 => fuckingPrio_0_0,
      ADR3 => fuckingPrio(9),
      O => N281
    );
  outReg_9_not00011 : X_LUT4
    generic map(
      INIT => X"CECC",
      LOC => "SLICE_X64Y44"
    )
    port map (
      ADR0 => LNA_ADDRESS_0_OBUF_0,
      ADR1 => N14_0,
      ADR2 => LNA_ADDRESS_1_OBUF_0,
      ADR3 => N12,
      O => outReg_9_not0001
    );
  highprio_0_380 : X_LUT4
    generic map(
      INIT => X"0007",
      LOC => "SLICE_X64Y42"
    )
    port map (
      ADR0 => outReg(12),
      ADR1 => PVF_VECTOR_FILTERED_addsub0000_12_Q,
      ADR2 => fuckingPrio(4),
      ADR3 => fuckingPrio(5),
      O => highprio_0_380_1358
    );
  highprio_1_117 : X_LUT4
    generic map(
      INIT => X"FAF8",
      LOC => "SLICE_X64Y43"
    )
    port map (
      ADR0 => highprio_1_93_0,
      ADR1 => highprio_1_22_0,
      ADR2 => highprio_1_388_O,
      ADR3 => highprio_1_45_0,
      O => LNA_ADDRESS_1_OBUF_1382
    );
  highprio_1_93 : X_LUT4
    generic map(
      INIT => X"0010",
      LOC => "SLICE_X64Y41"
    )
    port map (
      ADR0 => N281_0,
      ADR1 => fuckingPrio(14),
      ADR2 => highprio_1_80_O,
      ADR3 => N01_0,
      O => highprio_1_93_1406
    );
  highprio_2_62 : X_LUT4
    generic map(
      INIT => X"0116",
      LOC => "SLICE_X64Y40"
    )
    port map (
      ADR0 => fuckingPrio(4),
      ADR1 => fuckingPrio(5),
      ADR2 => fuckingPrio_13_0,
      ADR3 => fuckingPrio(12),
      O => highprio_2_62_1430
    );
  highprio_2_2_SW0 : X_LUT4
    generic map(
      INIT => X"FEFC",
      LOC => "SLICE_X65Y36"
    )
    port map (
      ADR0 => outReg(9),
      ADR1 => fuckingPrio(2),
      ADR2 => fuckingPrio(3),
      ADR3 => PVF_VECTOR_FILTERED_addsub0000_9_Q,
      O => N141
    );
  highprio_0_51_SW0 : X_LUT4
    generic map(
      INIT => X"FFEA",
      LOC => "SLICE_X67Y33"
    )
    port map (
      ADR0 => fuckingPrio_0_0,
      ADR1 => outReg(2),
      ADR2 => PVF_VECTOR_FILTERED_addsub0000_2_Q,
      ADR3 => fuckingPrio(4),
      O => N61
    );
  highprio_0_51 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X66Y40"
    )
    port map (
      ADR0 => N61_0,
      ADR1 => highprio_0_51_SW1_O,
      ADR2 => N22,
      ADR3 => fuckingPrio(9),
      O => N29
    );
  highprio_1_22 : X_LUT4
    generic map(
      INIT => X"0014",
      LOC => "SLICE_X66Y42"
    )
    port map (
      ADR0 => fuckingPrio(10),
      ADR1 => fuckingPrio(3),
      ADR2 => fuckingPrio(2),
      ADR3 => fuckingPrio(11),
      O => highprio_1_22_1214
    );
  highprio_0_75 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X67Y29"
    )
    port map (
      ADR0 => fuckingPrio(12),
      ADR1 => fuckingPrio(14),
      ADR2 => fuckingPrio(10),
      ADR3 => fuckingPrio(8),
      O => highprio_0_75_1238
    );
  highprio_1_45 : X_LUT4
    generic map(
      INIT => X"0006",
      LOC => "SLICE_X64Y37"
    )
    port map (
      ADR0 => fuckingPrio(11),
      ADR1 => fuckingPrio(10),
      ADR2 => fuckingPrio(2),
      ADR3 => fuckingPrio(3),
      O => highprio_1_45_1262
    );
  highprio_0_3100 : X_LUT4
    generic map(
      INIT => X"4000",
      LOC => "SLICE_X66Y46"
    )
    port map (
      ADR0 => N4_0,
      ADR1 => highprio_0_362_0,
      ADR2 => highprio_0_380_0,
      ADR3 => highprio_2_2_O,
      O => N6
    );
  outReg_15_not00011 : X_LUT4
    generic map(
      INIT => X"ECCC",
      LOC => "SLICE_X64Y45"
    )
    port map (
      ADR0 => LNA_ADDRESS_0_OBUF_0,
      ADR1 => N14_0,
      ADR2 => N10,
      ADR3 => LNA_ADDRESS_1_OBUF_0,
      O => outReg_15_not0001
    );
  highprio_0_362 : X_LUT4
    generic map(
      INIT => X"0116",
      LOC => "SLICE_X66Y45"
    )
    port map (
      ADR0 => fuckingPrio(11),
      ADR1 => fuckingPrio_13_0,
      ADR2 => fuckingPrio(9),
      ADR3 => fuckingPrio(15),
      O => highprio_0_362_1334
    );
  highprio_0_107 : X_LUT4
    generic map(
      INIT => X"EAAA",
      LOC => "SLICE_X66Y47"
    )
    port map (
      ADR0 => N6_0,
      ADR1 => highprio_0_75_0,
      ADR2 => N29_0,
      ADR3 => highprio_0_62_0,
      O => LNA_ADDRESS_0_OBUF_2102
    );
  outReg_10_not00011 : X_LUT4
    generic map(
      INIT => X"DCCC",
      LOC => "SLICE_X64Y35"
    )
    port map (
      ADR0 => LNA_ADDRESS_0_OBUF_0,
      ADR1 => N14_0,
      ADR2 => LNA_ADDRESS_1_OBUF_0,
      ADR3 => N12,
      O => outReg_10_not0001
    );
  outReg_5_not00011 : X_LUT4
    generic map(
      INIT => X"F2F0",
      LOC => "SLICE_X67Y32"
    )
    port map (
      ADR0 => LNA_ADDRESS_0_OBUF_0,
      ADR1 => LNA_ADDRESS_1_OBUF_0,
      ADR2 => N14_0,
      ADR3 => N111,
      O => outReg_5_not0001
    );
  outReg_11_not00011 : X_LUT4
    generic map(
      INIT => X"EAAA",
      LOC => "SLICE_X67Y30"
    )
    port map (
      ADR0 => N14_0,
      ADR1 => LNA_ADDRESS_0_OBUF_0,
      ADR2 => LNA_ADDRESS_1_OBUF_0,
      ADR3 => N12,
      O => outReg_11_not0001
    );
  outReg_13_not00011 : X_LUT4
    generic map(
      INIT => X"CECC",
      LOC => "SLICE_X66Y33"
    )
    port map (
      ADR0 => N10,
      ADR1 => N14_0,
      ADR2 => LNA_ADDRESS_1_OBUF_0,
      ADR3 => LNA_ADDRESS_0_OBUF_0,
      O => outReg_13_not0001
    );
  outReg_14_not00011 : X_LUT4
    generic map(
      INIT => X"DCCC",
      LOC => "SLICE_X65Y46"
    )
    port map (
      ADR0 => LNA_ADDRESS_0_OBUF_0,
      ADR1 => N14_0,
      ADR2 => N10,
      ADR3 => LNA_ADDRESS_1_OBUF_0,
      O => outReg_14_not0001
    );
  highprio_1_378 : X_LUT4
    generic map(
      INIT => X"0007",
      LOC => "SLICE_X65Y42"
    )
    port map (
      ADR0 => outReg(13),
      ADR1 => PVF_VECTOR_FILTERED_addsub0000_13_Q,
      ADR2 => highprio_1_378_SW0_O,
      ADR3 => fuckingPrio(4),
      O => highprio_1_378_1670
    );
  outReg_1 : X_FF
    generic map(
      LOC => "SLICE_X67Y34",
      INIT => '0'
    )
    port map (
      I => outReg_1_DYMUX_1693,
      CE => outReg_1_CEINV_1682,
      CLK => outReg_1_CLKINV_1683,
      SET => GND,
      RST => GND,
      O => outReg(1)
    );
  outReg_0_not000121 : X_LUT4
    generic map(
      INIT => X"F4F4",
      LOC => "SLICE_X67Y34"
    )
    port map (
      ADR0 => LNA_HOLD_VALUE_IBUF_654,
      ADR1 => SYS_RST_IBUF_759,
      ADR2 => LNA_LOAD_REGLIST_IBUF_653,
      ADR3 => VCC,
      O => N14
    );
  outReg_2_mux00001 : X_LUT4
    generic map(
      INIT => X"A0A0",
      LOC => "SLICE_X65Y37"
    )
    port map (
      ADR0 => LNA_LOAD_REGLIST_IBUF_653,
      ADR1 => VCC,
      ADR2 => LNA_REGLIST_2_IBUF_676,
      ADR3 => VCC,
      O => outReg_2_mux0000
    );
  outReg_2 : X_FF
    generic map(
      LOC => "SLICE_X65Y37",
      INIT => '0'
    )
    port map (
      I => outReg_2_DYMUX_1722,
      CE => outReg_2_CEINV_1711,
      CLK => outReg_2_CLKINV_1712,
      SET => GND,
      RST => GND,
      O => outReg(2)
    );
  outReg_3_mux00001 : X_LUT4
    generic map(
      INIT => X"F000",
      LOC => "SLICE_X64Y34"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => LNA_LOAD_REGLIST_IBUF_653,
      ADR3 => LNA_REGLIST_3_IBUF_677,
      O => outReg_3_mux0000
    );
  outReg_3 : X_FF
    generic map(
      LOC => "SLICE_X64Y34",
      INIT => '0'
    )
    port map (
      I => outReg_3_DYMUX_1743,
      CE => outReg_3_CEINV_1732,
      CLK => outReg_3_CLKINV_1733,
      SET => GND,
      RST => GND,
      O => outReg(3)
    );
  outReg_4_mux00001 : X_LUT4
    generic map(
      INIT => X"8888",
      LOC => "SLICE_X66Y32"
    )
    port map (
      ADR0 => LNA_LOAD_REGLIST_IBUF_653,
      ADR1 => LNA_REGLIST_4_IBUF_678,
      ADR2 => VCC,
      ADR3 => VCC,
      O => outReg_4_mux0000
    );
  outReg_4 : X_FF
    generic map(
      LOC => "SLICE_X66Y32",
      INIT => '0'
    )
    port map (
      I => outReg_4_DYMUX_1764,
      CE => outReg_4_CEINV_1753,
      CLK => outReg_4_CLKINV_1754,
      SET => GND,
      RST => GND,
      O => outReg(4)
    );
  outReg_5_mux00001 : X_LUT4
    generic map(
      INIT => X"8888",
      LOC => "SLICE_X66Y36"
    )
    port map (
      ADR0 => LNA_REGLIST_5_IBUF_679,
      ADR1 => LNA_LOAD_REGLIST_IBUF_653,
      ADR2 => VCC,
      ADR3 => VCC,
      O => outReg_5_mux0000
    );
  outReg_5 : X_FF
    generic map(
      LOC => "SLICE_X66Y36",
      INIT => '0'
    )
    port map (
      I => outReg_5_DYMUX_1785,
      CE => outReg_5_CEINV_1774,
      CLK => outReg_5_CLKINV_1775,
      SET => GND,
      RST => GND,
      O => outReg(5)
    );
  outReg_12 : X_FF
    generic map(
      LOC => "SLICE_X66Y43",
      INIT => '0'
    )
    port map (
      I => outReg_12_DYMUX_1932,
      CE => outReg_12_CEINV_1921,
      CLK => outReg_12_CLKINV_1922,
      SET => GND,
      RST => GND,
      O => outReg(12)
    );
  outReg_13_mux00001 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X66Y31"
    )
    port map (
      ADR0 => VCC,
      ADR1 => LNA_LOAD_REGLIST_IBUF_653,
      ADR2 => VCC,
      ADR3 => LNA_REGLIST_13_IBUF_668,
      O => outReg_13_mux0000
    );
  outReg_13 : X_FF
    generic map(
      LOC => "SLICE_X66Y31",
      INIT => '0'
    )
    port map (
      I => outReg_13_DYMUX_1953,
      CE => outReg_13_CEINV_1942,
      CLK => outReg_13_CLKINV_1943,
      SET => GND,
      RST => GND,
      O => outReg(13)
    );
  outReg_14_mux00001 : X_LUT4
    generic map(
      INIT => X"8888",
      LOC => "SLICE_X64Y46"
    )
    port map (
      ADR0 => LNA_LOAD_REGLIST_IBUF_653,
      ADR1 => LNA_REGLIST_14_IBUF_670,
      ADR2 => VCC,
      ADR3 => VCC,
      O => outReg_14_mux0000
    );
  outReg_14 : X_FF
    generic map(
      LOC => "SLICE_X64Y46",
      INIT => '0'
    )
    port map (
      I => outReg_14_DYMUX_1974,
      CE => outReg_14_CEINV_1963,
      CLK => outReg_14_CLKINV_1964,
      SET => GND,
      RST => GND,
      O => outReg(14)
    );
  outReg_15_mux00001 : X_LUT4
    generic map(
      INIT => X"8888",
      LOC => "SLICE_X67Y48"
    )
    port map (
      ADR0 => LNA_REGLIST_15_IBUF_672,
      ADR1 => LNA_LOAD_REGLIST_IBUF_653,
      ADR2 => VCC,
      ADR3 => VCC,
      O => outReg_15_mux0000
    );
  outReg_15 : X_FF
    generic map(
      LOC => "SLICE_X67Y48",
      INIT => '0'
    )
    port map (
      I => outReg_15_DYMUX_1995,
      CE => outReg_15_CEINV_1984,
      CLK => outReg_15_CLKINV_1985,
      SET => GND,
      RST => GND,
      O => outReg(15)
    );
  outReg_0_mux00001 : X_LUT4
    generic map(
      INIT => X"C0C0",
      LOC => "SLICE_X66Y37"
    )
    port map (
      ADR0 => VCC,
      ADR1 => LNA_LOAD_REGLIST_IBUF_653,
      ADR2 => LNA_REGLIST_0_IBUF_673,
      ADR3 => VCC,
      O => outReg_0_mux0000
    );
  outReg_0 : X_FF
    generic map(
      LOC => "SLICE_X66Y37",
      INIT => '0'
    )
    port map (
      I => outReg_0_DYMUX_2016,
      CE => outReg_0_CEINV_2005,
      CLK => outReg_0_CLKINV_2006,
      SET => GND,
      RST => GND,
      O => outReg(0)
    );
  outReg_7_not00011 : X_LUT4
    generic map(
      INIT => X"EAAA",
      LOC => "SLICE_X64Y47"
    )
    port map (
      ADR0 => N14_0,
      ADR1 => LNA_ADDRESS_0_OBUF_0,
      ADR2 => N111,
      ADR3 => LNA_ADDRESS_1_OBUF_0,
      O => outReg_7_not0001
    );
  outReg_0_not00011 : X_LUT4
    generic map(
      INIT => X"AABA",
      LOC => "SLICE_X66Y35"
    )
    port map (
      ADR0 => N14_0,
      ADR1 => LNA_ADDRESS_0_OBUF_0,
      ADR2 => N13,
      ADR3 => LNA_ADDRESS_1_OBUF_0,
      O => outReg_0_not0001
    );
  CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000_4_1_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X67Y38"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => outReg(4),
      O => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000(4)
    );
  CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000_6_1_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X67Y39"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => outReg(6),
      O => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000(6)
    );
  CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000_8_1_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X67Y40"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => outReg(8),
      O => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000(8)
    );
  CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000_2_1_INV_0 : X_LUT4
    generic map(
      INIT => X"0F0F",
      LOC => "SLICE_X67Y37"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => outReg(2),
      ADR3 => VCC,
      O => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000(2)
    );
  CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000_10_1_INV_0 : X_LUT4
    generic map(
      INIT => X"0F0F",
      LOC => "SLICE_X67Y41"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => outReg(10),
      ADR3 => VCC,
      O => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000(10)
    );
  CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000_12_1_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X67Y42"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => outReg(12),
      O => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000(12)
    );
  CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000_14_1_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X67Y43"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => outReg(14),
      O => CURRENT_REGLIST_FILTER_Madd_PVF_VECTOR_FILTERED_not0000(14)
    );
  LNA_CURRENT_REGLIST_REG_11_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD101",
      PATHPULSE => 638 ps
    )
    port map (
      I => outReg(11),
      O => LNA_CURRENT_REGLIST_REG_11_O
    );
  LNA_CURRENT_REGLIST_REG_12_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD89",
      PATHPULSE => 638 ps
    )
    port map (
      I => outReg(12),
      O => LNA_CURRENT_REGLIST_REG_12_O
    );
  LNA_CURRENT_REGLIST_REG_13_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD104",
      PATHPULSE => 638 ps
    )
    port map (
      I => outReg(13),
      O => LNA_CURRENT_REGLIST_REG_13_O
    );
  LNA_CURRENT_REGLIST_REG_14_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD86",
      PATHPULSE => 638 ps
    )
    port map (
      I => outReg(14),
      O => LNA_CURRENT_REGLIST_REG_14_O
    );
  LNA_CURRENT_REGLIST_REG_15_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD80",
      PATHPULSE => 638 ps
    )
    port map (
      I => outReg(15),
      O => LNA_CURRENT_REGLIST_REG_15_O
    );
  LNA_CURRENT_REGLIST_REG_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD99",
      PATHPULSE => 638 ps
    )
    port map (
      I => outReg(0),
      O => LNA_CURRENT_REGLIST_REG_0_O
    );
  LNA_CURRENT_REGLIST_REG_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD95",
      PATHPULSE => 638 ps
    )
    port map (
      I => outReg(1),
      O => LNA_CURRENT_REGLIST_REG_1_O
    );
  LNA_CURRENT_REGLIST_REG_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD106",
      PATHPULSE => 638 ps
    )
    port map (
      I => outReg(2),
      O => LNA_CURRENT_REGLIST_REG_2_O
    );
  LNA_CURRENT_REGLIST_REG_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD107",
      PATHPULSE => 638 ps
    )
    port map (
      I => outReg(3),
      O => LNA_CURRENT_REGLIST_REG_3_O
    );
  LNA_CURRENT_REGLIST_REG_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD100",
      PATHPULSE => 638 ps
    )
    port map (
      I => outReg(4),
      O => LNA_CURRENT_REGLIST_REG_4_O
    );
  LNA_CURRENT_REGLIST_REG_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD92",
      PATHPULSE => 638 ps
    )
    port map (
      I => outReg(5),
      O => LNA_CURRENT_REGLIST_REG_5_O
    );
  LNA_CURRENT_REGLIST_REG_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD85",
      PATHPULSE => 638 ps
    )
    port map (
      I => outReg(6),
      O => LNA_CURRENT_REGLIST_REG_6_O
    );
  LNA_CURRENT_REGLIST_REG_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD97",
      PATHPULSE => 638 ps
    )
    port map (
      I => outReg(7),
      O => LNA_CURRENT_REGLIST_REG_7_O
    );
  LNA_CURRENT_REGLIST_REG_8_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD110",
      PATHPULSE => 638 ps
    )
    port map (
      I => outReg(8),
      O => LNA_CURRENT_REGLIST_REG_8_O
    );
  LNA_CURRENT_REGLIST_REG_9_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD96",
      PATHPULSE => 638 ps
    )
    port map (
      I => outReg(9),
      O => LNA_CURRENT_REGLIST_REG_9_O
    );
  LNA_ADDRESS_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD116",
      PATHPULSE => 638 ps
    )
    port map (
      I => LNA_ADDRESS_0_OBUF_0,
      O => LNA_ADDRESS_0_O
    );
  LNA_ADDRESS_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD114",
      PATHPULSE => 638 ps
    )
    port map (
      I => LNA_ADDRESS_1_OBUF_0,
      O => LNA_ADDRESS_1_O
    );
  LNA_ADDRESS_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD113",
      PATHPULSE => 638 ps
    )
    port map (
      I => LNA_ADDRESS_2_OBUF_0,
      O => LNA_ADDRESS_2_O
    );
  LNA_ADDRESS_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD109",
      PATHPULSE => 638 ps
    )
    port map (
      I => LNA_ADDRESS_3_OBUF_0,
      O => LNA_ADDRESS_3_O
    );
  CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_0_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X67Y36"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => outReg(0),
      O => CURRENT_REGLIST_FILTER_PVF_VECTOR_FILTERED_addsub0000_0_F
    );
  LNA_CURRENT_REGLIST_REG_10_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD111",
      PATHPULSE => 638 ps
    )
    port map (
      I => outReg(10),
      O => LNA_CURRENT_REGLIST_REG_10_O
    );
  NlwBlock_ArmLdmStmNextAddress_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_ArmLdmStmNextAddress_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end STRUCTURE;

