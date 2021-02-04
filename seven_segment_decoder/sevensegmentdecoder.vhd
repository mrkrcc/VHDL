----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.07.2020 16:38:36
-- Design Name: 
-- Module Name: sevensegmentdecoder - Behavioral
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

entity sevensegmentdecoder is
    Port ( X : in STD_LOGIC;
           Y : in STD_LOGIC;
           Z : in STD_LOGIC;
           W : in STD_LOGIC;
           a : out STD_LOGIC;
           b : out STD_LOGIC;
           c : out STD_LOGIC;
           d : out STD_LOGIC;
           e : out STD_LOGIC;
           f : out STD_LOGIC;
           g : out STD_LOGIC);
end sevensegmentdecoder;

architecture Behavioral of sevensegmentdecoder is

signal H : std_logic_vector (9 downto 0) ;

begin

H(0)<= not X and not Y and not Z and not W ;
H(1)<= not X and not Y and not Z and  W ;
H(2)<= not X and not Y and  Z and not W ;
H(3)<= not X and not Y and  Z and  W ;
H(4)<= not X and  Y and not Z and not W ;
H(5)<= not X and  Y and not Z and  W ;
H(6)<= not X and  Y and  Z and not W ;
H(7)<= not X and  Y and  Z and  W ;
H(8)<=  X and not Y and not Z and not W ;
H(9)<=  X and not Y and not Z and W ;

a<= H(0) or H(2) or H(3) or H(5) or H(6) or H(7) or H(8) or H(9) ;

b<= H(0) or H(1) or H(2) or H(3) or H(4) or H(7) or H(8) or H(9) ;

c<= H(0) or H(1) or H(3) or H(4) or H(5) or H(6) or H(7) or H(8) or H(9);

d<= H(0) or H(2) or H(3) or H(5) or H(6) or H(8) or H(9) ;

e<= H(0) or H(2) or H(6) or H(8)  ;

f<= H(0) or H(4) or H(5) or H(6) or H(8) or H(9) ;

g<= H(2) or H(3) or H(4) or H(5) or H(6) or H(8) or H(9) ;


end Behavioral;
