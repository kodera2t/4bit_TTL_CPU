--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : FOURBIT.vhf
-- /___/   /\     Timestamp : 12/18/2015 15:53:18
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family xc9500xl -flat -suppress -vhdl C:/Users/kodera2t/Documents/CPLD_training/FOURBIT/FOURBIT.vhf -w C:/Users/kodera2t/Documents/CPLD_training/FOURBIT/FOURBIT.sch
--Design Name: FOURBIT
--Device: xc9500xl
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity AND6_MXILINX_FOURBIT is
   port ( I0 : in    std_logic; 
          I1 : in    std_logic; 
          I2 : in    std_logic; 
          I3 : in    std_logic; 
          I4 : in    std_logic; 
          I5 : in    std_logic; 
          O  : out   std_logic);
end AND6_MXILINX_FOURBIT;

architecture BEHAVIORAL of AND6_MXILINX_FOURBIT is
   attribute BOX_TYPE   : string ;
   signal I35 : std_logic;
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
begin
   I_36_69 : AND3
      port map (I0=>I3,
                I1=>I4,
                I2=>I5,
                O=>I35);
   
   I_36_85 : AND4
      port map (I0=>I0,
                I1=>I1,
                I2=>I2,
                I3=>I35,
                O=>O);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity FDC_MXILINX_FOURBIT is
   generic( INIT : bit :=  '0');
   port ( C   : in    std_logic; 
          CLR : in    std_logic; 
          D   : in    std_logic; 
          Q   : out   std_logic);
end FDC_MXILINX_FOURBIT;

architecture BEHAVIORAL of FDC_MXILINX_FOURBIT is
   attribute BOX_TYPE   : string ;
   signal XLXN_5 : std_logic;
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component FDCP
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             PRE : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of FDCP : component is "BLACK_BOX";
   
begin
   I_36_55 : GND
      port map (G=>XLXN_5);
   
   U0 : FDCP
   generic map( INIT => INIT)
      port map (C=>C,
                CLR=>CLR,
                D=>D,
                PRE=>XLXN_5,
                Q=>Q);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity X74_161_MXILINX_FOURBIT is
   port ( A    : in    std_logic; 
          B    : in    std_logic; 
          C    : in    std_logic; 
          CK   : in    std_logic; 
          CLR  : in    std_logic; 
          D    : in    std_logic; 
          ENP  : in    std_logic; 
          ENT  : in    std_logic; 
          LOAD : in    std_logic; 
          QA   : out   std_logic; 
          QB   : out   std_logic; 
          QC   : out   std_logic; 
          QD   : out   std_logic; 
          RCO  : out   std_logic);
end X74_161_MXILINX_FOURBIT;

architecture BEHAVIORAL of X74_161_MXILINX_FOURBIT is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal XLXN_15  : std_logic;
   signal XLXN_16  : std_logic;
   signal XLXN_17  : std_logic;
   signal XLXN_18  : std_logic;
   signal XLXN_19  : std_logic;
   signal XLXN_20  : std_logic;
   signal XLXN_21  : std_logic;
   signal XLXN_22  : std_logic;
   signal XLXN_23  : std_logic;
   signal XLXN_24  : std_logic;
   signal XLXN_25  : std_logic;
   signal XLXN_26  : std_logic;
   signal XLXN_27  : std_logic;
   signal XLXN_28  : std_logic;
   signal XLXN_29  : std_logic;
   signal XLXN_30  : std_logic;
   signal XLXN_31  : std_logic;
   signal XLXN_32  : std_logic;
   signal XLXN_33  : std_logic;
   signal XLXN_34  : std_logic;
   signal XLXN_35  : std_logic;
   signal XLXN_36  : std_logic;
   signal XLXN_37  : std_logic;
   signal XLXN_38  : std_logic;
   signal XLXN_39  : std_logic;
   signal QA_DUMMY : std_logic;
   signal QB_DUMMY : std_logic;
   signal QC_DUMMY : std_logic;
   signal QD_DUMMY : std_logic;
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component AND2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2B1 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
   component AND5
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND5 : component is "BLACK_BOX";
   
   component AND6_MXILINX_FOURBIT
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             I5 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component FDC_MXILINX_FOURBIT
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   
   attribute HU_SET of I_36_367 : label is "I_36_367_4";
   attribute HU_SET of U0 : label is "U0_3";
   attribute HU_SET of U1 : label is "U1_2";
   attribute HU_SET of U2 : label is "U2_1";
   attribute HU_SET of U3 : label is "U3_0";
