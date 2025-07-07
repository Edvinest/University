----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/24/2024 02:28:31 PM
-- Design Name: 
-- Module Name: MEALYCounter - Behavioral
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

entity MEALYCounter is
    Port ( CLK_IN : in STD_LOGIC;
           a : in STD_LOGIC;
           b : in STD_LOGIC;
           z : out STD_LOGIC;
           hex_out : out STD_LOGIC_VECTOR (7 downto 0));
end MEALYCounter;

architecture Behavioral of MEALYCounter is

component clock_1Hz is
    Port ( reset : in STD_LOGIC;
           clk_in : in STD_LOGIC;
           clk_out : out STD_LOGIC);
end component;

component hex_display is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           seg : out STD_LOGIC_VECTOR (7 downto 0));
end component;

component MEALYautomata is
    Port ( CLK_IN : in STD_LOGIC;
           a : in STD_LOGIC;
           b : in STD_LOGIC;
           Q0 : out STD_LOGIC;
           Q1 : out STD_LOGIC;
           Q2 : out STD_LOGIC;
           z : out STD_LOGIC);
end component;

signal clk_out, MQ0, MQ1, MQ2 : std_logic;

begin

U1: clock_1Hz port map('1', CLK_IN, clk_out);
U2: MEALYautomata port map(clk_out, a, b, MQ0, MQ1, MQ2, z);
U3: hex_display port map(MQ0, MQ1, MQ2, '0', hex_out);

end Behavioral;
