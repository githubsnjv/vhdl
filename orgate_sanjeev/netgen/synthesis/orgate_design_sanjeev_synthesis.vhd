--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: orgate_design_sanjeev_synthesis.vhd
-- /___/   /\     Timestamp: Wed Feb 02 09:40:04 2022
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm orgate_design_sanjeev -w -dir netgen/synthesis -ofmt vhdl -sim orgate_design_sanjeev.ngc orgate_design_sanjeev_synthesis.vhd 
-- Device	: xc6slx16-3-csg324
-- Input file	: orgate_design_sanjeev.ngc
-- Output file	: G:\vhdl code\orgate_sanjeev\netgen\synthesis\orgate_design_sanjeev_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: orgate_design_sanjeev
-- Xilinx	: G:\14.7\ISE_DS\ISE\
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
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity orgate_design_sanjeev is
  port (
    a : in STD_LOGIC := 'X'; 
    b : in STD_LOGIC := 'X'; 
    c : out STD_LOGIC 
  );
end orgate_design_sanjeev;

architecture Structure of orgate_design_sanjeev is
  signal a_IBUF_0 : STD_LOGIC; 
  signal b_IBUF_1 : STD_LOGIC; 
  signal c_OBUF_2 : STD_LOGIC; 
begin
  c1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => a_IBUF_0,
      I1 => b_IBUF_1,
      O => c_OBUF_2
    );
  a_IBUF : IBUF
    port map (
      I => a,
      O => a_IBUF_0
    );
  b_IBUF : IBUF
    port map (
      I => b,
      O => b_IBUF_1
    );
  c_OBUF : OBUF
    port map (
      I => c_OBUF_2,
      O => c
    );

end Structure;

