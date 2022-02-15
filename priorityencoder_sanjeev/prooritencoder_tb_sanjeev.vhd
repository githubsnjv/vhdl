--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:15:14 02/09/2022
-- Design Name:   
-- Module Name:   G:/vhdl code/priorityencoder_sanjeev/prooritencoder_tb_sanjeev.vhd
-- Project Name:  priorityencoder_sanjeev
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: priorityencoder_design_sanjeev
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
 
ENTITY prooritencoder_tb_sanjeev IS
END prooritencoder_tb_sanjeev;
 
ARCHITECTURE behavior OF prooritencoder_tb_sanjeev IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT priorityencoder_design_sanjeev
    PORT(
         y0 : IN  std_logic;
         y1 : IN  std_logic;
         y2 : IN  std_logic;
         y3 : IN  std_logic;
         y4 : IN  std_logic;
         y5 : IN  std_logic;
         y6 : IN  std_logic;
         y7 : IN  std_logic;
         a0 : OUT  std_logic;
         a1 : OUT  std_logic;
         a2 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal y0 : std_logic := '0';
   signal y1 : std_logic := '0';
   signal y2 : std_logic := '0';
   signal y3 : std_logic := '0';
   signal y4 : std_logic := '0';
   signal y5 : std_logic := '0';
   signal y6 : std_logic := '0';
   signal y7 : std_logic := '0';

 	--Outputs
   signal a0 : std_logic;
   signal a1 : std_logic;
   signal a2 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: priorityencoder_design_sanjeev PORT MAP (
          y0 => y0,
          y1 => y1,
          y2 => y2,
          y3 => y3,
          y4 => y4,
          y5 => y5,
          y6 => y6,
          y7 => y7,
          a0 => a0,
          a1 => a1,
          a2 => a2
        );

   -- Clock process definitions
   
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		y0<='1'; y1<='0'; y2<='0'; y3<='0'; y4<='0'; y5<='0'; y6<='0'; y7<='0';
      wait for 100 ns;	
		
		y0<='0'; y1<='1'; y2<='0'; y3<='0'; y4<='0'; y5<='0'; y6<='0'; y7<='0';
      wait for 100 ns;
		
		y0<='0'; y1<='0'; y2<='1'; y3<='0'; y4<='0'; y5<='0'; y6<='0'; y7<='0';
      wait for 100 ns;
		
		y0<='0'; y1<='0'; y2<='0'; y3<='1'; y4<='0'; y5<='0'; y6<='0'; y7<='0';
      wait for 100 ns;
		
		y0<='0'; y1<='0'; y2<='0'; y3<='0'; y4<='1'; y5<='0'; y6<='0'; y7<='0';
      wait for 100 ns;
		
		y0<='0'; y1<='0'; y2<='0'; y3<='0'; y4<='0'; y5<='1'; y6<='0'; y7<='0';
      wait for 100 ns;
		
		y0<='0'; y1<='0'; y2<='0'; y3<='0'; y4<='0'; y5<='0'; y6<='1'; y7<='0';
      wait for 100 ns;
		
		y0<='0'; y1<='0'; y2<='0'; y3<='0'; y4<='0'; y5<='0'; y6<='0'; y7<='1';
      wait for 100 ns;
		
		

      
      -- insert stimulus here 

      wait;
   end process;

END;
