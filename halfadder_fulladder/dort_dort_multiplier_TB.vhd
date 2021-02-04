----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.07.2020 16:01:28
-- Design Name: 
-- Module Name: dort_dort_multiplier_TB - Behavioral
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

entity dort_dort_multiplier_tb is
end;

architecture bench of dort_dort_multiplier_tb is

  component dort_dort_multiplier
      Port ( K : in STD_LOGIC_VECTOR (3 downto 0);
             L : in STD_LOGIC_VECTOR (3 downto 0);
             O : out STD_LOGIC_VECTOR (7 downto 0));
  end component;

  signal K: STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
  signal L: STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
  signal O: STD_LOGIC_VECTOR (7 downto 0);

begin

  uut: dort_dort_multiplier port map ( K => K,
                                       L => L,
                                       O => O );

  stimulus: process
  begin
  
    -- Put initialisation code here
    wait for 100 ns ;
        K<="0001" ;
        L<="0000" ;
    wait for 100 ns ;
        K<="0001" ;
        L<="0001" ;
    wait for 100 ns ;
        K<="0010" ;
        L<="0010" ;
    wait for 100 ns ;
        K<="1111" ;
        L<="0100" ;
    wait for 100 ns ;
        K<="1010" ;
        L<="1000" ;
    wait for 100 ns ;
        K<="1111" ;
        L<="1000" ;
    wait for 100 ns ;
        K<="1111" ;
        L<="0001" ;
    wait for 100 ns ;
        K<="1111" ;
        L<="0000" ;
    wait for 100 ns ;
        K<="1101" ;
        L<="0010" ;

    -- Put test bench stimulus code here

    wait;
  end process;


end;