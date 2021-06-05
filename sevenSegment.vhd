----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:30:50 12/30/2020 
-- Design Name: 
-- Module Name:    sevenSegment - Behavioral 
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


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sevenSegment is
port( A: in std_logic_vector(3 downto 0);
		B: in std_logic_vector(3 downto 0);
		C: in std_logic_vector(3 downto 0);
		D: in std_logic_vector(3 downto 0);
		E: in std_logic_vector(3 downto 0);
		F: in std_logic_vector(3 downto 0);
		G: in std_logic_vector(3 downto 0);
		H: in std_logic_vector(3 downto 0);
		clk:in std_logic; 
		state : in std_logic_vector (1 downto 0) ;
		SevenSegControl: out std_logic_vector (7 downto 0):=x"ff";
		SevenSegBus: out std_logic_vector (7 downto 0));
end sevenSegment;

architecture Behavioral of sevenSegment is
signal clkTrigger: std_logic;
signal sevenSegValue: std_logic_vector(4 downto 0);
signal A_1: std_logic_vector(4 downto 0);
signal B_1: std_logic_vector(4 downto 0);
signal C_1: std_logic_vector(4 downto 0);
signal D_1: std_logic_vector(4 downto 0);
signal E_1: std_logic_vector(4 downto 0);
signal F_1: std_logic_vector(4 downto 0);
signal G_1: std_logic_vector(4 downto 0);
signal H_1: std_logic_vector(4 downto 0);


begin
SlowClock: entity work.slowerClock port map(
		clk=>clk, 
		slowClock => clkTrigger);
	
	H_1 <= H + "10000";
	process(state,G)
	begin
		if(state = "11") then
			G_1 <= G + "00000";
		else

			G_1 <= G + "10000";
		end if;
	end process;
	
	with state select A_1 <= 
		"11010" WHEN "00", --PRESS
		"11010" WHEN "01", --2PRESS
		"11010" WHEN "10", --CHOOSE
		"00000" + A WHEN "11", --values
		"00000" WHEN OTHERS;
	with state select B_1 <= 
		"11010" WHEN "00", --PRESS
		"11010" WHEN "01", --2PRESS
		"01011" WHEN "10", --CHOOSE
		"00000" +B WHEN "11", --values
		"00000" WHEN OTHERS;
	with state select C_1 <= 
		"01111" WHEN "00", --PRESS
		"01111" WHEN "01", --2PRESS
		"01100" WHEN "10", --CHOOSE
		"00000" +C WHEN "11", --values
		"00000" WHEN OTHERS;
	with state select D_1 <= 
		"01011" WHEN "00", --PRESS
		"01011" WHEN "01", --2PRESS
		"01100" WHEN "10", --CHOOSE
		"00000" +D WHEN "11", --values
		"00000" WHEN OTHERS;
	with state select E_1 <= 
		"10101" WHEN "00", --PRESS
		"00010" WHEN "01", --2PRESS
		"01010" WHEN "10", --CHOOSE
		"00000" +E WHEN "11", --values
		"00000" WHEN OTHERS;
	with state select F_1 <= 
		"01101" WHEN "00", --PRESS
		"01101" WHEN "01", --2PRESS
		"11111" WHEN "10", --CHOOSE
		"00000" + F WHEN "11", --values
		"00000" WHEN OTHERS;
	
Driver: entity work.driver port map ( 
		clk=>clkTrigger, 
		A=>A_1, 
		B=>B_1, 
		C=>C_1, 
		D=>D_1, 
		E=>E_1,
		F=>F_1,
		G=>G_1,
		H=>H_1,
		sevenSegValue => sevenSegValue, 
		sevenSegNumber => sevenSegControl);

Decoder: entity work.decoder port map (
		inValue =>sevenSegValue,  
		outValue => sevenSegBus);


end Behavioral;



