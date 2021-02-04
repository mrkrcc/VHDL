----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.07.2020 16:50:04
-- Design Name: 
-- Module Name: halfadder - Behavioral
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

entity halfadder is
    Port ( X : in STD_LOGIC;
           Y : in STD_LOGIC;
           T : out STD_LOGIC;
           F : out STD_LOGIC);
end halfadder;

architecture Behavioral of halfadder is

begin
F<= X and Y;
T<= X XOR Y;

end Behavioral;
