----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/18/2024 03:59:13 PM
-- Design Name: 
-- Module Name: counterClock - Behavioral
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

entity counterClock is
    Port ( reset : in STD_LOGIC;
           CLK : in STD_LOGIC;
           clk_seg : out STD_LOGIC_VECTOR (7 downto 0));
end counterClock;

architecture Behavioral of counterClock is
    
component hex_display is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           seg : out STD_LOGIC_VECTOR (7 downto 0));
end component;

component clock_1Hz is
    Port ( reset : in STD_LOGIC;
           clk_in : in STD_LOGIC;
           clk_out : out STD_LOGIC);
end component;

component counter is
   Port(reset : in STD_LOGIC;
        clk_in : in STD_LOGIC;
        Q0 : out STD_LOGIC;
        Q1 : out STD_LOGIC;
        Q2 : out STD_LOGIC;
        Q3 : out STD_LOGIC);
end component;

signal CLOCK_return, cReturn1, cReturn2, cReturn3, cReturn4: std_logic;

begin

U1: clock_1Hz port map('1', CLK, CLOCK_return);
U2: counter port map(reset, CLOCK_return, cReturn1, cReturn2, cReturn3, cReturn4);
U3: hex_display port map(cReturn1, cReturn2, cReturn3, cReturn4, clk_seg); 

end Behavioral;
