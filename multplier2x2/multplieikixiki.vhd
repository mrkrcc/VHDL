----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.07.2020 16:49:04
-- Design Name: 
-- Module Name: multplieikixiki - Behavioral
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

entity multplieikixiki is
    Port ( A : in STD_LOGIC_VECTOR (1 downto 0);
           B : in STD_LOGIC_VECTOR (1 downto 0);
           C : out STD_LOGIC_VECTOR (3 downto 0));
end multplieikixiki;

architecture Behavioral of multplieikixiki is
component halfadder 
    Port ( X : in STD_LOGIC;
           Y : in STD_LOGIC;
           T : out STD_LOGIC;
           F : out STD_LOGIC);
end component;
signal f0,f1,f2,f3 : STD_LOGIC ;
begin
h1 : halfadder port map (f0,f1,C(1),f2) ;
h2 : halfadder port map (f2,f3,C(2),C(3)) ;
f0<= A(0) and B(1);
f1<= A(1) and B(0) ;
f3<= A(1) and B(1);
C(0)<= A(0) and B(0) ;
end Behavioral;
