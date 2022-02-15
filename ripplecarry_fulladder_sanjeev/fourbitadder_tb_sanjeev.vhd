--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:05:47 02/09/2022
-- Design Name:   
-- Module Name:   G:/vhdl code/ripplecarry_fulladder_sanjeev/fourbitadder_tb_sanjeev.vhd
-- Project Name:  ripplecarry_fulladder_sanjeev
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fourbitadder_design_sanjeev
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
 
ENTITY fourbitadder_tb_sanjeev IS
END fourbitadder_tb_sanjeev;
 
ARCHITECTURE behavior OF fourbitadder_tb_sanjeev IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fourbitadder_design_sanjeev
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         c : IN  std_logic;
         sum4 : OUT  std_logic_vector(3 downto 0);
         car4 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');
   signal c : std_logic := '0';

 	--Outputs
   signal sum4 : std_logic_vector(3 downto 0);
   signal car4 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fourbitadder_design_sanjeev PORT MAP (
          a => a,
          b => b,
          c => c,
          sum4 => sum4,
          car4 => car4
        );

  
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		
		
		
					a <= "0110";
			b <= "1100";
			 
			wait for 100 ns;
			a <= "1111";
			b <= "1100";
			 
			wait for 100 ns;
			a <= "0110";
			b <= "0111";
			 
			wait for 100 ns;
			a <= "0110";
			b <= "1110";
			 
			wait for 100 ns;
			a <= "1111";
			b <= "1111";

		
		
     

      wait;
   end process;

END;
