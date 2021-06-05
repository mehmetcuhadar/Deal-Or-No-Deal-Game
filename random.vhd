----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:50:00 12/30/2020 
-- Design Name: 
-- Module Name:    random - Behavioral 
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


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;


entity random is
    Port ( clk : in  STD_LOGIC;
			chooser : in std_logic;
         genVal : out integer);
end random;

architecture Behavioral of random is

signal count : integer := 0;

begin

process(clk) is
	begin
	if rising_edge(clk) then
			count <= count + 1;
			if ( count = 15) then
				count <= 0;
			end if;
			if (chooser = '1') then
				genVal <= count;
			end if;
	end if;
		
	
end process;
end Behavioral;



