library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;
use work.P_DISPLAY.all;

entity EXP_FF_TB is
end EXP_FF_TB;

architecture bench of EXP_FF_tb is

  component EXP_FF
  Port ( 
  KEY 		: in  T_DIGITS;
  CLK		: in  std_logic;
  RESET		: in  std_logic;
  EXP_TIME	: out T_DIGITS
  );
  end component;

  signal KEY: T_DIGITS;
  signal CLK: std_logic;
  signal RESET: std_logic 	:= '0';
  signal EXP_TIME: T_DIGITS ;

  constant clock_period: time := 10 ns;
  signal stop_the_clock: boolean;

begin

  uut: EXP_FF port map ( KEY      => KEY,
                         CLK      => CLK,
                         RESET    => RESET,
                         EXP_TIME => EXP_TIME );

  stimulus: process
  begin
	
		KEY 	<= (0,0,0);
		RESET 	<= '1';
		
    wait for 5 ns;
		RESET 	<= '0';
		
    wait for 5 ns;
		KEY <= (1,2,3);
    
	wait for 5 ns;
		KEY <= (2,2,3);
		
	wait for 15 ns;
		KEY <= (0,3,5);

	wait for 5 ns;
	
    assert false report "End of stimuli reached"
				severity failure;
    wait;
  end process stimulus;

  clocking: process
  begin
    while not stop_the_clock loop
      CLK <= '0', '1' after clock_period / 2;
      wait for clock_period;
    end loop;
    wait;
	end process clocking;
end bench;