----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.07.2020 13:31:30
-- Design Name: 
-- Module Name: dort_bir_mux_TB - Behavioral
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

entity dort_bir_mux_tb is
end;

architecture bench of dort_bir_mux_tb is

  component dort_bir_mux
      Port ( I : in STD_LOGIC_VECTOR (3 downto 0);
             S : in STD_LOGIC_VECTOR (1 downto 0);
             Y : out STD_LOGIC);
  end component;

  signal I: STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
  signal S: STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
  signal Y: STD_LOGIC;

begin

  uut: dort_bir_mux port map ( I => I,
                               S => S,
                               Y => Y );

  stimulus: process
  begin
  
    -- Put initialisation code here
    wait for 100 ns;
        I<="0000" ;
        S<="00" ;
    wait for 100 ns;
        I<="0100" ;
        S<="10" ;
    wait for 100 ns;
        I<="0001" ;
        S<="01" ;
    wait for 100 ns;
        I<="0111" ;
        S<="00" ;
    wait for 100 ns;
        I<="0010" ;
        S<="11" ;
    wait for 100 ns;
        I<="1000" ;
        S<="11" ;
    wait for 100 ns;
        I<="1100" ;
        S<="10" ;


    -- Put test bench stimulus code here

    wait;
  end process;


end;