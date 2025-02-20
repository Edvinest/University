----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/23/2024 05:35:36 PM
-- Design Name: 
-- Module Name: DEMUX124_adatfolyam - Behavioral
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

entity DEMUX124_adatfolyam is
Port ( i : in STD_LOGIC;
           s : in STD_LOGIC_VECTOR (1 downto 0);
           O0 : out STD_LOGIC;
           O1 : out STD_LOGIC;
           O2 : out STD_LOGIC;
           O3 : out STD_LOGIC);
end DEMUX124_adatfolyam;

architecture Behavioral of DEMUX124_adatfolyam is

begin

O0 <= i and (not s(0)) and (not s(1));
O1 <= i and s(0) and (not s(1));
O2 <= i and (not s(0)) and s(1);
O3 <= i and s(0) and s(1);

end Behavioral;
