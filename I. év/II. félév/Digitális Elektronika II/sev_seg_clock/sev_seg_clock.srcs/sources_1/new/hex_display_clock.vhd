----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/18/2024 12:56:52 PM
-- Design Name: 
-- Module Name: counter - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter is
   Port(reset : in STD_LOGIC;
        clk_in : in STD_LOGIC;
        Q0 : out STD_LOGIC;
        Q1 : out STD_LOGIC;
        Q2 : out STD_LOGIC;
        Q3 : out STD_LOGIC);
end counter;

architecture Behavioral of counter is

signal tmp: std_logic_vector(3 downto 0);

begin
    
process (reset, clk_in) is
begin        
        if (reset = '1') then
            tmp <= "0000";
        elsif (clk_in'EVENT and clk_in='1') then
               tmp <= tmp+1;
        end if;
end process;
    
  Q0 <= tmp(0);
  Q1 <= tmp(1);
  Q2 <= tmp(2);
  Q3 <= tmp(3);


end Behavioral;
