----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/15/2024 05:09:38 PM
-- Design Name: 
-- Module Name: jk_automata - Behavioral
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

entity jk_automata is
    Port ( a : in STD_LOGIC;
           clk_IN : in STD_LOGIC;
           hex_Out : out STD_LOGIC_VECTOR (7 downto 0));
end jk_automata;

architecture Behavioral of jk_automata is

component clock_1Hz is
    Port ( reset : in STD_LOGIC;
           clk_in : in STD_LOGIC;
           clk_out : out STD_LOGIC);
end component;

component jk_tarolo is
    Port ( J : in STD_LOGIC;
           K : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Q : out STD_LOGIC);
end component;

component hex_display is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           seg : out STD_LOGIC_VECTOR (7 downto 0));
end component;

component logika is
    Port ( a : in STD_LOGIC;
           Q0 : in STD_LOGIC;
           Q1 : in STD_LOGIC;
           J0 : out STD_LOGIC;
           K0 : out STD_LOGIC;
           J1 : out STD_LOGIC;
           K1 : out STD_LOGIC);
end component;

signal clk_OUT, logikaJ0, logikaJ1, logikaK0, logikaK1, JK0Q, JK1Q : std_logic;

begin

U1: clock_1Hz port map('1', clk_IN, clk_OUT);
U2: jk_tarolo port map(logikaJ0, logikaK0, clk_OUT, JK0Q);
U3: jk_tarolo port map(logikaJ1, logikaK1, clk_OUT, JK1Q);
U4: logika port map(a, JK0Q, JK1Q, logikaJ0, logikaK0, logikaJ1, logikaK1);
U5: hex_display port map(JK0Q, JK1Q, '0', '0', hex_Out);

end Behavioral;