begin
   QA <= QA_DUMMY;
   QB <= QB_DUMMY;
   QC <= QC_DUMMY;
   QD <= QD_DUMMY;
   I_36_329 : INV
      port map (I=>CLR,
                O=>XLXN_15);
   
   I_36_330 : AND2
      port map (I0=>QA_DUMMY,
                I1=>XLXN_22,
                O=>XLXN_33);
   
   I_36_331 : AND2B1
      port map (I0=>XLXN_22,
                I1=>A,
                O=>XLXN_30);
   
   I_36_332 : OR2
      port map (I0=>XLXN_30,
                I1=>XLXN_33,
                O=>XLXN_32);
   
   I_36_333 : AND3
      port map (I0=>XLXN_23,
                I1=>XLXN_16,
                I2=>XLXN_22,
                O=>XLXN_31);
   
   I_36_334 : XOR2
      port map (I0=>XLXN_32,
                I1=>XLXN_31,
                O=>XLXN_20);
   
   I_36_346 : AND2
      port map (I0=>QB_DUMMY,
                I1=>XLXN_22,
                O=>XLXN_35);
   
   I_36_347 : AND2B1
      port map (I0=>XLXN_22,
                I1=>B,
                O=>XLXN_36);
   
   I_36_348 : OR2
      port map (I0=>XLXN_36,
                I1=>XLXN_35,
                O=>XLXN_37);
   
   I_36_349 : AND4
      port map (I0=>QA_DUMMY,
                I1=>XLXN_23,
                I2=>XLXN_16,
                I3=>XLXN_22,
                O=>XLXN_34);
   
   I_36_350 : XOR2
      port map (I0=>XLXN_37,
                I1=>XLXN_34,
                O=>XLXN_19);
   
   I_36_366 : AND5
      port map (I0=>QB_DUMMY,
                I1=>QA_DUMMY,
                I2=>XLXN_23,
                I3=>XLXN_16,
                I4=>XLXN_22,
                O=>XLXN_39);
   
   I_36_367 : AND6_MXILINX_FOURBIT
      port map (I0=>QC_DUMMY,
                I1=>QB_DUMMY,
                I2=>QA_DUMMY,
                I3=>XLXN_23,
                I4=>XLXN_16,
                I5=>XLXN_22,
                O=>XLXN_38);
   
   I_36_368 : OR2
      port map (I0=>XLXN_28,
                I1=>XLXN_29,
                O=>XLXN_27);
   
   I_36_369 : AND2B1
      port map (I0=>XLXN_22,
                I1=>C,
                O=>XLXN_28);
   
   I_36_370 : AND2
      port map (I0=>QC_DUMMY,
                I1=>XLXN_22,
                O=>XLXN_29);
   
   I_36_373 : XOR2
      port map (I0=>XLXN_27,
                I1=>XLXN_39,
                O=>XLXN_18);
   
   I_36_383 : AND2
      port map (I0=>QD_DUMMY,
                I1=>XLXN_22,
                O=>XLXN_24);
   
   I_36_384 : AND2B1
      port map (I0=>XLXN_22,
                I1=>D,
                O=>XLXN_25);
   
   I_36_385 : OR2
      port map (I0=>XLXN_25,
                I1=>XLXN_24,
                O=>XLXN_26);
   
   I_36_388 : XOR2
      port map (I0=>XLXN_26,
                I1=>XLXN_38,
                O=>XLXN_17);
   
   I_36_394 : AND5
      port map (I0=>QA_DUMMY,
                I1=>QB_DUMMY,
                I2=>QC_DUMMY,
                I3=>QD_DUMMY,
                I4=>XLXN_16,
                O=>RCO);
   
   I_36_407 : AND2
      port map (I0=>ENT,
                I1=>XLXN_21,
                O=>XLXN_16);
   
   I_36_408 : AND2
      port map (I0=>ENP,
                I1=>XLXN_21,
                O=>XLXN_23);
   
   I_36_409 : AND2
      port map (I0=>LOAD,
                I1=>XLXN_21,
                O=>XLXN_22);
   
   I_36_410 : VCC
      port map (P=>XLXN_21);
   
   U0 : FDC_MXILINX_FOURBIT
      port map (C=>CK,
                CLR=>XLXN_15,
                D=>XLXN_20,
                Q=>QA_DUMMY);
   
   U1 : FDC_MXILINX_FOURBIT
      port map (C=>CK,
                CLR=>XLXN_15,
                D=>XLXN_19,
                Q=>QB_DUMMY);
   
   U2 : FDC_MXILINX_FOURBIT
      port map (C=>CK,
                CLR=>XLXN_15,
                D=>XLXN_18,
                Q=>QC_DUMMY);
   
   U3 : FDC_MXILINX_FOURBIT
      port map (C=>CK,
                CLR=>XLXN_15,
                D=>XLXN_17,
                Q=>QD_DUMMY);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity M2_1_MXILINX_FOURBIT is
   port ( D0 : in    std_logic; 
          D1 : in    std_logic; 
          S0 : in    std_logic; 
          O  : out   std_logic);
