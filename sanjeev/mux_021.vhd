----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:38:12 01/19/2022 
-- Design Name: 
-- Module Name:    mux_021 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY mux_Testbench_021 IS
END mux_Testbench_021;
 
ARCHITECTURE behavior OF mux_Testbench_021 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux_021
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         c : IN  std_logic;
         d : IN  std_logic;
         s0 : IN  std_logic;
         s1 : IN  std_logic;
         Z : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal c : std_logic := '0';
   signal d : std_logic := '0';
   signal s0 : std_logic := '0';
   signal s1 : std_logic := '0';

 	--Outputs
   signal Z : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
	
	BEGIN
	
	uut: mux_021 PORT MAP(
	a =>a,
	b =>b,
	c =>c,
	d =>d,
	s0 => s0,
	s1 => s1,
	Z => Z
	);
	
	stim_proc : process
	begin
		wait for 100 ns;
		
		a<='1';
		b<='0';
		c<='1';
		d<='0';
		
		S0<='0'; s1<='0';
		wait for 100 ns;
		s0<='1'; s1<='0';
		wait for 100 ns;
		S0<='0'; s1<='1';
		wait for 100 ns;
		s0<='0'; s1<='1';
		wait for 100 ns;
		
		end process;
		
END;