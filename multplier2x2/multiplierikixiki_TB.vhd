----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.07.2020 18:15:11
-- Design Name: 
-- Module Name: multiplierikixiki_TB - Behavioral
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

entity multplieikixiki_tb is
end;

architecture bench of multplieikixiki_tb is

  component multplieikixiki
      Port ( A : in STD_LOGIC_VECTOR (1 downto 0);
             B : in STD_LOGIC_VECTOR (1 downto 0);
             C : out STD_LOGIC_VECTOR (3 downto 0));
  end component;

  signal A: STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
  signal B: STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
  signal C: STD_LOGIC_VECTOR (3 downto 0);

begin

  uut: multplieikixiki port map ( A => A,
                                  B => B,
                                  C => C );

  stimulus: process
  begin
  
    -- Put initialisation code here
    wait for 100 ns ;
        A<="11";
        B<="11";
    wait for 100 ns ;
        A<="10";
        B<="01";
    wait for 100 ns ;
        A<="11";
        B<="10";
    wait for 100 ns ;
        A<="01";
        B<="00";
    wait for 100 ns ;
        A<="11";
        B<="01";


  end process;


end;