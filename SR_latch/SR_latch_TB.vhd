----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.07.2020 13:07:21
-- Design Name: 
-- Module Name: SR_latch_TB - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SR_latch_tb is
end;

architecture bench of SR_latch_tb is

  component SR_latch
      Port ( S : in STD_LOGIC;
             R : in STD_LOGIC;
             Q : inout STD_LOGIC;
             Qn : inout STD_LOGIC);
  end component;

  signal S: STD_LOGIC := '0';
  signal R: STD_LOGIC := '0';
  signal Q: STD_LOGIC;
  signal Qn: STD_LOGIC;

begin

  uut: SR_latch port map ( S  => S,
                           R  => R,
                           Q  => Q,
                           Qn => Qn );

  stimulus: process
  begin
  
    -- Put initialisation code here
    wait for 100 ns;
        S<='0' ;
        R<='0' ;
    wait for 100 ns;
        S<='0' ;
        R<='0' ;
    wait for 100 ns;
        S<='0' ;
        R<='1' ;
    wait for 100 ns;
        S<='0' ;
        R<='1' ;
    wait for 100 ns;
        S<='1' ;
        R<='0' ;
    wait for 100 ns;
        S<='1' ;
        R<='0' ;
    wait for 100 ns;
        S<='1' ;
        R<='1' ;
    -- Put test bench stimulus code here

    wait;
  end process;


end;