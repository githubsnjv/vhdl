--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:31:17 02/09/2022
-- Design Name:   
-- Module Name:   G:/vhdl code/alu_sanjeev/alu_tb_sanjeev.vhd
-- Project Name:  alu_sanjeev
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: alu_design_sanjeev
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
 
ENTITY alu_tb_sanjeev IS
END alu_tb_sanjeev;
 
ARCHITECTURE behavior OF alu_tb_sanjeev IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT alu_design_sanjeev
    PORT(
         a : IN  std_logic_vector(2 downto 0);
         b : IN  std_logic_vector(2 downto 0);
         c : IN  std_logic_vector(2 downto 0);
         d : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(2 downto 0) := (others => '0');
   signal b : std_logic_vector(2 downto 0) := (others => '0');
   signal c : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal d : std_logic_vector(2 downto 0);
  
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: alu_design_sanjeev PORT MAP (
          a => a,
          b => b,
          c => c,
          d => d
        );

   
--
   -- Stimulus process
   stim_proc: process
		begin		
      -- hold reset state for 100 ns.
		a<="101"; b<="111";  
		c<="001";
		wait for 100 ns;
		
		a<="101"; b<="111";  
		c<="000";
		wait for 100 ns;
		
		a<="101"; b<="111";  
		c<="010";
      wait for 10 ns;
		
		a<="101"; b<="111";  
		c<="011";
      wait for 10 ns;
		
		a<="101"; b<="111";  
		c<="100";
      wait for 10 ns;
		
		a<="101"; b<="111";  
		c<="101";
      wait for 10 ns;
		
		a<="101"; b<="111";  
		c<="110";
      wait for 10 ns;
		
		a<="101"; b<="111";  
		c<="111";
      wait for 10 ns;
      
          

      
   end process;

END;
