----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:27:29 12/30/2020 
-- Design Name: 
-- Module Name:    decoder - Behavioral 
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

entity decoder is
port(
		inValue: in std_logic_vector(4 downto 0); 
		outValue: out std_logic_vector(7 downto 0));
end decoder;

architecture Behavioral of decoder is

begin
with inValue select outValue <= 
	"00000011" WHEN "00000", --0
	"10011111" WHEN "00001", --1
	"00100101" WHEN "00010", --2
	"00001101" WHEN "00011", --3
	"10011001" WHEN "00100", --4
	"01001001" WHEN "00101", --5
	"01000001" WHEN "00110", --6
	"00011111" WHEN "00111", --7
	"00000001" WHEN "01000", --8
	"00001001" WHEN "01001", --9
	"01100011" WHEN "01010", --C
	"01100001" WHEN "01011", --E of Error
	"11000101" WHEN "01100", --o of Offer
	"00110001" WHEN "01101", --P of Prize
	"01001001" WHEN "11010", --S
	"00010001" WHEN "01111", --R
	"10010001" WHEN "11111", --H
	"11111111" WHEN OTHERS;

end Behavioral;