end M2_1_MXILINX_FOURBIT;

architecture BEHAVIORAL of M2_1_MXILINX_FOURBIT is
   attribute BOX_TYPE   : string ;
   signal M0 : std_logic;
   signal M1 : std_logic;
   component AND2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2B1 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
begin
   I_36_7 : AND2B1
      port map (I0=>S0,
                I1=>D0,
                O=>M0);
   
   I_36_8 : OR2
      port map (I0=>M1,
                I1=>M0,
                O=>O);
   
   I_36_9 : AND2
      port map (I0=>D1,
                I1=>S0,
                O=>M1);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity M2_1E_MXILINX_FOURBIT is
   port ( D0 : in    std_logic; 
          D1 : in    std_logic; 
          E  : in    std_logic; 
          S0 : in    std_logic; 
          O  : out   std_logic);
end M2_1E_MXILINX_FOURBIT;

architecture BEHAVIORAL of M2_1E_MXILINX_FOURBIT is
   attribute BOX_TYPE   : string ;
   signal M0 : std_logic;
   signal M1 : std_logic;
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component AND3B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B1 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
begin
   I_36_30 : AND3
      port map (I0=>D1,
                I1=>E,
                I2=>S0,
                O=>M1);
   
   I_36_31 : AND3B1
      port map (I0=>S0,
                I1=>E,
                I2=>D0,
                O=>M0);
   
   I_36_38 : OR2
      port map (I0=>M1,
                I1=>M0,
                O=>O);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity X74_153_MXILINX_FOURBIT is
   port ( A    : in    std_logic; 
          B    : in    std_logic; 
          G1   : in    std_logic; 
          G2   : in    std_logic; 
          I1C0 : in    std_logic; 
          I1C1 : in    std_logic; 
          I1C2 : in    std_logic; 
          I1C3 : in    std_logic; 
          I2C0 : in    std_logic; 
          I2C1 : in    std_logic; 
          I2C2 : in    std_logic; 
          I2C3 : in    std_logic; 
          Y1   : out   std_logic; 
          Y2   : out   std_logic);
end X74_153_MXILINX_FOURBIT;

architecture BEHAVIORAL of X74_153_MXILINX_FOURBIT is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal E1    : std_logic;
   signal E2    : std_logic;
   signal M1_01 : std_logic;
   signal M1_23 : std_logic;
   signal M2_01 : std_logic;
   signal M2_23 : std_logic;
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component M2_1_MXILINX_FOURBIT
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component M2_1E_MXILINX_FOURBIT
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             E  : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   attribute HU_SET of U0 : label is "U0_10";
   attribute HU_SET of U1 : label is "U1_9";
   attribute HU_SET of U2 : label is "U2_7";
   attribute HU_SET of U3 : label is "U3_8";
   attribute HU_SET of U4 : label is "U4_5";
   attribute HU_SET of U5 : label is "U5_6";
