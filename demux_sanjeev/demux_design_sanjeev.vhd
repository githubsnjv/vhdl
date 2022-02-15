----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:58:55 02/09/2022 
-- Design Name: 
-- Module Name:    demux_design_sanjeev - Behavioral 
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

entity demux_design_sanjeev is
    Port ( i : in  STD_LOGIC;
           s0 : in  STD_LOGIC;
           s1 : in  STD_LOGIC;
           y3 : out  STD_LOGIC;
           y2 : out  STD_LOGIC;
           y1 : out  STD_LOGIC;
           y0 : out  STD_LOGIC);
end demux_design_sanjeev;

architecture Behavioral of demux_design_sanjeev is

begin

		y3<=s1 and  s0 and i;
		y2<= s1 and (not s0) and i;
		y1<= (not s1) and s0 and i;
		y0<= (not s1) and (not s0) and i;


end Behavioral;

