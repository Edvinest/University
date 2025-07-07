----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/03/2024 06:57:20 PM
-- Design Name: 
-- Module Name: clock_1Hz - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clock_1Hz is
    Port ( reset : in STD_LOGIC;
           clk_in : in STD_LOGIC;
           clk_out : out STD_LOGIC);
end clock_1Hz;

architecture Behavioral of clock_1Hz is

signal clk_cnt: unsigned(25 downto 0);
signal clk_bit: std_logic;

begin

process(clk_in, reset) is
    begin
        if(reset = '0')
            then 
                clk_cnt <= "00000000000000000000000000";
                clk_bit <= '0';
        elsif rising_edge(clk_in)
            then
                if(clk_cnt = 10) -- 50_000_000
                  then
                    clk_cnt <= "00000000000000000000000000";
                    clk_bit <= not clk_bit;
                    
                else 
                    clk_cnt <= clk_cnt + 1;
                end if;
        end if;
end process;

clk_out <= clk_bit;

end Behavioral;
