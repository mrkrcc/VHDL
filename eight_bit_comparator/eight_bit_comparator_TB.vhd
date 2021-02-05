library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity eight_bit_comparator_tb is
end;

architecture bench of eight_bit_comparator_tb is

  component eight_bit_comparator
  Port ( 
  		RESET	: in std_logic;
  		CLK 	: in std_logic;
  		A_in	: in std_logic_vector (7 downto 0);
  		B_in	: in std_logic_vector (7 downto 0);
  		G_in	: in std_logic;
  		O_o		: out std_logic
  );
  end component;

  signal RESET		: std_logic;
  signal CLK		: std_logic;
  signal A_in		: std_logic_vector (7 downto 0) := (others => '0');
  signal B_in		: std_logic_vector (7 downto 0) := (others => '0');
  signal G_in		: std_logic;
  signal O_o		: std_logic ;

  constant clock_period: time := 10 ns;
  signal stop_the_clock: boolean;

begin

  uut: eight_bit_comparator port map ( RESET => RESET,
                                       CLK   => CLK,
                                       A_in  => A_in,
                                       B_in  => B_in,
                                       G_in  => G_in,
                                       O_o   => O_o );

  stimulus: process
  begin
  
	wait for clock_period;
	RESET <= '1';
	G_in  <= '0';
	
	wait for clock_period;
	RESET <= '0';
	
	wait for 50 ns;
	A_in <= X"AB";  	-- Output = 0
	B_in <= X"AB";
	
	wait for 100 ns;
	G_in <= '1'; 		-- Output = 1
	
	wait for 2*clock_period;
	G_in <= '0';
	
	wait for 50 ns;
	A_in <= X"21";		-- Output = 1
	B_in <= X"FF";
	
	wait for 100ns;
	G_in <= '1';
	
	
    stop_the_clock <= true;
    wait;
  end process;

  clocking: process
  begin
    while not stop_the_clock loop
      CLK <= '0', '1' after clock_period / 2;
      wait for clock_period;
    end loop;
    wait;
  end process;

end;