begin
   I_36_85 : INV
      port map (I=>G2,
                O=>E2);
   
   I_36_87 : INV
      port map (I=>G1,
                O=>E1);
   
   U0 : M2_1_MXILINX_FOURBIT
      port map (D0=>I1C0,
                D1=>I1C1,
                S0=>A,
                O=>M1_01);
   
   U1 : M2_1_MXILINX_FOURBIT
      port map (D0=>I1C2,
                D1=>I1C3,
                S0=>A,
                O=>M1_23);
   
   U2 : M2_1_MXILINX_FOURBIT
      port map (D0=>I2C0,
                D1=>I2C1,
                S0=>A,
                O=>M2_01);
   
   U3 : M2_1_MXILINX_FOURBIT
      port map (D0=>I2C2,
                D1=>I2C3,
                S0=>A,
                O=>M2_23);
   
   U4 : M2_1E_MXILINX_FOURBIT
      port map (D0=>M1_01,
                D1=>M1_23,
                E=>E1,
                S0=>B,
                O=>Y1);
   
   U5 : M2_1E_MXILINX_FOURBIT
      port map (D0=>M2_01,
                D1=>M2_23,
                E=>E2,
                S0=>B,
                O=>Y2);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity ADD4_MXILINX_FOURBIT is
   port ( A0  : in    std_logic; 
          A1  : in    std_logic; 
          A2  : in    std_logic; 
          A3  : in    std_logic; 
          B0  : in    std_logic; 
          B1  : in    std_logic; 
          B2  : in    std_logic; 
          B3  : in    std_logic; 
          CI  : in    std_logic; 
          CO  : out   std_logic; 
          OFL : out   std_logic; 
          S0  : out   std_logic; 
          S1  : out   std_logic; 
          S2  : out   std_logic; 
          S3  : out   std_logic);
end ADD4_MXILINX_FOURBIT;

architecture BEHAVIORAL of ADD4_MXILINX_FOURBIT is
   attribute BOX_TYPE   : string ;
   signal CI_OR0   : std_logic;
   signal XLXN_24  : std_logic;
   signal XLXN_25  : std_logic;
   signal XLXN_26  : std_logic;
   signal XLXN_27  : std_logic;
   signal XLXN_28  : std_logic;
   signal XLXN_29  : std_logic;
   signal XLXN_30  : std_logic;
   signal XLXN_31  : std_logic;
   signal XLXN_32  : std_logic;
   signal XLXN_33  : std_logic;
   signal XLXN_34  : std_logic;
   signal XLXN_35  : std_logic;
   signal XLXN_36  : std_logic;
   signal XLXN_37  : std_logic;
   signal XLXN_38  : std_logic;
   signal XLXN_39  : std_logic;
   signal XLXN_40  : std_logic;
   signal XLXN_41  : std_logic;
   signal XLXN_42  : std_logic;
   signal XLXN_43  : std_logic;
   signal X0       : std_logic;
   signal X1       : std_logic;
   signal X2       : std_logic;
   signal X3       : std_logic;
   signal S3_DUMMY : std_logic;
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component OR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR3 : component is "BLACK_BOX";
   
   component OR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR4 : component is "BLACK_BOX";
   
   component AND5
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND5 : component is "BLACK_BOX";
   
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component OR5
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR5 : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component AND3B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B1 : component is "BLACK_BOX";
   
   component AND3B2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B2 : component is "BLACK_BOX";
   
