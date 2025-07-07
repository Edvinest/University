----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/07/2024 03:12:57 PM
-- Design Name: 
-- Module Name: negybitesosszeado - Behavioral
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

entity negybitesosszeado is
    Port ( a0 : in STD_LOGIC;
           a1 : in STD_LOGIC;
           a2 : in STD_LOGIC;
           a3 : in STD_LOGIC;
           b0 : in STD_LOGIC;
           b1 : in STD_LOGIC;
           b2 : in STD_LOGIC;
           b3 : in STD_LOGIC;
           S0 : out STD_LOGIC;
           S1 : out STD_LOGIC;
           S2 : out STD_LOGIC;
           S3 : out STD_LOGIC;
           S4 : out STD_LOGIC);
end negybitesosszeado;


architecture Behavioral of negybitesosszeado is

component felosszado is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           s : out STD_LOGIC;
           Cy : out STD_LOGIC);
end component;

component teljes_osszeado is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           Cin : in STD_LOGIC;
           S : out STD_LOGIC;
           Cy : out STD_LOGIC);
end component;

signal Cy0, Cy1, Cy2, Cy3 : STD_LOGIC;

begin
U1:felosszado port map(a0, b0, S0, Cy0);
U2:teljes_osszeado port map(a1, b1, Cy0, S1, Cy1);
U3: teljes_osszeado port map(a2, b2, Cy1, S2, Cy2);
U4: teljes_osszeado port map(a3, b3, Cy2, S3, S4);



end Behavioral;
