----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.07.2020 14:18:16
-- Design Name: 
-- Module Name: D_latch_TB - Behavioral
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

entity D_latch_tb is
end;

architecture bench of D_latch_tb is

  component D_latch
      Port ( D : in STD_LOGIC;
             En : in STD_LOGIC;
             Q : inout STD_LOGIC;
             Qn : inout STD_LOGIC);
  end component;

  signal D: STD_LOGIC := '0';
  signal En: STD_LOGIC := '0';
  signal Q: STD_LOGIC;
  signal Qn: STD_LOGIC;

begin

  uut: D_latch port map ( D  => D,
                          En => En,
                          Q  => Q,
                          Qn => Qn );

  stimulus: process
  begin
  
    -- Put initialisation code here
    wait for 100 ns;
        D<='1' ;
        En<='0' ;
    wait for 100 ns;
        D<='0' ;
        En<='0' ;
    wait for 100 ns;
        D<='0' ;
        En<='1' ;
    wait for 100 ns;
        D<='1' ;
        En<='1' ;
    wait for 100 ns;
        D<='1' ;
        En<='0' ;
    wait for 100 ns;
        D<='0' ;
        En<='1' ;
    wait for 100 ns;
        D<='0' ;
        En<='0' ;
    wait for 100 ns;
        D<='0' ;
        En<='1' ;
    wait for 100 ns;
        D<='1' ;
        En<='1' ;

    -- Put test bench stimulus code here

    wait;
  end process;


end;