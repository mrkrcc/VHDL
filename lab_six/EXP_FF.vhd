library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.P_DISPLAY.All;

entity EXP_FF is
Port ( 
KEY 		: in  T_DIGITS;
CLK			: in  std_logic;
RESET		: in  std_logic;
EXP_TIME	: out T_DIGITS
);
end EXP_FF;

architecture Behavioral of EXP_FF is

begin
process(KEY,RESET,CLK)
begin
	if RESET = '1' then
	
		EXP_TIME <= (0,0,1); -- mapped to display values other than (0,0,0) by the decoder
	
	elsif (rising_edge(CLK)) then
	
		if (KEY /= (0,0,0)) then -- mapped to display values other than (0,0,0) by the decoder
		
			EXP_TIME <= KEY;
			
		end if;
	
	end if;

end process;
end Behavioral;
