----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:03:15 02/02/2022 
-- Design Name: 
-- Module Name:    mux2x2_design_sanjeev - Behavioral 
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

entity mux2x2_design_sanjeev is
		port(A,B,S:in std_logic;
		Z:out std_logic);
end mux2x2_design_sanjeev;

architecture Behavioral of mux2x2_design_sanjeev is
		signal s1:std_logic;
		signal s2:std_logic;
		signal s3:std_logic;
begin
		s1<= not S;
		s2<=A and s1;
		s3<= B and S;
		Z<= s2 or s3;


end Behavioral;

