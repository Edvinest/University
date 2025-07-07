----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/16/2024 03:33:12 PM
-- Design Name: 
-- Module Name: integralt_logika - Behavioral
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

entity integralt_logika is
    Port ( Q0 : in STD_LOGIC;
           Q1 : in STD_LOGIC;
           Q2 : in STD_LOGIC;
           Q3 : in STD_LOGIC;
           a : in STD_LOGIC;
           b : in STD_LOGIC;
           D0 : out STD_LOGIC;
           D1 : out STD_LOGIC;
           D2 : out STD_LOGIC;
           D3 : out STD_LOGIC;
           CE : out STD_LOGIC;
           L : out STD_LOGIC;
           Clk : out STD_LOGIC);
end integralt_logika;

architecture Behavioral of integralt_logika is

begin

L <= (Q1 and Q2) or (a and Q0 and Q2) or ((not Q0) and Q2 and (not a));
CE <= (not Q2) or (not Q0);

D3 <= '0';
D2 <= ((not b) and Q0) or (Q0 and (not Q1)) ;
D1 <= (not Q1);
D0 <= ((not Q1) and Q0) or ((not b) and Q1);

end Behavioral;
