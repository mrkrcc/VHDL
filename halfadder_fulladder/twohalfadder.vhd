----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.07.2020 13:42:21
-- Design Name: 
-- Module Name: twohalfadder - Behavioral
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

entity twohalfadder is
    Port ( X : in STD_LOGIC;
           Y : in STD_LOGIC;
           Z : in STD_LOGIC;
           S : out STD_LOGIC;
           C : out STD_LOGIC);
end twohalfadder;

architecture Behavioral of twohalfadder is
component halfadder 
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           T : out STD_LOGIC;
           F : out STD_LOGIC);
end component;
signal G : STD_LOGIC ; -- ilk halfadder toplam
signal H : STD_LOGIC ; -- ilk halfadder carrier
signal h1 : STD_LOGIC ; -- ikinci halfadder carrier
begin
    ha1 : halfadder port map (X,Y,G,H) ;
    
    ha2 : halfadder port map (G,Z,S,h1) ;
    C<= h1 or H ;
end Behavioral;
