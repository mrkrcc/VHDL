----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.07.2020 14:13:54
-- Design Name: 
-- Module Name: D_latch - Behavioral
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

entity D_latch is
    Port ( D : in STD_LOGIC;
           En : in STD_LOGIC;
           Q : inout STD_LOGIC;
           Qn : inout STD_LOGIC);
end D_latch;
architecture Behavioral of D_latch is
signal f,h : STD_LOGIC ;

begin
f<= D nand En ;
h<= (not D) nand En;

Q<= f nand Qn ;
Qn<= Q nand h ;

end Behavioral;
