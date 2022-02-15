--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:43:32 02/02/2022
-- Design Name:   
-- Module Name:   G:/vhdl code/mux_sanjeev/mux2x2_tb_sanjeev.vhd
-- Project Name:  mux_sanjeev
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux2x2_design_sanjeev
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
 
ENTITY mux2x2_tb_sanjeev IS
END mux2x2_tb_sanjeev;
 
ARCHITECTURE behavior OF mux2x2_tb_sanjeev IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux2x2_design_sanjeev
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         S : IN  std_logic;
         Z : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal S : std_logic := '0';

 	--Outputs
   signal Z : std_logic;
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux2x2_design_sanjeev PORT MAP (
          A => A,
          B => B,
          S => S,
          Z => Z
        );

   
   -- Stimulus process
   stim_proc: process
   begin		
     
		A<='0'; B<='1'; S<='0';
      wait for 100 ns;	

		A<='0'; B<='1'; S<='1';
      wait for 100 ns;	
		
		
		
		
      

      -- insert stimulus here 

       end process;

END;
