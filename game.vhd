----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:53:40 01/05/2021 
-- Design Name: 
-- Module Name:    game - Behavioral 
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

entity game is

Generic (N : INTEGER:=10*10**6); --10*10ˆ6 Hz Clock

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

end game;



architecture Behavioral of game is

signal clk_div: std_logic;

--array for the value of the cases
type boxes is array (15 downto 0) of integer;
signal cases_value : boxes := (1,10,20,50,100,200,500,1000,2500,5000,10000,25000,50000,100000,250000,500000); 

--array for the checking whether the case is opened
type  boxes_2 is array (15 downto 0) of integer;
signal cases_check : boxes_2 :=(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

--array to determine the array of cases_value
type values is array (15 downto 0) of integer ;
signal money : values := (1,10,20,50,100,200,500,1000,2500,5000,10000,25000,50000,100000,250000,500000); 

--signals to control the transitions
signal b: std_logic:='0';
signal c: std_logic:='0';
signal q: std_logic:='0';
signal cont: std_logic := '0';
signal offer_check: std_logic := '0';

--signals that go to muxs
signal code: std_logic_vector(1 downto 0);
signal offer_select: std_logic_vector(1 downto 0):="00";
signal selector: std_logic_vector(1 downto 0):="00";

--signals for different offer values
signal offer1: integer:=0;
signal offer2: integer:=0;
signal offer3: integer:=0;
signal offer4: integer:=0;

--main signals used for the calculations
signal total_money: integer:=944381; 
signal Case_Counter: integer :=0;
signal case_value:  integer:=0;
signal player_case_value: integer:=0;
signal offer: integer:=0;
signal sevenSegmentBus: integer:=0;
signal x: STD_LOGIC_VECTOR(4 downto 0);
signal state_1: std_logic_vector (1 downto 0) := "00";


begin

--Clock divider
process(clk)

variable Counter : INTEGER range 0 to N;
variable myInt : Integer range 0 to 15; --used for getting the random number
begin
		if rising_edge(CLK) then
			Counter := Counter + 1;
			myInt := myInt+1;
			if (MyInt = 15) then
				MyInt := 0;
				
			end if;

			if (Counter = N/1-1) then
				Counter := 0;
				CLK_DIV <= not CLK_DIV;
			end if;
			if(b='0') then 
				x <= std_logic_vector(to_unsigned(myInt*2+1, 4));--random number;
				
			end if;
		end if;
end process;


process(CLK_DIV)
begin
		if rising_edge(CLK_DIV) then
			if(b='0' and start_button= '1') then --takes the random number x
					b<= '1'; 
				state_1 <= "01";
			end if;
			if(b='1' and start_button= '1') then 
				 assign : for k in 0 to 15 loop -- assigns random values to the cases
							cases_value(k) <= money((k+1)*to_integer(unsigned(x))
							-to_integer(unsigned(std_logic_vector(to_unsigned((k+1)*to_integer(unsigned(x)), 4))& "0000")));
				end loop assign;
				c <= '1';
				state_1 <= "10";
			elsif(c='1') then
				
			   if(button = '1') then
										
					if (Case_Counter = 0 and cont = '0') then --beginning of the game
						cases_check(to_integer(unsigned(case_no))) <= 2; --player's case
						code <= "00";
						player_case_value <= cases_value(to_integer(unsigned(case_no))); --player's case value
						q <= '1';
						state_1 <= "11";
						cont <='1';
					end if;
				
					--opening the cases and keeping track of the offer
					if (offer_check = '0' and q = '1' ) then 
						if (cases_check(to_integer(unsigned(case_no)))=0) then   --if the case was not opened
							case_value <= cases_value(to_integer(unsigned(case_no)));
							total_money <= total_money - cases_value(to_integer(unsigned(case_no)));
							cases_check(to_integer(unsigned(case_no))) <= 1; 
							
							if (Case_Counter = 3 or Case_Counter = 7 or Case_Counter = 11 or Case_Counter = 13 ) then
									offer_check <= '1';			
							end if;
							Case_Counter <= Case_Counter + 1;
							selector <=	"00";	
							code <= "10";
						elsif(cases_check(to_integer(unsigned(case_no)))=1) then --if the case was opened
								selector <=	"01";	
							
						end if;
					end if;
					
					if	(offer_check = '1') then --time for the offer, calculating the offer

							if (Case_Counter=4) then
								
								offer1 <= to_integer(unsigned(shift_right(unsigned(std_logic_vector(to_unsigned(total_money,20))),4)));
								offer_select <= "00";
								selector <=	"10";	
								code <= "01";
							
							elsif (Case_Counter=8) then
								offer2 <= to_integer(unsigned(shift_right(unsigned(std_logic_vector(to_unsigned(total_money,20))),3)));
								offer_select<= "01";
								selector <=	"10";	
								code <= "01";
							
							elsif (Case_Counter=12) then
								offer3 <= to_integer(unsigned(shift_right(unsigned(std_logic_vector(to_unsigned(total_money,20))),2)));
								offer_select<="10";
								selector <=	"10";	
								code <= "01";
								
							elsif (Case_Counter=14) then
								offer4 <= to_integer(unsigned(shift_right(unsigned(std_logic_vector(to_unsigned(total_money,20))),1)));
								offer_select<="11";
								selector <=	"10";	
								code <= "01";
							end if;
		
					end if;
					
				end if;
				if(deal_button = '1' and offer_check = '1') then --the offer is accepted, prize is shown
						selector <= "11";
						
				end if;
				if(no_deal_button = '1' and offer_check = '1') then --offer is rejected, game continues
						selector <= "00";
						offer_check <= '0';
						if (Case_Counter = 14 ) then --end of the game, value of the player's case is shown 
									selector <= "11";
									code <= "11";
						end if;
				end if;
				
			end if;
		end if;
		
		
end process;

	with selector select leftSegment <= --decides the letter code of the number on the seven segment display
		"1110" WHEN "00", --value
		"1011" WHEN "01", --error
		"1100" WHEN "10", --offer
		"1101" WHEN "11", --prize
		"0000" WHEN OTHERS;
		
	with offer_select select offer <= --decides the offer
		offer1 WHEN "00",
		offer2 WHEN "01",
		offer3 WHEN "10",
		offer4 WHEN "11",
		0 WHEN OTHERS;
		
	with code select sevenSegmentBus <= --decides what will be shown on the seven segment display
		0 WHEN "00",
		offer WHEN "01",
		case_value WHEN "10",
		player_case_value WHEN "11",
		0 WHEN OTHERS;
		
		
sevenSegmentVector <= std_logic_vector(to_unsigned(sevenSegmentBus,sevenSegmentVector'length));	--value of the seven segment
state <= state_1;	--decides the phase of the game
	
		

end Behavioral;

