----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.07.2020 14:47:33
-- Design Name: 
-- Module Name: fourbitadder_TB - Behavioral
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

entity fourbitadder_tb is
end;

architecture bench of fourbitadder_tb is

  component fourbitadder
      Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
             B : in STD_LOGIC_VECTOR (3 downto 0);
             S : out STD_LOGIC_VECTOR (3 downto 0);
             C3 : out STD_LOGIC );
  end component;

  signal A: STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
  signal B: STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
  signal S: STD_LOGIC_VECTOR (3 downto 0);
  signal C3: STD_LOGIC ;

begin

  uut: fourbitadder port map ( A  => A,
                               B  => B,
                               S  => S,
                               C3 => C3 );

  stimulus: process
  begin
  
    -- Put initialisation code here
        wait for 100 ns ;
            A<="1010";
            B<="1010";
        wait for 100 ns ;
            A<="1111";
            B<="0101";
        wait for 100 ns ;
            A<="1000";
            B<="1000";        
        wait for 100 ns ;
            A<="0100";
            B<="1100";        
        wait for 100 ns ;
            A<="0101";
            B<="1010";        
        wait for 100 ns ;
            A<="1001";
            B<="1111";        
        wait for 100 ns ;
            A<="0001";
            B<="0000";        

    -- Put test bench stimulus code here

    wait;
  end process;


end;