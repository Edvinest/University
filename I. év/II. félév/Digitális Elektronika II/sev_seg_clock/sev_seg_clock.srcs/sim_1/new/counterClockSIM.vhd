----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/19/2024 03:58:20 PM
-- Design Name: 
-- Module Name: counterClockSIM - Behavioral
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

entity counterClockSIM is
--  Port ( );
end counterClockSIM;

architecture Behavioral of counterClockSIM is

component counter is
   Port(reset : in STD_LOGIC;
        clk_in : in STD_LOGIC;
        Q0 : out STD_LOGIC;
        Q1 : out STD_LOGIC;
        Q2 : out STD_LOGIC;
        Q3 : out STD_LOGIC);
end component;

signal resetTest, CLKTest, Q0, Q1, Q2, Q3 : STD_LOGIC := '0';

constant PERIOD : time := 10 ns;

begin

  UUT : counter
    port map (
      reset => resetTest,
      clk_in => CLKTest,
      Q0 => Q0,
      Q1 => Q1,
      Q2 => Q2,
      Q3 => Q3
    );


clk_gen_proc: process
    begin
        CLKTest <= '0';
        wait for PERIOD;
        CLKTest <= '1';
        wait for PERIOD;
end process;

stim_proc: process
begin
    resetTest <= '1';
    wait for PERIOD * 2;
    resetTest <= '0';
    wait;
end process;

end Behavioral;
