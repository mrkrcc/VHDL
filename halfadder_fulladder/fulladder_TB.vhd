----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.07.2020 13:26:53
-- Design Name: 
-- Module Name: fulladder_TB - Behavioral
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

entity fulladder_tb is
end;

architecture bench of fulladder_tb is

  component fulladder
      Port ( A : in STD_LOGIC;
             B : in STD_LOGIC;
             C : in STD_LOGIC;
             T : out STD_LOGIC;
             F : out STD_LOGIC);
  end component;

  signal A: STD_LOGIC := '0';
  signal B: STD_LOGIC := '0';
  signal C: STD_LOGIC := '0';
  signal T: STD_LOGIC;
  signal F: STD_LOGIC;

begin

  uut: fulladder port map ( A => A,
                            B => B,
                            C => C,
                            T => T,
                            F => F );

  stimulus: process
  begin
  
    -- Put initialisation code here
    wait for 100 ns;
        A<='0' ;
        B<='0' ;
        C<='1' ;        
    wait for 100 ns;
        A<='0' ;
        B<='1' ;
        C<='0' ;
    wait for 100 ns;
        A<='0' ;
        B<='1' ;
        C<='1' ;        
    wait for 100 ns;
        A<='1' ;
        B<='0' ;
        C<='0' ;        
    wait for 100 ns;
        A<='1' ;
        B<='0' ;
        C<='1' ;        
    wait for 100 ns;
        A<='1' ;
        B<='1' ;
        C<='0' ;        
    wait for 100 ns;
        A<='1' ;
        B<='1' ;
        C<='1' ;        
        
        
        
        
        
    -- Put test bench stimulus code here

    wait;
  end process;


end;
