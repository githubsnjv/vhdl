--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:57:11 02/09/2022
-- Design Name:   
-- Module Name:   G:/vhdl code/twobit_comparator_sanjeev/twobit_tb_sanjeev.vhd
-- Project Name:  twobit_comparator_sanjeev
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: twobit_design_sanjeev
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
 
ENTITY twobit_tb_sanjeev IS
END twobit_tb_sanjeev;
 
ARCHITECTURE behavior OF twobit_tb_sanjeev IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT twobit_design_sanjeev
    PORT(
         a : in  STD_LOGIC_VECTOR (1 downto 0);
           b : in  STD_LOGIC_VECTOR (1 downto 0);
         x : OUT  std_logic;
         y : OUT  std_logic;
         z : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(1 downto 0) := (others => '0');
   signal B : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal x : std_logic;
   signal y : std_logic;
   signal z : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: twobit_design_sanjeev PORT MAP (
          a => a,
          b => b,
          x => x,
          y => y,
          z => z
        );

  

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		
		a<="00"; b<="00";
      wait for 100 ns;	

		a<="00"; b<="01";
      wait for 100 ns;

		a<="00"; b<="10";
      wait for 100 ns;	

		a<="00"; b<="11";
      wait for 100 ns;	

-----------------------------------

		a<="01"; b<="00";
      wait for 100 ns;	

		a<="01"; b<="01";
      wait for 100 ns;

		a<="01"; b<="10";
      wait for 100 ns;	

		a<="01"; b<="11";
      wait for 100 ns;	

------------------------------------
		a<="10"; b<="00";
      wait for 100 ns;	

		a<="10"; b<="01";
      wait for 100 ns;

		a<="10"; b<="10";
      wait for 100 ns;	

		a<="10"; b<="11";
      wait for 100 ns;	

-------------------------------------
		a<="11"; b<="00";
      wait for 100 ns;	

		a<="11"; b<="01";
      wait for 100 ns;

		a<="11"; b<="10";
      wait for 100 ns;	

		a<="11"; b<="11";
      wait for 100 ns;	

      wait;
   end process;

END;
