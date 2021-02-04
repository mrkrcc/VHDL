----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.07.2020 12:22:43
-- Design Name: 
-- Module Name: halfadder_TB - Behavioral
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

entity halfadder_tb is
end;

architecture bench of halfadder_tb is

  component halfadder
      Port ( A : in STD_LOGIC;
             B : in STD_LOGIC;
             T : out STD_LOGIC;
             F : out STD_LOGIC);
  end component;

  signal A: STD_LOGIC := '0';
  signal B: STD_LOGIC := '0';
  signal T: STD_LOGIC;
  signal F: STD_LOGIC;

begin

  uut: halfadder port map ( A => A,
                            B => B,
                            T => T,
                            F => F );

  stimulus: process
  begin
  
    -- Put initialisation code here
        wait for 100 ns;
            A<='0' ;
            B<='0' ;
        wait for 100 ns;
            A<='0' ;
            B<='1' ;
        wait for 100 ns;
            A<='1' ;
            B<='0' ;
        wait for 100 ns;
            A<='1' ;
            B<='1' ;                         
        -- Put test bench stimulus code here

    wait;
  end process;


end;