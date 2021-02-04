library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity MOTOR_TIMER_tb is
end;

architecture bench of MOTOR_TIMER_tb is

  component MOTOR_TIMER
  Port ( 
  		MOTOR_GO 	: in std_logic;
  		MOTOR_READY : in std_logic;
  		CLK			: in std_logic;
  		RESET 		: in std_logic;
  		MOTOR_ERROR : out std_logic
  );
  end component;

  signal MOTOR_GO		: std_logic := '0';
  signal MOTOR_READY	: std_logic := '0';
  signal CLK			: std_logic := '0';
  signal RESET			: std_logic := '0';
  signal MOTOR_ERROR	: std_logic ;

  constant clock_period: time := 1 sec/8192;
  signal stop_the_clock: boolean;

begin

  uut: MOTOR_TIMER port map ( MOTOR_GO    => MOTOR_GO,
                              MOTOR_READY => MOTOR_READY,
                              CLK         => CLK,
                              RESET       => RESET,
                              MOTOR_ERROR => MOTOR_ERROR );

  stimulus: process
  begin
	RESET       <= '1';
    MOTOR_GO    <= '1';
	
    wait for 3*clock_period;
    RESET    <= '0';
    MOTOR_GO <= '0';

    wait for 2.1 sec; 
    MOTOR_GO <= '1';
	
    wait for clock_period;
    MOTOR_GO <= '0';
	
    wait for 2.1 sec;
    MOTOR_GO    <= '1';
	
    wait for clock_period;
    MOTOR_GO    <= '0';
	
    wait for 1.9 sec;
    MOTOR_READY <= '1';
	
    wait for clock_period;
    MOTOR_READY <= '0';
	

    wait for 2.1 sec;

	-- simulate 10 more sec 
    wait;
  end process;

  clocking: process
  begin
    while not stop_the_clock loop
      CLK <= '0', '1' after clock_period / 2;
      wait for clock_period;
    end loop;
    wait;
  end process;

end;