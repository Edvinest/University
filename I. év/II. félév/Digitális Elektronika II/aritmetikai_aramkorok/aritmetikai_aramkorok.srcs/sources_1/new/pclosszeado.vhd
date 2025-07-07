----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/14/2024 08:09:10 AM
-- Design Name: 
-- Module Name: pclosszeado - Behavioral
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

entity pclosszeado is
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
end pclosszeado;

architecture Behavioral of pclosszeado is

begin
Cy0 <= G0;
Cy1 <= G1 or (P1 and G0);
Cy2 <= G2 or (P2 and G1) or (P2 and P1 and G0);
Cy3 <= G3 or (P3 and G2) or (P3 and P2 and G1) or (P3 and P2 and P1 and G0);

end Behavioral;
