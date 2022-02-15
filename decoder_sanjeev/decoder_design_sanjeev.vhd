----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:21:39 02/09/2022 
-- Design Name: 
-- Module Name:    decoder_design_sanjeev - Behavioral 
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

entity decoder_design_sanjeev is
    Port ( a1 : in  STD_LOGIC;
           a2 : in  STD_LOGIC;
           e : in  STD_LOGIC;
           y3 : out  STD_LOGIC;
           y2 : out  STD_LOGIC;
           y1 : out  STD_LOGIC;
           y0 : out  STD_LOGIC);
end decoder_design_sanjeev;

architecture Behavioral of decoder_design_sanjeev is

begin
	
		y3<=e and a2 and a1;
		y2<= e and a2 and (not a1);
		y1<= e and (not a2) and a1;
		y0<= e and (not a2) and (not a1);

end Behavioral;

