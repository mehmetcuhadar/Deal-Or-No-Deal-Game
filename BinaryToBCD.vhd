----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:31:46 01/01/2021 
-- Design Name: 
-- Module Name:    BinaryToBCD - Behavioral 
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
use IEEE.numeric_std.all;


entity BinaryToBCD is
    Port ( BCDT : in  STD_LOGIC_VECTOR (19 downto 0);
           ones : out  STD_LOGIC_VECTOR (3 downto 0);
           tens : out  STD_LOGIC_VECTOR (3 downto 0);
           hundreds : out  STD_LOGIC_VECTOR (3 downto 0);
           thousands : out  STD_LOGIC_VECTOR (3 downto 0);
			  tenthousands: out STD_LOGIC_VECTOR (3 downto 0);
			  hundredthousands: out STD_LOGIC_VECTOR (3 downto 0)
          );
end BinaryToBCD;

architecture Behavioral of BinaryToBCD is

begin

bcd1: process(BCDT)

  
  variable temp : STD_LOGIC_VECTOR (19 downto 0);
  
  

  variable bcd : UNSIGNED (23 downto 0) := (others => '0');

  
  
  begin
    bcd := (others => '0');
    
  
    temp(19 downto 0) := BCDT;
    
   
    for i in 0 to 19 loop
    
      if bcd(3 downto 0) > 4 then 
        bcd(3 downto 0) := bcd(3 downto 0) + 3;
      end if;
      
      if bcd(7 downto 4) > 4 then 
        bcd(7 downto 4) := bcd(7 downto 4) + 3;
      end if;
     if bcd(11 downto 8) > 4 then  
        bcd(11 downto 8) := bcd(11 downto 8) + 3;
      end if;
		
		if bcd(15 downto 12) > 4 then  
        bcd(15 downto 12) := bcd(15 downto 12) + 3;
      end if;
		
		if bcd(19 downto 16) > 4 then  
        bcd(19 downto 16) := bcd(19 downto 16) + 3;
      end if;
    
      
      bcd := bcd(22 downto 0) & temp(19);
    
     
      temp := temp(18 downto 0) & '0';
    
    end loop;
 
    
    ones <= STD_LOGIC_VECTOR(bcd(3 downto 0));
    tens <= STD_LOGIC_VECTOR(bcd(7 downto 4));
    hundreds <= STD_LOGIC_VECTOR(bcd(11 downto 8));
    thousands <= STD_LOGIC_VECTOR(bcd(15 downto 12));
	 tenthousands <= STD_LOGIC_VECTOR(bcd(19 downto 16));
    hundredthousands <= STD_LOGIC_VECTOR(bcd(23 downto 20));


	 
  
  end process bcd1;            
  
end Behavioral;

