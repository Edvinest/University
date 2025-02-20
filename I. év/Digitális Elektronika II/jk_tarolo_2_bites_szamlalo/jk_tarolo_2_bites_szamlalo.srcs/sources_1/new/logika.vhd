----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/08/2024 03:33:48 PM
-- Design Name: 
-- Module Name: logika - Behavioral
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

entity logika is
    Port ( a : in STD_LOGIC;
           Q0 : in STD_LOGIC;
           Q1 : in STD_LOGIC;
           J0 : out STD_LOGIC;
           K0 : out STD_LOGIC;
           J1 : out STD_LOGIC;
           K1 : out STD_LOGIC);
end logika;

architecture Behavioral of logika is

begin

J0 <= '1';
K0 <= '1';

J1 <= not (a xor Q0);
K1 <= not (a xor Q0);

end Behavioral;
