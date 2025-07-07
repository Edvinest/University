----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/06/2024 03:27:18 PM
-- Design Name: 
-- Module Name: CB_automata - Behavioral
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

entity CB_automata is
    Port ( clk_in : in STD_LOGIC;
           a : in STD_LOGIC;
           b : in STD_LOGIC;
           hex_out : out STD_LOGIC_VECTOR (7 downto 0));
end CB_automata;

architecture Behavioral of CB_automata is

component hex_display is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           seg : out STD_LOGIC_VECTOR (7 downto 0));
end component;

component CB4CLE is
    Port (
        C   : in STD_LOGIC;
        CE  : in STD_LOGIC;
        CLR : in STD_LOGIC;
        D0  : in STD_LOGIC;	
        D1  : in STD_LOGIC;	
        D2  : in STD_LOGIC;	
        D3  : in STD_LOGIC;	
        L   : in STD_LOGIC;
        CEO : out STD_LOGIC;
        Q0  : out STD_LOGIC;
        Q1  : out STD_LOGIC;
        Q2  : out STD_LOGIC;
        Q3  : out STD_LOGIC;
        TC  : out STD_LOGIC );
end component;

component clock_1Hz is
    Port ( reset : in STD_LOGIC;
           clk_in : in STD_LOGIC;
           clk_out : out STD_LOGIC);
end component;

component CB_logika is
    Port ( Q0 : in STD_LOGIC;
           Q1 : in STD_LOGIC;
           Q2 : in STD_LOGIC;
           a : in STD_LOGIC;
           b : in STD_LOGIC;
           D0 : out STD_LOGIC;
           D1 : out STD_LOGIC;
           D2 : out STD_LOGIC;
           CE : out STD_LOGIC;
           L : out STD_LOGIC;
           CLR : out STD_LOGIC);
end component;

signal clk_out, CB_Q0, CB_Q1, CB_Q2, unused1, unused2, unused3 : std_logic;
signal logika_CE, logika_CLR, logika_D0, logika_D1, logika_D2, logika_L : std_logic;

begin

U1: clock_1Hz port map('1', clk_in, clk_out);
U2: CB4CLE port map(clk_out, logika_CE, logika_CLR, logika_D0, logika_D1, logika_D2, '0', logika_L, unused1, CB_Q0, CB_Q1, CB_Q2, unused2, unused3);
U3: CB_logika port map(CB_Q0, CB_Q1, CB_Q2, a, b, logika_D0, logika_D1, logika_D2, logika_CE, logika_L, logika_CLR);
U4: hex_display port map(CB_Q0, CB_Q1, CB_Q2, '0', hex_out);

end Behavioral;
