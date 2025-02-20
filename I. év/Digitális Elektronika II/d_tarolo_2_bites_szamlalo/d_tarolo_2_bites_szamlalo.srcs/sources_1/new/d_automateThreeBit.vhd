----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/16/2024 02:40:54 PM
-- Design Name: 
-- Module Name: d_automataThreeBit - Behavioral
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

entity d_automataThreeBit is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           clk_IN : in STD_LOGIC;
           hex_Out : out STD_LOGIC_VECTOR(7 downto 0));
end d_automataThreeBit;

architecture Behavioral of d_automataThreeBit is

component clock_1Hz is
    Port ( reset : in STD_LOGIC;
           clk_in : in STD_LOGIC;
           clk_out : out STD_LOGIC);
end component;

component d_tarolo is
    Port ( D : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Q : out STD_LOGIC);
end component;

component logika_threeBit is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           Q0 : in STD_LOGIC;
           Q1 : in STD_LOGIC;
           Q2 : in STD_LOGIC;
           D0 : out STD_LOGIC;
           D1 : out STD_LOGIC;
           D2 : out STD_LOGIC);
end component;

component hex_display is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           seg : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal clk_out, logikaD0, logikaD1, logikaD2, dQ0, dQ1, dQ2 : std_logic;

begin

U1: clock_1Hz port map('1', clk_IN, clk_out);
U2: d_tarolo port map(logikaD0, clk_out, dQ0);
U3: d_tarolo port map(logikaD1, clk_out, dQ1);
U4: d_tarolo port map(logikaD2, clk_out, dQ2);
U5: logika_threeBit port map(a, b, dQ0, dQ1, dQ2, logikaD0, logikaD1, logikaD2);
U6: hex_display port map(dQ0, dQ1, dQ2, '0', hex_Out);

end Behavioral;
