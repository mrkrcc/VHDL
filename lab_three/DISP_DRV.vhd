library ieee;
use ieee.std_logic_1164.all;
use work.P_DISPLAY.all;


entity DISP_DRV is
port(
ERROR      : in  std_logic;
SHOW_TIME  : in  std_logic;
NO_PICS    : in  T_DIGITS;
EXP_TIME   : in  T_DIGITS;
DISPLAY    : out T_DISPLAY
);
end DISP_DRV;

architecture Behavioral of DISP_DRV is

signal DISP_PHOTO : T_DIGITS;

begin
PR_DISP_MUX:process (SHOW_TIME, ERROR, EXP_TIME, NO_PICS)
begin
    if ERROR = '1' then
	
      DISP_PHOTO <= 10;
	  
    elsif SHOW_TIME = '0' then 
	
      DISP_PHOTO <= NO_PICS;
	  
    else
	
      DISP_PHOTO <= EXP_TIME;
	  
    end if;
end process PR_DISP_MUX;

DECODE: process (DISP_PHOTO)
begin
    case DISP_PHOTO is
      when 0      => DISPLAY <= SEG_0;
      when 1      => DISPLAY <= SEG_1;
      when 2      => DISPLAY <= SEG_2;
      when 3      => DISPLAY <= SEG_3;
      when 4      => DISPLAY <= SEG_4;
      when 5      => DISPLAY <= SEG_5;
      when 6      => DISPLAY <= SEG_6;
      when 7      => DISPLAY <= SEG_7;
      when 8      => DISPLAY <= SEG_8;
      when 9      => DISPLAY <= SEG_9;
      when others => DISPLAY <= SEG_E;
    end case;
	
end process DECODE; 
end Behavioral;
