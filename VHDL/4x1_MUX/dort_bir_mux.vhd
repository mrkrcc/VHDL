library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity dort_bir_mux is
    Port ( I : in STD_LOGIC_VECTOR (3 downto 0);
           S : in STD_LOGIC_VECTOR (1 downto 0);
           Y : out STD_LOGIC);
end dort_bir_mux;

architecture Behavioral of dort_bir_mux is

begin
Y<= ((not S(1)) and (not S(0)) and I(0)) or ((not S(1)) and  S(0) and I(1)) or (S(1) and (not S(0)) and I(2)) or (S(1) and  S(0) and I(3)) ;


end Behavioral;
