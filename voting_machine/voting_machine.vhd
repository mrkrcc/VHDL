----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.01.2021 10:52:48
-- Design Name: 
-- Module Name: voting_machine - Behavioral
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
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL; 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity voting_machine is
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
end voting_machine;

architecture Behavioral of voting_machine is

signal count1,count2,count3: std_logic_vector(5 downto 0):="000000";
signal state: std_logic_vector(5 downto 0);
constant initial: std_logic_vector(5 downto 0):="000001";
constant check : std_logic_vector(5 downto 0) :="000010";
constant party1_state: std_logic_vector(5 downto 0):="000100";
constant party2_state: std_logic_vector(5 downto 0):="001000";
constant party3_state: std_logic_vector(5 downto 0):="010000";
constant done: std_logic_vector(5 downto 0):= "100000";

begin
process(clk,reset,party1,party2,party3)
begin
        if(reset='1') then
            count1<=(others=>'0');
            count2<=(others=>'0');
            count3<=(others=>'0');
            state<=initial;
        else
            if(rising_edge(clk) and reset='0') then
            
                case state is
                    
                    when initial => 
                        --NSL
                            if (party1='1' or party2='1' or party3='1') then
                                state <= check;
                            else 
                                state<=initial;
                            end if;
                        --OFL
                    when check =>
                        --NSL
                        if (party1='1') then
                            state <= party1_state;
                        elsif (party2='1') then
                            state <= party2_state;
                        elsif (party3='1') then
                            state <= party3_state;
                        else
                            state <= check;
                        end if;
                     --OFL
                     when party1_state =>
                         --NSL
                         if(select_party = '1') then
                            state <= done;
                            count1 <= count1 + 1;
                         else
                            state <= party1_state;
                         end if;
                     --OFL
                         
                         
                      when party2_state =>
                         --NSL
                         if(select_party = '1') then
                            state <= done;
                            count2 <= count2 + 1;
                         else
                            state <= party2_state;
                         end if;
                     --OFL
                         
                        
                       when party3_state =>
                         --NSL
                         if(select_party = '1') then
                            state <= done;
                            count3 <= count3 + 1;
                         else
                            state <= party3_state;
                         end if;
                       --OFL
                         
                       when done => 
                        --NSL
                            state <= initial;
                        --OFL
                        when others =>
                            state <= initial;
                        end case;
                     end if;
                   end if;
               end process;
            count1_op <= count1;
            count2_op <= count2;
            count3_op <= count3;
end Behavioral;
