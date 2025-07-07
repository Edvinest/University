----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/08/2024 03:33:48 PM
-- Design Name: 
-- Module Name: jk_tarolo - Behavioral
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

entity jk_tarolo is
    Port ( J : in STD_LOGIC;
           K : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Q : out STD_LOGIC);
end jk_tarolo;

architecture Behavioral of jk_tarolo is

signal input : std_logic_vector(1 downto 0);
signal currentState, prevState : std_logic;

begin

input <= J & K;

process(Clk)
    begin
    if rising_edge(Clk) then
        case (input) is
            when "00" => currentState <= prevState; -- hold
            when "01" => currentState <= '0'; -- delete
            when "10" => currentState <= '1'; -- load
            when "11" => currentState <= not prevState; -- not
            when others => null;
         end case;
    end if;
    
    Q <= currentState;
    Q <= not currentState;
    prevState <= currentState;
end process;

end Behavioral;
