----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/22/2024 09:49:44 PM
-- Design Name: 
-- Module Name: counter_ThreeBit - Behavioral
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

entity counter_ThreeBit is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           clk_in : in STD_LOGIC;
           hex_out : out STD_LOGIC_VECTOR (7 downto 0));
end counter_ThreeBit;

architecture Behavioral of counter_ThreeBit is

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

component logika_ThreeBit is
    Port ( J0 : out STD_LOGIC;
           K0 : out STD_LOGIC;
           J1 : out STD_LOGIC;
           K1 : out STD_LOGIC;
           J2 : out STD_LOGIC;
           K2 : out STD_LOGIC;
           a : in STD_LOGIC;
           b : in STD_LOGIC;
           Q0 : in STD_LOGIC;
           Q1 : in STD_LOGIC;
           Q2 : in STD_LOGIC);
end component;

signal clk_out, logika_J0, logika_K0, logika_J1, logika_K1, logika_J2, logika_K2, JK_Q0, JK_Q1, JK_Q2 : std_logic;

begin

U1: clock_1Hz port map('1', clk_in, clk_out);

U2: jk_tarolo port map(logika_J0, logika_K0, clk_out, JK_Q0);
U3: jk_tarolo port map(logika_J1, logika_K1, clk_out, JK_Q1);
U4: jk_tarolo port map(logika_J2, logika_K2, clk_out, JK_Q2);
U5: logika_ThreeBit port map(logika_J0, logika_K0, logika_J1, logika_K1, logika_J2, logika_K2, a, b, JK_Q0, JK_Q1, JK_Q2);
U6: hex_display port map(JK_Q0, JK_Q1, JK_Q2, '0', hex_out);

end Behavioral;
