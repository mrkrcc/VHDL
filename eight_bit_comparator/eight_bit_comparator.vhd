
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity eight_bit_comparator is
Port ( 
		RESET	: in std_logic;
		CLK 	: in std_logic;
		A_in	: in std_logic_vector (7 downto 0);
		B_in	: in std_logic_vector (7 downto 0);
		G_in	: in std_logic; -- Expansion input ( Active low)
		O_o		: out std_logic
);
end eight_bit_comparator;

architecture Behavioral of eight_bit_comparator is
signal flag : std_logic_vector (7 downto 0) := (others => '0');
begin
process(CLK, RESET, flag)
begin
		if RESET = '1' then
			
			flag <= X"00" ;
		
		else
		
			if rising_edge(CLK) then
				
				for i in 0 to 7 loop
					
					if (A_in(i) = B_in(i)) then
					
						flag(i) <= '0';
						
					else
						
						flag(i) <= '1';
					
					end if;
				end loop;
				
				if ( G_in = '0' and flag = X"00") then
				
					O_o <= '0'; -- output = 0 when A = B
				
				else
					
					O_o <= '1';
					
				end if;
			end if;
		end if;
end process;
end Behavioral;