begin
   S3 <= S3_DUMMY;
   I_36_168 : XOR2
      port map (I0=>B3,
                I1=>A3,
                O=>X3);
   
   I_36_169 : XOR2
      port map (I0=>B2,
                I1=>A2,
                O=>X2);
   
   I_36_170 : XOR2
      port map (I0=>B1,
                I1=>A1,
                O=>X1);
   
   I_36_171 : XOR2
      port map (I0=>B0,
                I1=>A0,
                O=>X0);
   
   I_36_185 : OR2
      port map (I0=>XLXN_36,
                I1=>XLXN_35,
                O=>XLXN_28);
   
   I_36_186 : OR3
      port map (I0=>XLXN_39,
                I1=>XLXN_38,
                I2=>XLXN_37,
                O=>XLXN_34);
   
   I_36_187 : OR4
      port map (I0=>XLXN_43,
                I1=>XLXN_42,
                I2=>XLXN_41,
                I3=>XLXN_40,
                O=>XLXN_27);
   
   I_36_188 : AND5
      port map (I0=>CI_OR0,
                I1=>X0,
                I2=>X1,
                I3=>X2,
                I4=>X3,
                O=>XLXN_30);
   
   I_36_189 : AND5
      port map (I0=>B0,
                I1=>A0,
                I2=>X1,
                I3=>X2,
                I4=>X3,
                O=>XLXN_29);
   
   I_36_190 : AND4
      port map (I0=>B1,
                I1=>A1,
                I2=>X2,
                I3=>X3,
                O=>XLXN_33);
   
   I_36_191 : AND3
      port map (I0=>B2,
                I1=>A2,
                I2=>X3,
                O=>XLXN_31);
   
   I_36_192 : AND2
      port map (I0=>B3,
                I1=>A3,
                O=>XLXN_32);
   
   I_36_193 : AND4
      port map (I0=>CI_OR0,
                I1=>X0,
                I2=>X1,
                I3=>X2,
                O=>XLXN_43);
   
   I_36_194 : AND4
      port map (I0=>B0,
                I1=>A0,
                I2=>X1,
                I3=>X2,
                O=>XLXN_42);
   
   I_36_195 : AND3
      port map (I0=>B1,
                I1=>A1,
                I2=>X2,
                O=>XLXN_41);
   
   I_36_196 : AND2
      port map (I0=>B2,
                I1=>A2,
                O=>XLXN_40);
   
   I_36_197 : AND3
      port map (I0=>CI_OR0,
                I1=>X0,
                I2=>X1,
                O=>XLXN_39);
   
   I_36_198 : AND3
      port map (I0=>B0,
                I1=>A0,
                I2=>X1,
                O=>XLXN_38);
   
   I_36_199 : AND2
      port map (I0=>B1,
                I1=>A1,
                O=>XLXN_37);
   
   I_36_200 : AND2
      port map (I0=>CI_OR0,
                I1=>X0,
                O=>XLXN_36);
   
   I_36_201 : AND2
      port map (I0=>B0,
                I1=>A0,
                O=>XLXN_35);
   
   I_36_206 : XOR2
      port map (I0=>XLXN_34,
                I1=>X2,
                O=>S2);
   
   I_36_207 : OR5
      port map (I0=>XLXN_30,
                I1=>XLXN_29,
                I2=>XLXN_33,
                I3=>XLXN_31,
                I4=>XLXN_32,
                O=>CO);
   
   I_36_208 : XOR2
      port map (I0=>X0,
                I1=>CI_OR0,
                O=>S0);
   
   I_36_209 : XOR2
      port map (I0=>XLXN_28,
                I1=>X1,
                O=>S1);
   
   I_36_210 : XOR2
      port map (I0=>XLXN_27,
                I1=>X3,
                O=>S3_DUMMY);
   
   I_36_211 : OR2
      port map (I0=>XLXN_26,
                I1=>CI,
                O=>CI_OR0);
   
   I_36_212 : GND
      port map (G=>XLXN_26);
   
   I_36_234 : AND3B1
      port map (I0=>S3_DUMMY,
                I1=>A3,
                I2=>B3,
                O=>XLXN_24);
   
   I_36_235 : AND3B2
      port map (I0=>B3,
                I1=>A3,
                I2=>S3_DUMMY,
                O=>XLXN_25);
   
   I_36_238 : OR2
      port map (I0=>XLXN_24,
                I1=>XLXN_25,
                O=>OFL);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity X74_283_MXILINX_FOURBIT is
   port ( A1 : in    std_logic; 
          A2 : in    std_logic; 
          A3 : in    std_logic; 
          A4 : in    std_logic; 
          B1 : in    std_logic; 
          B2 : in    std_logic; 
          B3 : in    std_logic; 
          B4 : in    std_logic; 
          C0 : in    std_logic; 
          C4 : out   std_logic; 
          S1 : out   std_logic; 
          S2 : out   std_logic; 
          S3 : out   std_logic; 
          S4 : out   std_logic);
