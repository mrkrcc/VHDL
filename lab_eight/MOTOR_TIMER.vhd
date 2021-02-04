library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;

entity MOTOR_TIMER is
Port ( 
		MOTOR_GO 	: in std_logic;
		MOTOR_READY : in std_logic;
		CLK			: in std_logic;
		RESET 		: in std_logic;
		MOTOR_ERROR : out std_logic
);
end MOTOR_TIMER;

architecture Behavioral of MOTOR_TIMER is
signal COUNTER 	: integer range 0 to 16383 ; 
signal COUNT	: std_logic ;	
begin
	process(CLK,RESET)
	begin
		if RESET = '1' then
			
			COUNT		<= '0';
			COUNTER 	<= 0;
			MOTOR_ERROR <= '0';
		
		else	
			
			if rising_edge(CLK) then
				
				MOTOR_ERROR <= '0';
				
				if MOTOR_GO = '1' then
					
					COUNT 	<= '1'; 
					COUNTER <= 0;
				end if;
				
				if MOTOR_READY = '1' then
				
					COUNT <= '0';
					
				end if;
				
				if COUNT = '1' then
				
					if COUNTER /= 16383 then
						
						COUNTER <= COUNTER + 1;
					
					else
						
						COUNT 		<= '0';
						MOTOR_ERROR <= '1';
					
					end if;				
				end if;
			end if;
		end if;

end process;
end Behavioral;
