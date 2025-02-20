----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/03/2024 07:53:58 PM
-- Design Name: 
-- Module Name: clk_1Hz_TEST - Behavioral
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

entity clk_1Hz_TEST is
-- Port ();
end clk_1Hz_TEST;

architecture Behavioral of clk_1Hz_TEST is

component clock_1Hz
    Port ( reset : in STD_LOGIC;
           clk_in : in STD_LOGIC;
           clk_out : out STD_LOGIC);
end component;

signal reset_TEST, clk_in_TEST : STD_LOGIC := '0';
signal clk_out_TEST : STD_LOGIC;

constant clk_in_period : time := 10 ns;

begin

 UUT: clock_1Hz PORT MAP (
        reset => reset_TEST,
        clk_in => clk_in_TEST,
        clk_out => clk_out_TEST
    );

clk_in_process: process
begin
    clk_in_TEST <= '0';
    wait for clk_in_period/2;
    clk_in_TEST <= '1';
    wait for clk_in_period/2;
end process;

stim_proc: process
begin
    wait for 100 ns;
    reset_TEST <= '1';
    wait;
end process;

end Behavioral;
