----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/23/2024 03:11:32 PM
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter is
    Port ( clk_in : in STD_LOGIC;
           a : in STD_LOGIC;
           hex_out : out STD_LOGIC_VECTOR (7 downto 0));
end counter;

architecture Behavioral of counter is

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

component logika_StepReg is
    Port ( Q0 : in STD_LOGIC;
           Q1 : in STD_LOGIC;
           Q2 : in STD_LOGIC;
           Q3 : in STD_LOGIC;
           a : in STD_LOGIC;
           SLI : out STD_LOGIC;
           D0 : out STD_LOGIC;
           D1 : out STD_LOGIC;
           D2 : out STD_LOGIC;
           D3 : out STD_LOGIC;
           SRI : out STD_LOGIC;
           L : out STD_LOGIC;
           Left : out STD_LOGIC;
           CE : out STD_LOGIC;
           CLR : out STD_LOGIC);
end component;

component SR4CLED is
port (
    Q0   : out STD_LOGIC;
    Q1   : out STD_LOGIC;
    Q2   : out STD_LOGIC;
    Q3   : out STD_LOGIC;
    C    : in STD_LOGIC;
    CE   : in STD_LOGIC;
    CLR  : in STD_LOGIC;
    D0   : in STD_LOGIC;
    D1   : in STD_LOGIC;
    D2   : in STD_LOGIC;
    D3   : in STD_LOGIC;
    L    : in STD_LOGIC;
    LEFT : in STD_LOGIC;
    SLI  : in STD_LOGIC;
    SRI  : in STD_LOGIC
    );
end component;

signal clk_out, SR_Q0, SR_Q1, SR_Q2, SR_Q3 : std_logic;
signal logika_SLI, logika_D0, logika_D1, logika_D2, logika_D3, logika_SRI, logika_L, logika_Left, logika_CE, logika_CLR : std_logic;

begin

U1: clock_1Hz port map('1', clk_in, clk_out);
U2: SR4CLED port map(SR_Q0, SR_Q1, SR_Q2, SR_Q3, clk_out, logika_CE, logika_CLR, logika_D0, logika_D1, logika_D2, logika_D3, logika_L, logika_Left, logika_SLI, logika_SRI);
U3: logika_StepReg port map(SR_Q0, SR_Q1, SR_Q2, SR_Q3, a, logika_SLI, logika_D0, logika_D1, logika_D2, logika_D3, logika_SRI, logika_L, logika_Left, logika_CE, logika_CLR);
U4: hex_display port map(SR_Q0, SR_Q1, SR_Q2, SR_Q3, hex_out);

end Behavioral;
