
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity DISP_MUX is
port( 
NO_PICS  	: in integer range 0 to 100;
EXP_TIME 	: in integer range 0 to 100;
ERROR 		: in std_logic;
SHOW_TIME 	: in std_logic;
DISP_PHOTO  : out integer range 0 to 100
);
end DISP_MUX;

architecture Behavioral of DISP_MUX is

begin
process(SHOW_TIME,NO_PICS,EXP_TIME,ERROR)
begin
	if ERROR = '1' then
		
		DISP_PHOTO <= 10;
	
	else
		if SHOW_TIME = '1'  then
	
			DISP_PHOTO <= EXP_TIME;
		
		else	
	
			DISP_PHOTO <= NO_PICS;
		
		end if;
	
	end if;
end process;
end Behavioral;
