----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.01.2021 11:23:57
-- Design Name: 
-- Module Name: voting_machine_TB - Behavioral
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
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity voting_machine_tb is
end;

architecture bench of voting_machine_tb is

  component voting_machine
  Port ( 
          clk :in std_logic;
          reset :in std_logic;
          party1 :in std_logic;
          party2 :in std_logic;
          party3 :in std_logic;
          select_party :in std_logic;
          count1_op : out std_logic_vector(5 downto 0);
          count2_op : out std_logic_vector(5 downto 0);
          count3_op : out std_logic_vector(5 downto 0)
  );
  end component;

  signal clk: std_logic;
  signal reset: std_logic;
  signal party1: std_logic;
  signal party2: std_logic;
  signal party3: std_logic;
  signal select_party: std_logic;
  signal count1_op: std_logic_vector(5 downto 0);
  signal count2_op: std_logic_vector(5 downto 0);
  signal count3_op: std_logic_vector(5 downto 0) ;

  constant clock_period: time := 5 ns;
  signal stop_the_clock: boolean;

begin

  uut: voting_machine port map ( clk          => clk,
                                 reset        => reset,
                                 party1       => party1,
                                 party2       => party2,
                                 party3       => party3,
                                 select_party => select_party,
                                 count1_op    => count1_op,
                                 count2_op    => count2_op,
                                 count3_op    => count3_op );

  stimulus: process
  begin
  
    wait for 5ns;
    
    wait for clock_period*10;
    reset <= '1';
    wait for 10ns;
    reset <= '0';
    
    party1 <= '0';
    party2 <= '0';
    party3 <= '0';
    wait for 10 ns;
    
    party1 <= '1';
    wait for 10ns;
    party1 <= '0';
    wait for 10ns;
    select_party <= '1';
    wait for 10 ns;
    select_party <= '0';
    wait for 10 ns;
    
    party1 <= '1';
    wait for 10ns;
    party1 <= '0';
    wait for 10ns;
    select_party <= '1';
    wait for 10 ns;
    select_party <= '0';
    wait for 10 ns;
    
    party1 <= '1';
    wait for 10ns;
    party1 <= '0';
    wait for 10ns;
    select_party <= '1';
    wait for 10 ns;
    select_party <= '0';
    wait for 10 ns;
    
    party2 <= '1';
    wait for 10ns;
    party2 <= '0';
    wait for 10ns;
    select_party <= '1';
    wait for 10 ns;
    select_party <= '0';
    wait for 10 ns;
    
    party2 <= '1';
    wait for 10ns;
    party2 <= '0';
    wait for 10ns;
    select_party <= '1';
    wait for 10 ns;
    select_party <= '0';
    wait for 10 ns;
    
    party3 <= '1';
    wait for 10ns;
    party3 <= '0';
    wait for 10ns;
    select_party <= '1';
    wait for 10 ns;
    select_party <= '0';
    wait for 10 ns;
    
    
    stop_the_clock <= true;
    wait;
  end process;

  clocking: process
  begin
    while not stop_the_clock loop
      clk <= '0', '1' after clock_period / 2;
      wait for clock_period;
    end loop;
    wait;
  end process;

end;
