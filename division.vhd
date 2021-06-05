----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:58:01 01/01/2021 
-- Design Name: 
-- Module Name:    division - Behavioral 
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
library ieee;
use ieee.std_logic_1164.all;

entity division is
port ( a : in integer range 0 to 255;
b : in integer range 0 to 17;
quo : out integer range 0 to 17);
end division;

architecture structure of division is

begin
process(a,b)
variable var : integer range 0 to 255;
variable count,i : integer range 0 to 127;

begin
i:=0; var:=a;count:=0;
for i in 127 downto 0 loop
if (var>=b) then var :=var-b;count:=count+1;
else
quo<=count;exit;
end if;
end loop;
end process;
end structure;

