----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/23/2024 05:35:36 PM
-- Design Name: 
-- Module Name: DEMUX124_funkcionalis - Behavioral
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

entity DEMUX124_funkcionalis is
    Port ( i : in STD_LOGIC;
           s : in STD_LOGIC_VECTOR (1 downto 0);
           O0 : out STD_LOGIC;
           O1 : out STD_LOGIC;
           O2 : out STD_LOGIC;
           O3 : out STD_LOGIC);
end DEMUX124_funkcionalis;
architecture Behavioral of DEMUX124_funkcionalis is

begin

process(i,s)
begin

case s is
    when "00" => 
    O0<=i;
    O1<='0';
    O2<='0';
    O3<='0';
    when "01" =>
    O1<=i;
    O0<='0';
    O2<='0';
    O3<='0';
    when "10" => 
    O2<=i;
    O0<='0';
    O1<='0';
    O3<='0';
    when "11" => 
    O3<=i;
    O0<='0';
    O1<='0';
    O2<='0';
    when others => 
    O0<='Z';
    O1<='Z';
    O2<='Z';
    O3<='Z';
end case;

end process; 

end Behavioral;
