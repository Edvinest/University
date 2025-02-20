----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/14/2024 08:12:42 AM
-- Design Name: 
-- Module Name: pclnegybit - Behavioral
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

entity pclnegybit is
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
end pclnegybit;

architecture Behavioral of pclnegybit is

component gposszeado is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           Cin : in STD_LOGIC;
           G : out STD_LOGIC;
           P : out STD_LOGIC;
           S : out STD_LOGIC);
 end component;
 
 component pclosszeado is
    Port ( G0 : in STD_LOGIC;
           P1 : in STD_LOGIC;
           G1 : in STD_LOGIC;
           P2 : in STD_LOGIC;
           G2 : in STD_LOGIC;
           P3 : in STD_LOGIC;
           G3 : in STD_LOGIC;
           Cy0 : out STD_LOGIC;
           Cy1 : out STD_LOGIC;
           Cy2 : out STD_LOGIC;
           Cy3 : out STD_LOGIC);
  end component;

signal P0,G0,P1,G1,P2,G2,P3,G3,Cy0,Cy1,Cy2,Cy3 : STD_LOGIC;

begin
U1: gposszeado port map (a0, b0, '0', G0, P0, S0);
U2: gposszeado port map (a1, b1, Cy0, G1, P1, S1);
U3: gposszeado port map (a2, b3, Cy1, G2, P2, S2);
U4: gposszeado port map (a3, b3, Cy2, G3, P3, S3);
U5: pclosszeado port map (G0, P1, G1, P2, G2, P3, G3, Cy0, Cy1, Cy2, S4);

end Behavioral;
