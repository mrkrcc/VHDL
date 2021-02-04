----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.07.2020 13:04:07
-- Design Name: 
-- Module Name: SR_latch - Behavioral
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

entity SR_latch is
    Port ( S : in STD_LOGIC;
           R : in STD_LOGIC;
           Q : inout STD_LOGIC;
           Qn : inout STD_LOGIC);
end SR_latch;

architecture Behavioral of SR_latch is

begin
Q<= R nor Qn ;
Qn<= S nor Q;

end Behavioral;
