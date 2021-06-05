--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:41:35 01/01/2021
-- Design Name:   
-- Module Name:   C:/.Xilinx/deneme/sim.vhd
-- Project Name:  deneme
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: main
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY sim IS
END sim;
 
ARCHITECTURE behavior OF sim IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT main
    PORT(
         CLK : IN  std_logic;
         case_no : IN  std_logic_vector(3 downto 0);
         button : IN  std_logic;
         no_Deal_button : IN  std_logic;
         Deal_button : IN  std_logic;
         SevenSegControl : OUT  std_logic_vector(7 downto 0);
         SevenSegBus : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal case_no : std_logic_vector(3 downto 0) := (others => '0');
   signal button : std_logic := '0';
   signal no_Deal_button : std_logic := '0';
   signal Deal_button : std_logic := '0';

 	--Outputs
   signal SevenSegControl : std_logic_vector(7 downto 0);
   signal SevenSegBus : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: main PORT MAP (
          CLK => CLK,
          case_no => case_no,
          button => button,
          no_Deal_button => no_Deal_button,
          Deal_button => Deal_button,
          SevenSegControl => SevenSegControl,
          SevenSegBus => SevenSegBus
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for CLK_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
