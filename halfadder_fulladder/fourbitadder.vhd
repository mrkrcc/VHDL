----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.07.2020 14:20:51
-- Design Name: 
-- Module Name: fourbitadder - Behavioral
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

entity fourbitadder is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           S : out STD_LOGIC_VECTOR (3 downto 0);
           C3 : out STD_LOGIC );
end fourbitadder;

architecture Behavioral of fourbitadder is
component  fulladder 
    Port ( X : in STD_LOGIC;
           Y : in STD_LOGIC;
           Z : in STD_LOGIC;
           S : out STD_LOGIC;
           C : out STD_LOGIC);
end component;
signal C0,C1,C2 : STD_LOGIC ;
begin
FA1 : fulladder port map (A(0),B(0),'0',S(0),C0) ;
FA2 : fulladder port map (A(1),B(1),C0,S(1),C1) ;
FA3 : fulladder port map (A(2),B(2),C1,S(2),C2) ;
FA4 : fulladder port map (A(3),B(3),C2,S(3),C3) ;

end Behavioral;
