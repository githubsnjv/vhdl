--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:02:47 02/09/2022
-- Design Name:   
-- Module Name:   G:/vhdl code/demux_sanjeev/demux_tb_sanjeev.vhd
-- Project Name:  demux_sanjeev
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: demux_design_sanjeev
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY demux_tb_sanjeev IS
END demux_tb_sanjeev;
 
ARCHITECTURE behavior OF demux_tb_sanjeev IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT demux_design_sanjeev
    PORT(
         i : IN  std_logic;
         s0 : IN  std_logic;
         s1 : IN  std_logic;
         y3 : OUT  std_logic;
         y2 : OUT  std_logic;
         y1 : OUT  std_logic;
         y0 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal i : std_logic := '0';
   signal s0 : std_logic := '0';
   signal s1 : std_logic := '0';

 	--Outputs
   signal y3 : std_logic;
   signal y2 : std_logic;
   signal y1 : std_logic;
   signal y0 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: demux_design_sanjeev PORT MAP (
          i => i,
          s0 => s0,
          s1 => s1,
          y3 => y3,
          y2 => y2,
          y1 => y1,
          y0 => y0
        );

   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		s1<='0'; s0<='0'; i<='1';
      wait for 100 ns;	
		
		s1<='0'; s0<='1'; i<='1';
      wait for 100 ns;	
		
		s1<='1'; s0<='0'; i<='1';
      wait for 100 ns;	
		
		s1<='1'; s0<='1'; i<='1';
      wait for 100 ns;	
		
		s1<='0'; s0<='0'; i<='0';
      wait for 100 ns;	
		
		s1<='0'; s0<='1'; i<='0';
      wait for 100 ns;	
		
		s1<='1'; s0<='0'; i<='0';
      wait for 100 ns;	
		
		s1<='1'; s0<='1'; i<='0';
      wait for 100 ns;	

    

      wait;
   end process;

END;
