----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.07.2020 13:58:17
-- Design Name: 
-- Module Name: twohalfadder_TB - Behavioral
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

entity twohalfadder_tb is
end;

architecture bench of twohalfadder_tb is

  component twohalfadder
      Port ( X : in STD_LOGIC;
             Y : in STD_LOGIC;
             Z : in STD_LOGIC;
             S : out STD_LOGIC;
             C : out STD_LOGIC);
  end component;

  signal X: STD_LOGIC := '0';
  signal Y: STD_LOGIC := '0';
  signal Z: STD_LOGIC := '0';
  signal S: STD_LOGIC;
  signal C: STD_LOGIC;

begin

  uut: twohalfadder port map ( X => X,
                               Y => Y,
                               Z => Z,
                               S => S,
                               C => C );

  stimulus: process
  begin
  
    -- Put initialisation code here
     wait for 100 ns;
        X<='0' ;
        Y<='0' ;
        Z<='1' ;        
    wait for 100 ns;
        X<='0' ;
        Y<='1' ;
        Z<='0' ;
    wait for 100 ns;
        X<='0' ;
        Y<='1' ;
        Z<='1' ;     
    wait for 100 ns;
        X<='1' ;
        Y<='0' ;
        Z<='0' ;       
    wait for 100 ns;
        X<='1' ;
        Y<='0' ;
        Z<='1' ;       
    wait for 100 ns;
        X<='1' ;
        Y<='1' ;
        Z<='0' ;       
    wait for 100 ns;
        X<='1' ;
        Y<='1' ;
        Z<='1' ;       
        

    -- Put test bench stimulus code here

    wait;
  end process;


end;