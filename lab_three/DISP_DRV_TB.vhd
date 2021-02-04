library ieee;
use ieee.std_logic_1164.all;
use work.P_DISPLAY.all;

entity DISP_DRV_tb is
end DISP_DRV_tb;

architecture bench of DISP_DRV_tb is 
component DISP_DRV 
	port(
		ERROR      : in  std_logic;
		SHOW_TIME  : in  std_logic;
		NO_PICS    : in  T_DIGITS;
		EXP_TIME   : in  T_DIGITS;
		DISPLAY    : out T_DISPLAY
	);
end component;

signal ERROR     : std_logic :='0';
signal SHOW_TIME : std_logic :='0';
signal NO_PICS   : T_DIGITS;
signal EXP_TIME  : T_DIGITS;
signal DISPLAY   : T_DISPLAY;

begin

uut : DISP_DRV
    port map(
			ERROR     => ERROR,
			NO_PICS   => NO_PICS,
			EXP_TIME  => EXP_TIME, 
			SHOW_TIME => SHOW_TIME, 
			DISPLAY   => DISPLAY
		);

stimulus : process
begin
	wait for 30 ns;
		NO_PICS <= 0;
		EXP_TIME <= 5;

	wait for 20 ns;
		for I in 1 to 10 loop
			NO_PICS <= I;
			wait for 20 ns;
		end loop;

	SHOW_TIME <= '1';

	wait for 20 ns;
		EXP_TIME <= 6;
		NO_PICS <= 4;

	wait for 20 ns;      
		

	wait for 20 ns;
		ERROR <= '1';

	wait for 20 ns;
		SHOW_TIME <= '1';

	wait for 20 ns;
		ERROR <= '0';

	wait for 20 ns;
		SHOW_TIME <= '0';

	wait for 20 ns;

	wait;
end process stimulus;
   
   DISPLAY_DIGIT(DISPLAY);
   
end bench;


