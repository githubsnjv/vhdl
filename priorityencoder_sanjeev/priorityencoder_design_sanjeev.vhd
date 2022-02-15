----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:50:58 02/09/2022 
-- Design Name: 
-- Module Name:    priorityencoder_design_sanjeev - Behavioral 
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

entity priorityencoder_design_sanjeev is
    Port ( y0 : in  STD_LOGIC;
           y1 : in  STD_LOGIC;
           y2 : in  STD_LOGIC;
           y3 : in  STD_LOGIC;
           y4 : in  STD_LOGIC;
           y5 : in  STD_LOGIC;
           y6 : in  STD_LOGIC;
           y7 : in  STD_LOGIC;
           a0 : out  STD_LOGIC;
           a1 : out  STD_LOGIC;
           a2 : out  STD_LOGIC);
end priorityencoder_design_sanjeev;

architecture Behavioral of priorityencoder_design_sanjeev is

begin
	a2<= y7 or y6 or y5 or y4;
	a1<=y7 or y6  or y3 or y2;
	a0<= y7 or y5 or y3 or y1;

end Behavioral;

