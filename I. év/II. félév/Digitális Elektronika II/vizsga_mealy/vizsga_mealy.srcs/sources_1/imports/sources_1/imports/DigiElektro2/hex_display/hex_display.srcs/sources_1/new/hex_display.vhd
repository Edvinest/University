----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/11/2024 03:27:49 PM
-- Design Name: 
-- Module Name: hex_display - Behavioral
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

entity hex_display is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           seg : out STD_LOGIC_VECTOR (7 downto 0));
end hex_display;

architecture Behavioral of hex_display is

signal val : std_logic_vector(3 downto 0);

begin

process(A,B,C,D)
begin
val(0) <= A;
val(1) <= B;
val(2) <= C;
val(3) <= D;

case val is
    when "0000" => seg <= "00000011"; -- 0
    when "0001" => seg <= "10011111"; -- 1
    when "0010" => seg <= "00100101"; -- 2
    when "0011" => seg <= "00001101"; -- 3
    when "0100" => seg <= "10011001"; -- 4
    when "0101" => seg <= "01001001"; -- 5
    when "0110" => seg <= "01000001"; -- 6
    when "0111" => seg <= "00011111"; -- 7
    when "1000" => seg <= "00000001"; -- 8
    when "1001" => seg <= "00001001"; -- 9
    when "1010" => seg <= "00010001"; -- A
    when "1011" => seg <= "11000001"; -- b
    when "1100" => seg <= "01100011"; -- C
    when "1101" => seg <= "10000101"; -- d
    when "1110" => seg <= "01100001"; -- E
    when "1111" => seg <= "01110001"; -- F
    
    when others => seg <= "11111110"; -- Error
end case;

end process;

end Behavioral;