end X74_283_MXILINX_FOURBIT;

architecture BEHAVIORAL of X74_283_MXILINX_FOURBIT is
   attribute HU_SET     : string ;
   component ADD4_MXILINX_FOURBIT
      port ( A0  : in    std_logic; 
             A1  : in    std_logic; 
             A2  : in    std_logic; 
             A3  : in    std_logic; 
             B0  : in    std_logic; 
             B1  : in    std_logic; 
             B2  : in    std_logic; 
             B3  : in    std_logic; 
             CI  : in    std_logic; 
             CO  : out   std_logic; 
             OFL : out   std_logic; 
             S0  : out   std_logic; 
             S1  : out   std_logic; 
             S2  : out   std_logic; 
             S3  : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_11";
begin
   XLXI_1 : ADD4_MXILINX_FOURBIT
      port map (A0=>A1,
                A1=>A2,
                A2=>A3,
                A3=>A4,
                B0=>B1,
                B1=>B2,
                B2=>B3,
                B3=>B4,
                CI=>C0,
                CO=>C4,
                OFL=>open,
                S0=>S1,
                S1=>S2,
                S2=>S3,
                S3=>S4);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity FOURBIT is
   port ( B0      : in    std_logic; 
          B1      : in    std_logic; 
          B2      : in    std_logic; 
          B3      : in    std_logic; 
          B4      : in    std_logic; 
          B5      : in    std_logic; 
          B6      : in    std_logic; 
          B7      : in    std_logic; 
          DFF_CLK : in    std_logic; 
          TERM1   : in    std_logic; 
          data1   : out   std_logic; 
          DATA2   : out   std_logic; 
          DATA3   : out   std_logic; 
          DATA4   : out   std_logic; 
          LED1    : out   std_logic; 
          LED2    : out   std_logic; 
          LED3    : out   std_logic; 
          LED4    : out   std_logic; 
          TERM3   : out   std_logic; 
          TERM2   : inout std_logic);
end FOURBIT;

architecture BEHAVIORAL of FOURBIT is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal DFF_D    : std_logic;
   signal SW1      : std_logic;
   signal SW2      : std_logic;
   signal SW3      : std_logic;
   signal SW4      : std_logic;
   signal XLXN_10  : std_logic;
   signal XLXN_51  : std_logic;
   signal XLXN_54  : std_logic;
   signal XLXN_57  : std_logic;
   signal XLXN_58  : std_logic;
   signal XLXN_60  : std_logic;
   signal XLXN_61  : std_logic;
   signal XLXN_62  : std_logic;
   signal XLXN_63  : std_logic;
   signal XLXN_64  : std_logic;
   signal XLXN_65  : std_logic;
   signal XLXN_66  : std_logic;
   signal XLXN_84  : std_logic;
   signal XLXN_85  : std_logic;
   signal XLXN_86  : std_logic;
   signal XLXN_87  : std_logic;
   signal XLXN_97  : std_logic;
   signal XLXN_103 : std_logic;
   signal XLXN_113 : std_logic;
   signal XLXN_115 : std_logic;
   signal XLXN_121 : std_logic;
   signal XLXN_124 : std_logic;
   signal XLXN_125 : std_logic;
   signal XLXN_132 : std_logic;
   signal XLXN_133 : std_logic;
   signal XLXN_134 : std_logic;
   signal XLXN_135 : std_logic;
   signal XLXN_136 : std_logic;
   signal XLXN_137 : std_logic;
   signal XLXN_138 : std_logic;
   signal XLXN_139 : std_logic;
   signal XLXN_140 : std_logic;
   signal XLXN_142 : std_logic;
   component X74_283_MXILINX_FOURBIT
      port ( A1 : in    std_logic; 
             A2 : in    std_logic; 
             A3 : in    std_logic; 
             A4 : in    std_logic; 
             B1 : in    std_logic; 
             B2 : in    std_logic; 
             B3 : in    std_logic; 
             B4 : in    std_logic; 
             C0 : in    std_logic; 
             C4 : out   std_logic; 
             S1 : out   std_logic; 
             S2 : out   std_logic; 
             S3 : out   std_logic; 
             S4 : out   std_logic);
   end component;
   
   component X74_153_MXILINX_FOURBIT
      port ( A    : in    std_logic; 
             B    : in    std_logic; 
             G1   : in    std_logic; 
             G2   : in    std_logic; 
             I1C0 : in    std_logic; 
             I1C1 : in    std_logic; 
             I1C2 : in    std_logic; 
             I1C3 : in    std_logic; 
             I2C0 : in    std_logic; 
             I2C1 : in    std_logic; 
             I2C2 : in    std_logic; 
             I2C3 : in    std_logic; 
             Y1   : out   std_logic; 
             Y2   : out   std_logic);
   end component;
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component NAND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NAND3 : component is "BLACK_BOX";
   
   component NAND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NAND2 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component FDC_MXILINX_FOURBIT
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component X74_161_MXILINX_FOURBIT
      port ( A    : in    std_logic; 
             B    : in    std_logic; 
             C    : in    std_logic; 
             CK   : in    std_logic; 
             CLR  : in    std_logic; 
             D    : in    std_logic; 
             ENP  : in    std_logic; 
             ENT  : in    std_logic; 
             LOAD : in    std_logic; 
             QA   : out   std_logic; 
             QB   : out   std_logic; 
             QC   : out   std_logic; 
             QD   : out   std_logic; 
             RCO  : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_12";
   attribute HU_SET of XLXI_7 : label is "XLXI_7_13";
   attribute HU_SET of XLXI_8 : label is "XLXI_8_14";
   attribute HU_SET of XLXI_29 : label is "XLXI_29_15";
   attribute HU_SET of XLXI_46 : label is "XLXI_46_16";
   attribute HU_SET of XLXI_47 : label is "XLXI_47_17";
   attribute HU_SET of XLXI_48 : label is "XLXI_48_18";
   attribute HU_SET of XLXI_49 : label is "XLXI_49_19";
begin
   XLXI_1 : X74_283_MXILINX_FOURBIT
      port map (A1=>XLXN_84,
                A2=>XLXN_85,
                A3=>XLXN_86,
                A4=>XLXN_87,
                B1=>B0,
                B2=>B1,
                B3=>B2,
                B4=>B3,
                C0=>XLXN_121,
                C4=>DFF_D,
                S1=>XLXN_51,
                S2=>XLXN_10,
                S3=>XLXN_54,
                S4=>XLXN_57);
   
   XLXI_7 : X74_153_MXILINX_FOURBIT
      port map (A=>XLXN_103,
                B=>B5,
                G1=>XLXN_97,
                G2=>XLXN_97,
                I1C0=>XLXN_58,
                I1C1=>XLXN_60,
                I1C2=>SW4,
                I1C3=>XLXN_97,
                I2C0=>XLXN_61,
                I2C1=>XLXN_64,
                I2C2=>SW3,
                I2C3=>XLXN_97,
                Y1=>XLXN_84,
                Y2=>XLXN_85);
   
   XLXI_8 : X74_153_MXILINX_FOURBIT
      port map (A=>XLXN_103,
                B=>B5,
                G1=>XLXN_97,
                G2=>XLXN_97,
                I1C0=>XLXN_62,
                I1C1=>XLXN_65,
                I1C2=>SW2,
                I1C3=>XLXN_97,
                I2C0=>XLXN_63,
                I2C1=>XLXN_66,
                I2C2=>SW1,
                I2C3=>XLXN_97,
                Y1=>XLXN_86,
                Y2=>XLXN_87);
   
   XLXI_18 : GND
      port map (G=>XLXN_97);
   
   XLXI_20 : AND2
      port map (I0=>B7,
                I1=>B6,
                O=>XLXN_136);
   
   XLXI_21 : AND2
      port map (I0=>B7,
                I1=>XLXN_113,
                O=>XLXN_137);
   
   XLXI_22 : AND2
      port map (I0=>B4,
                I1=>XLXN_124,
                O=>XLXN_115);
   
   XLXI_23 : AND2
      port map (I0=>B4,
                I1=>B7,
                O=>XLXN_103);
   
   XLXI_24 : NAND3
      port map (I0=>XLXN_115,
                I1=>B7,
                I2=>B6,
                O=>XLXN_139);
   
   XLXI_26 : NAND2
      port map (I0=>B7,
                I1=>XLXN_113,
                O=>XLXN_138);
   
   XLXI_27 : INV
      port map (I=>B6,
                O=>XLXN_113);
   
   XLXI_28 : GND
      port map (G=>XLXN_121);
   
   XLXI_29 : FDC_MXILINX_FOURBIT
      port map (C=>DFF_CLK,
                CLR=>XLXN_140,
                D=>DFF_D,
                Q=>XLXN_125);
   
   XLXI_30 : GND
      port map (G=>SW2);
   
   XLXI_31 : GND
      port map (G=>SW1);
   
   XLXI_32 : GND
      port map (G=>SW4);
   
   XLXI_33 : GND
      port map (G=>SW3);
   
   XLXI_34 : INV
      port map (I=>XLXN_125,
                O=>XLXN_124);
   
   XLXI_42 : VCC
      port map (P=>XLXN_135);
   
   XLXI_46 : X74_161_MXILINX_FOURBIT
      port map (A=>XLXN_51,
                B=>XLXN_10,
                C=>XLXN_54,
                CK=>DFF_CLK,
                CLR=>XLXN_142,
                D=>XLXN_57,
                ENP=>XLXN_132,
                ENT=>XLXN_132,
                LOAD=>XLXN_136,
                QA=>XLXN_58,
                QB=>XLXN_61,
                QC=>XLXN_62,
                QD=>XLXN_63,
                RCO=>open);
   
   XLXI_47 : X74_161_MXILINX_FOURBIT
      port map (A=>XLXN_51,
                B=>XLXN_10,
                C=>XLXN_54,
                CK=>DFF_CLK,
                CLR=>XLXN_142,
                D=>XLXN_57,
                ENP=>XLXN_133,
                ENT=>XLXN_133,
                LOAD=>XLXN_137,
                QA=>XLXN_60,
                QB=>XLXN_64,
                QC=>XLXN_65,
                QD=>XLXN_66,
                RCO=>open);
   
   XLXI_48 : X74_161_MXILINX_FOURBIT
      port map (A=>XLXN_51,
                B=>XLXN_10,
                C=>XLXN_54,
                CK=>DFF_CLK,
                CLR=>XLXN_142,
                D=>XLXN_57,
                ENP=>XLXN_134,
                ENT=>XLXN_134,
                LOAD=>XLXN_138,
                QA=>LED1,
                QB=>LED2,
                QC=>LED3,
                QD=>LED4,
                RCO=>open);
   
   XLXI_49 : X74_161_MXILINX_FOURBIT
      port map (A=>XLXN_51,
                B=>XLXN_10,
                C=>XLXN_54,
                CK=>DFF_CLK,
                CLR=>XLXN_142,
                D=>XLXN_57,
                ENP=>XLXN_135,
                ENT=>XLXN_135,
                LOAD=>XLXN_139,
                QA=>data1,
                QB=>DATA2,
                QC=>DATA3,
                QD=>DATA4,
                RCO=>open);
   
   XLXI_50 : GND
      port map (G=>XLXN_132);
   
   XLXI_51 : GND
      port map (G=>XLXN_133);
   
   XLXI_52 : GND
      port map (G=>XLXN_134);
   
   XLXI_53 : INV
      port map (I=>XLXN_142,
                O=>XLXN_140);
   
   XLXI_56 : INV
      port map (I=>TERM1,
                O=>TERM2);
   
   XLXI_57 : INV
      port map (I=>TERM2,
                O=>TERM3);
   
end BEHAVIORAL;


