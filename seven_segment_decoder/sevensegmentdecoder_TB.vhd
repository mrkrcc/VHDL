----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.07.2020 16:41:00
-- Design Name: 
-- Module Name: sevensegmentdecoder_TB - Behavioral
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

entity sevensegmentdecoder_tb is
end;

architecture bench of sevensegmentdecoder_tb is

  component sevensegmentdecoder
      Port ( X : in STD_LOGIC;
             Y : in STD_LOGIC;
             Z : in STD_LOGIC;
             W : in STD_LOGIC;
             a : out STD_LOGIC;
             b : out STD_LOGIC;
             c : out STD_LOGIC;
             d : out STD_LOGIC;
             e : out STD_LOGIC;
             f : out STD_LOGIC;
             g : out STD_LOGIC);
  end component;

  signal X: STD_LOGIC := '0' ;
  signal Y: STD_LOGIC := '0' ;
  signal Z: STD_LOGIC := '0' ;
  signal W: STD_LOGIC := '0' ;
  signal a: STD_LOGIC;
  signal b: STD_LOGIC;
  signal c: STD_LOGIC;
  signal d: STD_LOGIC;
  signal e: STD_LOGIC;
  signal f: STD_LOGIC;
  signal g: STD_LOGIC;

begin

  uut: sevensegmentdecoder port map ( X => X,
                                      Y => Y,
                                      Z => Z,
                                      W => W,
                                      a => a,
                                      b => b,
                                      c => c,
                                      d => d,
                                      e => e,
                                      f => f,
                                      g => g );

  stimulus: process
  begin
  
    -- Put initialisation code here
    wait for 100 ns ;
        X<='0' ;
        Y<='0' ;
        Z<='0' ;
        W<='0' ;
    wait for 100 ns ;
        X<='0' ;
        Y<='0' ;
        Z<='0' ;
        W<='1' ;
    wait for 100 ns ;
        X<='0' ;
        Y<='0' ;
        Z<='1' ;
        W<='0' ;
    wait for 100 ns ;
        X<='0' ;
        Y<='0' ;
        Z<='1' ;
        W<='1' ;
    wait for 100 ns ;
        X<='0' ;
        Y<='1' ;
        Z<='0' ;
        W<='0' ;
    wait for 100 ns ;
        X<='0' ;
        Y<='1' ;
        Z<='0' ;
        W<='1' ;
    wait for 100 ns ;
        X<='0' ;
        Y<='1' ;
        Z<='1' ;
        W<='0' ;
    wait for 100 ns ;
        X<='0' ;
        Y<='1' ;
        Z<='1' ;
        W<='1' ;
    wait for 100 ns ;
        X<='1' ;
        Y<='0' ;
        Z<='0' ;
        W<='0' ;
    wait for 100 ns ;
        X<='1' ;
        Y<='0' ;
        Z<='0' ;
        W<='1' ;
    wait for 100 ns ;
        X<='1' ;
        Y<='0' ;
        Z<='1' ;
        W<='0' ;
    wait for 100 ns ;
        X<='1' ;
        Y<='0' ;
        Z<='1' ;
        W<='1' ;
    wait for 100 ns ;
        X<='1' ;
        Y<='1' ;
        Z<='0' ;
        W<='0' ;
    wait for 100 ns ;
        X<='1' ;
        Y<='1' ;
        Z<='0' ;
        W<='1' ;
    wait for 100 ns ;
        X<='1' ;
        Y<='1' ;
        Z<='1' ;
        W<='0' ;
    wait for 100 ns ;
        X<='1' ;
        Y<='1' ;
        Z<='1' ;
        W<='1' ;

    -- Put test bench stimulus code here

    wait;
  end process;


end;