----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:18:28 02/09/2022 
-- Design Name: 
-- Module Name:    fourbitadder_design_sanjeev - Behavioral 
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fourbitadder_design_sanjeev is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           c : in  STD_LOGIC;
           sum4 : out STD_LOGIC_VECTOR (3 downto 0);
           car4 : out  STD_LOGIC);
end fourbitadder_design_sanjeev;

architecture Behavioral of fourbitadder_design_sanjeev is
		
		component fulladder_design_sanjeev is
			Port ( p : in  STD_LOGIC;
           q : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           cout : out  STD_LOGIC);
		end component;
	
		signal carry : std_logic_vector(2 downto 0);
	
begin
		
		ha1:fulladder_design_sanjeev port map(
			
			p=>a(0),q=>b(0),cin=>c,sum=>sum4(0),cout=>carry(0)
		
		);
		
		ha2:fulladder_design_sanjeev port map(
			
			p=>a(1),q=>b(1),cin=>carry(0),sum=>sum4(1),cout=>carry(1)
		
		);
		
		ha3:fulladder_design_sanjeev port map(
			
			p=>a(2),q=>b(2),cin=>carry(1),sum=>sum4(2),cout=>carry(2)
		
		);
		
		ha4:fulladder_design_sanjeev port map(
			
			p=>a(3),q=>b(3),cin=>carry(2),sum=>sum4(3),cout=>car4
		
		);
		
		
		
		


end Behavioral;

