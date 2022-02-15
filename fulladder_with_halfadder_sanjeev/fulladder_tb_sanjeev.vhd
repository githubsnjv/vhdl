--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:46:59 02/09/2022
-- Design Name:   
-- Module Name:   G:/vhdl code/fulladder_with_halfadder_sanjeev/fulladder_tb_sanjeev.vhd
-- Project Name:  fulladder_with_halfadder_sanjeev
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fulladder_design_sanjeev
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
 
ENTITY fulladder_tb_sanjeev IS
END fulladder_tb_sanjeev;
 
ARCHITECTURE behavior OF fulladder_tb_sanjeev IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fulladder_design_sanjeev
    PORT(
         p : IN  std_logic;
         q : IN  std_logic;
         r : IN  std_logic;
         sumfull : OUT  std_logic;
         carryfull : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal p : std_logic := '0';
   signal q : std_logic := '0';
   signal r : std_logic := '0';

 	--Outputs
   signal sumfull : std_logic;
   signal carryfull : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fulladder_design_sanjeev PORT MAP (
          p => p,
          q => q,
          r => r,
          sumfull => sumfull,
          carryfull => carryfull
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		p<='0'; q<='0'; r<='0';
      wait for 100 ns;	
		
		p<='0'; q<='0'; r<='1';
      wait for 100 ns;	
		
		p<='0'; q<='1'; r<='0';
      wait for 100 ns;	
		
		p<='0'; q<='1'; r<='1';
      wait for 100 ns;	
		
		p<='1'; q<='0'; r<='0';
      wait for 100 ns;	
		
		p<='1'; q<='0'; r<='1';
      wait for 100 ns;	
		
		p<='1'; q<='1'; r<='0';
      wait for 100 ns;

		p<='1'; q<='1'; r<='1';
      wait for 100 ns;	

     

      wait;
   end process;

END;
