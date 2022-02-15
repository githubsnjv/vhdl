--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:24:17 02/09/2022
-- Design Name:   
-- Module Name:   G:/vhdl code/decoder_sanjeev/decoder_tb_sanjeev.vhd
-- Project Name:  decoder_sanjeev
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: decoder_design_sanjeev
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
 
ENTITY decoder_tb_sanjeev IS
END decoder_tb_sanjeev;
 
ARCHITECTURE behavior OF decoder_tb_sanjeev IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT decoder_design_sanjeev
    PORT(
         a1 : IN  std_logic;
         a2 : IN  std_logic;
         e : IN  std_logic;
         y3 : OUT  std_logic;
         y2 : OUT  std_logic;
         y1 : OUT  std_logic;
         y0 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a1 : std_logic := '0';
   signal a2 : std_logic := '0';
   signal e : std_logic := '0';

 	--Outputs
   signal y3 : std_logic;
   signal y2 : std_logic;
   signal y1 : std_logic;
   signal y0 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: decoder_design_sanjeev PORT MAP (
          a1 => a1,
          a2 => a2,
          e => e,
          y3 => y3,
          y2 => y2,
          y1 => y1,
          y0 => y0
        );

   
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		
		e<='1'; a1<='0'; a2<='0';
      wait for 100 ns;	
		
		e<='1'; a1<='0'; a2<='1';
      wait for 100 ns;	
		
		e<='1'; a1<='1'; a2<='0';
      wait for 100 ns;	
		
		e<='1'; a1<='1'; a2<='1';
      wait for 100 ns;	

    

      -- insert stimulus here 

      wait;
   end process;

END;
