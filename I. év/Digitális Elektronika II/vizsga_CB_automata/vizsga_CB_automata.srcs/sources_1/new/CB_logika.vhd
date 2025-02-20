----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/06/2024 03:27:18 PM
-- Design Name: 
-- Module Name: CB_logika - Behavioral
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

entity CB_logika is
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
end CB_logika;

architecture Behavioral of CB_logika is

begin

--CLR <= '0';
D2 <= '0';
CE <= (not Q0) or Q1 or Q2;

D1 <= Q1;
D0 <= ((not Q2) and (not Q1)) or Q2;
L <= ((not Q2) and (not Q1) and Q0) or ((not Q2) and Q1 and Q0) or (Q2 and Q1 and Q0);

end Behavioral;
