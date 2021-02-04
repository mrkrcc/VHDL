----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.07.2020 15:34:19
-- Design Name: 
-- Module Name: fourbitcomparator_TB - Behavioral
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

entity fourbitcomparator_tb is
end;

architecture bench of fourbitcomparator_tb is

  component fourbitcomparator
      Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
             B : in STD_LOGIC_VECTOR (3 downto 0);
             G : out STD_LOGIC;
             L : out STD_LOGIC;
             E : out STD_LOGIC);
  end component;

  signal A: STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
  signal B: STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
  signal G: STD_LOGIC;
  signal L: STD_LOGIC;
  signal E: STD_LOGIC;

begin

  uut: fourbitcomparator port map ( A => A,
                                    B => B,
                                    G => G,
                                    L => L,
                                    E => E );

  stimulus: process
  begin
  
    -- Put initialisation code here
    wait for 100 ns ;
        A<="0011";
        B<="0010";
    wait for 100 ns ;
        A<="1010";
        B<="1011";
    wait for 100 ns ;
        A<="0100";
        B<="1000";
    wait for 100 ns ;
        A<="1111";
        B<="1110";
    wait for 100 ns ;
        A<="0101";
        B<="0101";
    wait for 100 ns ;
        A<="1111";
        B<="1111";
    wait for 100 ns ;
        A<="1011";
        B<="0100";
    wait for 100 ns ;
        A<="1111";
        B<="1110";
    wait for 100 ns ;
        A<="1011";
        B<="1010";

    -- Put test bench stimulus code here

    wait;
  end process;


end;