----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/15/2024 02:57:04 PM
-- Design Name: 
-- Module Name: d_automata - Behavioral
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

entity d_automata is
    Port ( a : in STD_LOGIC;
           clk_IN : in STD_LOGIC;
           hex_Out : out STD_LOGIC_VECTOR (7 downto 0));
end d_automata;


architecture Behavioral of d_automata is

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

component logika is
    Port ( a : in STD_LOGIC;
           Q0 : in STD_LOGIC;
           Q1 : in STD_LOGIC;
           D0 : out STD_LOGIC;
           D1 : out STD_LOGIC);
end component;

component hex_display is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           seg : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal clk_Out, logikaD0, logikaD1, D0_Out, D1_Out: std_logic;

begin

U1: clock_1Hz port map('1', clk_IN, clk_Out);
U2: d_tarolo port map(logikaD0, clk_Out, D0_Out);
U3: d_tarolo port map(logikaD1, clk_Out, D1_Out);
U4: logika port map(a, D0_out, D1_out, logikaD0, logikaD1);
U5: hex_display port map(D0_Out, D1_Out, '0', '0', hex_Out);

end Behavioral;
