
library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity DISP_MUX_tb is
end;

architecture bench of DISP_MUX_tb is

  component DISP_MUX
  port( 
  NO_PICS  	: in integer range 0 to 100;
  EXP_TIME 	: in integer range 0 to 100;
  ERROR 		: in std_logic;
  SHOW_TIME 	: in std_logic;
  DISP_PHOTO  : out integer range 0 to 100
  );
  end component;

  signal NO_PICS		: integer range 0 to 100	:= 0;
  signal EXP_TIME		: integer range 0 to 100	:= 0;
  signal ERROR			: std_logic := '0';
  signal SHOW_TIME		: std_logic := '0';
  signal DISP_PHOTO		: integer range 0 to 100 ;

begin

  uut: DISP_MUX port map ( NO_PICS    => NO_PICS,
                           EXP_TIME   => EXP_TIME,
                           ERROR      => ERROR,
                           SHOW_TIME  => SHOW_TIME,
                           DISP_PHOTO => DISP_PHOTO );

  stimulus: process
  begin
  
    wait for 100ns;
	
		NO_PICS 	<= 2;
		EXP_TIME 	<= 5;
	wait for 100ns;
	
		NO_PICS 	<= 10;
	wait for 100ns; 
		SHOW_TIME	<= '1';
	wait for 100ns;
		NO_PICS 	<= 6;
		EXP_TIME 	<= 4;
	wait for 100ns;
		SHOW_TIME 	<= '0';
	wait for 100ns;
		ERROR 		<= '1';
	wait for 100ns;
		SHOW_TIME	<= '1';
	wait for 100ns; 
		ERROR		<= '0';
	wait for 100ns;
		SHOW_TIME	<= '0';
	wait for 100ns;
    wait;
  end process;


end;