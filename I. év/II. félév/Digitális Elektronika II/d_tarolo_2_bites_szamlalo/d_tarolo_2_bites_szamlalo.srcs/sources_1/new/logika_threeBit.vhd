----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/16/2024 02:40:54 PM
-- Design Name: 
-- Module Name: logika_threeBit - Behavioral
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

entity logika_threeBit is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           Q0 : in STD_LOGIC;
           Q1 : in STD_LOGIC;
           Q2 : in STD_LOGIC;
           D0 : out STD_LOGIC;
           D1 : out STD_LOGIC;
           D2 : out STD_LOGIC);
end logika_threeBit;

architecture Behavioral of logika_threeBit is

begin

D0 <= (not Q0) or ((not Q2) and Q1) or ((not b) and (not Q2)) or (b and Q2); -- not Q0
D1 <= ((not Q0) and Q1) or ((not a) and (not Q0)) or ((not a) and (not Q2) and Q1) or (b and Q2) or (b and Q0 and (not Q1)); -- Q0 xor Q1;
D2 <= ((not a) and (not Q1) and (not Q0)) or ((not a) and (not Q2) and Q1 and Q0) or (b and Q0); -- (Q0 and Q1) xor Q2

end Behavioral;
