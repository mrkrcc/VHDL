----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.07.2020 15:39:38
-- Design Name: 
-- Module Name: dort_dort_multiplier - Behavioral
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

entity dort_dort_multiplier is
    Port ( K : in STD_LOGIC_VECTOR (3 downto 0);
           L : in STD_LOGIC_VECTOR (3 downto 0);
           O : out STD_LOGIC_VECTOR (7 downto 0));
end dort_dort_multiplier;

architecture Behavioral of dort_dort_multiplier is
component fourbitadder 
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           S : out STD_LOGIC_VECTOR (3 downto 0);
           C3 : out STD_LOGIC );
end component;

signal f : STD_LOGIC_VECTOR(7 downto 0) ;
signal g : STD_LOGIC_VECTOR(7 downto 0) ;
signal h : STD_LOGIC_VECTOR(7 downto 0) ;






begin

f1 : fourbitadder port map (f(0),f(1),f(2),f(3),f(4),f(5),f(6),f(7),O(1),g(0),g(1),g(2),g(3)) ;
f2 : fourbitadder port map (g(0),g(1),g(2),g(3),g(4),g(5),g(6),g(7),O(2),h(0),h(1),h(2),h(3)) ;
f3 : fourbitadder port map (h(0),h(1),h(2),h(3),h(4),h(5),h(6),h(7),O(3),O(4),O(5),O(6),O(7)) ;


O(0)<= K(0) and L(0);

f(0)<= K(0) and L(1);       f(4)<= K(1) and L(0);
f(1)<= K(0) and L(2);       f(5)<= K(1) and L(1);
f(2)<= K(0) and L(3);       f(6)<= K(1) and L(2);
f(3)<= '0';                 f(7)<= K(1) and L(3);

g(4)<= K(2) and L(0);       h(4)<= K(3) and L(0);
g(5)<= K(2) and L(1);       h(5)<= K(3) and L(1);
g(6)<= K(2) and L(2);       h(6)<= K(3) and L(2);
g(7)<= K(2) and L(3);       h(7)<= K(3) and L(3);


end Behavioral;
