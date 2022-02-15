----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:13:49 02/08/2022 
-- Design Name: 
-- Module Name:    fulladder_design_sanjeev - Behavioral 
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

entity fulladder_design_sanjeev is
    Port ( p : in  STD_LOGIC;
           q : in  STD_LOGIC;
           r : in  STD_LOGIC;
           sumfull : out  STD_LOGIC;
           carryfull : out STD_LOGIC
           );
end fulladder_design_sanjeev;

architecture Behavioral of fulladder_design_sanjeev is


			component halfadder_design_sanjeev is
			Port ( a : in  STD_LOGIC;
				b : in  STD_LOGIC;
				sum : out  STD_LOGIC;
				carry : out  STD_LOGIC);
			end component;
		
				signal sum1: std_logic;
	signal sum2: std_logic;
	signal carry1: std_logic;
	signal carry2: std_logic;


begin
		
	HALFADDER1:halfadder_design_sanjeev
			port map(
						a=>p,
						b=>q,
						sum=>sum1,
						carry=>carry1);
	
	HALFADDER2:halfadder_design_sanjeev
			port map(
				a=>r,
				b=>sum1,
				sum=>sum2,
				carry=>carry2);
				
			sumfull<=sum2;
			carryfull<=carry1 or carry2;	
			
				
end Behavioral;

