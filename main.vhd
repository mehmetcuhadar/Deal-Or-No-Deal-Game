----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:31:20 12/30/2020 
-- Design Name: 
-- Module Name:    main - Behavioral 
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity main is

PORT(
CLK: in STD_LOGIC;
case_no: in STD_LOGIC_VECTOR(3 downto 0); --case number
button: in STD_LOGIC; --used to select the case
start_button: in STD_LOGIC; 
no_Deal_button: in STD_LOGIC;
Deal_button: in STD_LOGIC;
SevenSegControl : OUT std_logic_vector(7 downto 0); 
SevenSegBus : OUT std_logic_vector(7 downto 0)
);

end main;

architecture Behavioral of main is

signal sevenSegmentVector: std_logic_vector(19 downto 0):=x"00000";
signal state: std_logic_vector (1 downto 0) := "00";

--values that go to seven segment
signal leftSegment:std_logic_vector(3 downto 0):="0000";
signal digit_5: std_logic_vector(3 downto 0):= "0000";
signal digit_4: std_logic_vector(3 downto 0):= "0000";
signal digit_3: std_logic_vector(3 downto 0):= "0000";
signal digit_2: std_logic_vector(3 downto 0):= "0000";
signal digit_1: std_logic_vector(3 downto 0):= "0000";
signal digit_0: std_logic_vector(3 downto 0):= "0000";


COMPONENT game is

PORT(
CLK: in STD_LOGIC;
case_no: in STD_LOGIC_VECTOR(3 downto 0); --case number
button: in STD_LOGIC;
start_button: in STD_LOGIC;
no_Deal_button: in STD_LOGIC;
Deal_button: in STD_LOGIC;
SevenSegmentVector : OUT std_logic_vector(19 downto 0);
state : out std_logic_vector (1 downto 0) ;
leftSegment: out std_logic_vector(3 downto 0)
);

end COMPONENT;



COMPONENT sevenSegment 
PORT(
A : IN std_logic_vector(3 downto 0);
B : IN std_logic_vector(3 downto 0);
C : IN std_logic_vector(3 downto 0);
D : IN std_logic_vector(3 downto 0);
E : IN std_logic_vector(3 downto 0);
F : IN std_logic_vector(3 downto 0);
G : IN std_logic_vector(3 downto 0);
H : IN std_logic_vector(3 downto 0);
clk : IN std_logic; 
state : In std_logic_vector (1 downto 0) ;        
SevenSegControl : OUT std_logic_vector(7 downto 0);
SevenSegBus : OUT std_logic_vector(7 downto 0)
);
END COMPONENT;


COMPONENT binaryToBCD --for converting the binary value to BCD
 Port ( BCDT : in  STD_LOGIC_VECTOR (19 downto 0);
		  ones : out  STD_LOGIC_VECTOR (3 downto 0);
		  tens : out  STD_LOGIC_VECTOR (3 downto 0);
		  hundreds : out  STD_LOGIC_VECTOR (3 downto 0);
		  thousands : out  STD_LOGIC_VECTOR (3 downto 0);
		  tenthousands: out STD_LOGIC_VECTOR (3 downto 0);
		  hundredthousands: out STD_LOGIC_VECTOR (3 downto 0)
);
END COMPONENT;


begin

gamer: game PORT MAP(
CLK => clk,
case_no => case_no,
button => button,
start_button => start_button,
no_Deal_button => no_Deal_button,
Deal_button => Deal_button,
SevenSegmentVector => sevenSegmentVector,
state => state,
leftSegment => leftSegment
);

		
Digits: binaryToBCD PORT MAP(sevenSegmentVector,digit_0,digit_1,digit_2,digit_3,digit_4,digit_5);
		
			mySevenSegment: sevenSegment PORT MAP(
			A => digit_1,  
			B => digit_0,
			C => digit_3,
			D => digit_2,  
			E => digit_5,
			F => digit_4,  
			G => leftSegment,
			H => "1110",
			clk => clk,
			state => state,
			SevenSegControl => SevenSegControl,
			SevenSegBus => SevenSegBus
			);


end Behavioral;

