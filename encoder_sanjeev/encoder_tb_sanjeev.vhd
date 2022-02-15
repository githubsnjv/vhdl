--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:33:39 02/02/2022
-- Design Name:   
-- Module Name:   G:/vhdl code/encoder_sanjeev/encoder_tb_sanjeev.vhd
-- Project Name:  encoder_sanjeev
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: encoder_design_sanjeev
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
 
ENTITY encoder_tb_sanjeev IS
END encoder_tb_sanjeev;
 
ARCHITECTURE behavior OF encoder_tb_sanjeev IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT encoder_design_sanjeev
    PORT(
         i1 : IN  std_logic;
         i2 : IN  std_logic;
         i3 : IN  std_logic;
         i4 : IN  std_logic;
         o1 : OUT  std_logic;
         o2 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal i1 : std_logic := '0';
   signal i2 : std_logic := '0';
   signal i3 : std_logic := '0';
   signal i4 : std_logic := '0';

 	--Outputs
   signal o1 : std_logic;
   signal o2 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: encoder_design_sanjeev PORT MAP (
          i1 => i1,
          i2 => i2,
          i3 => i3,
          i4 => i4,
          o1 => o1,
          o2 => o2
        );

  
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		i1<='0'; i2<='0'; i3<='0'; i4<='1';
      wait for 100 ns;	
		
		i1<='0'; i2<='0'; i3<='1'; i4<='0';
      wait for 100 ns;	
		
		i1<='0'; i2<='1'; i3<='0'; i4<='0';
      wait for 100 ns;	
		
		i1<='1'; i2<='0'; i3<='0'; i4<='0';
      wait for 100 ns;	
     

     
   end process;

END;
