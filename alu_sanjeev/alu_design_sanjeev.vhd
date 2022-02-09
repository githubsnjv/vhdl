----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:27:33 02/09/2022 
-- Design Name: 
-- Module Name:    alu_design_sanjeev - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity alu_design_sanjeev is
    Port ( a : in  STD_LOGIC_VECTOR (2 downto 0);
           b : in  STD_LOGIC_VECTOR (2 downto 0);
           c : in  STD_LOGIC_VECTOR (2 downto 0);
           d : out  STD_LOGIC_VECTOR (2 downto 0));
end alu_design_sanjeev;

architecture Behavioral of alu_design_sanjeev is

begin
	
process (a,b,c) is
begin
		case(c) is
			when "000"=> d <= a + b;
	when "001"=> d <= a - b;
	when "010"=> d <= a*b;
	when "011"=> d <= a and b;
	when "100"=> d <= a or b;
	when "101"=> d <= a nand b;
	when "110"=> d <= a nor b;
	when "111"=> d <= a xor b;
	when others => NULL;
			end case;
end process;


end Behavioral;

