----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:39:18 12/30/2020 
-- Design Name: 
-- Module Name:    mux - Behavioral 
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

entity mux is

PORT(
S: in STD_LOGIC_VECTOR(1 downto 0);
Output: out STD_LOGIC_VECTOR(3 downto 0)
);

end mux;

architecture Behavioral of mux is

begin

with S select Output <= 
	"0000" WHEN "00", --0
	"0100" WHEN "01", --1
	"0010" WHEN "10", --2
	"1111" WHEN "11", --F
	"0000" WHEN OTHERS;


end Behavioral;

