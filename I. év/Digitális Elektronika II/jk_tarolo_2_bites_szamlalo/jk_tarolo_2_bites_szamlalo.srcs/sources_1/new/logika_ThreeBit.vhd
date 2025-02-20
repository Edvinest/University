----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/22/2024 09:42:38 PM
-- Design Name: 
-- Module Name: logika_ThreeBit - Behavioral
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

entity logika_ThreeBit is
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
end logika_ThreeBit;

architecture Behavioral of logika_ThreeBit is

begin

J2 <= (Q0 and Q1) or ((not b) and Q1) or ((not a) and Q0);
K2 <= (Q0 and Q1);
J1 <= Q0;
K1 <= Q0 or ((not b) and (not Q2));
J0 <= '1';
K0 <= '1';

end Behavioral;
