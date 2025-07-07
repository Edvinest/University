----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/23/2024 03:11:32 PM
-- Design Name: 
-- Module Name: logika_StepReg - Behavioral
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

entity logika_StepReg is
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
end logika_StepReg;

architecture Behavioral of logika_StepReg is

begin

CLR <= '0';
Left <= '1';
SRI <= '0';
D2 <= '0';
CE <= (not Q2) or (not Q1);
L <= Q3 or (a and Q1 and Q2) or (a and Q1 and (not Q0));
D0 <= (not Q3) and (not Q2);
SLI <= Q1 or (not Q0);
D3 <= (not Q1) or Q0;
D1 <= (not Q1) or ((not Q3) and (not Q2));

end Behavioral;
