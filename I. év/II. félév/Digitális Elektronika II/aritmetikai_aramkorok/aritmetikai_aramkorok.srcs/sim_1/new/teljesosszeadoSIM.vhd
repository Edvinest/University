----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/20/2024 03:49:57 PM
-- Design Name: 
-- Module Name: teljesosszeadoSIM - Behavioral
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

entity teljesosszeadoSIM is
--  Port ( );
end teljesosszeadoSIM;

architecture Behavioral of teljesosszeadoSIM is

component teljes_osszeado is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           Cin : in STD_LOGIC;
           S : out STD_LOGIC;
           Cy : out STD_LOGIC);
end component;

signal a, b, Cin: std_logic := '0';

signal S, Cy: std_logic;

begin

uut: teljes_osszeado PORT MAP(
    a => a,
    b => b,
    Cin => Cin,
    S => S,
    Cy => Cy
);

stim_proc: process
begin
wait for 100 ns;
    a <= '0';
    b <= '0';
    Cin <= '0';
    wait for 100 ns; 
    a <= '0';
    b <= '0';
    Cin <= '1';
    wait for 100 ns;
    a <= '0';
    b <= '1';
    Cin <= '0';
    wait for 100 ns;
    a <= '0';
    b <= '1';
    Cin <= '1';
    wait for 100 ns;
    a <= '1';
    b <= '0';
    Cin <= '0';
    wait for 100 ns;
    a <= '1';
    b <= '0';
    Cin <= '1';
    wait for 100 ns;
    a <= '1';
    b <= '1';
    Cin <= '0';
    wait for 100 ns;
    a <= '1';
    b <= '1';
    Cin <= '1';
    wait for 100 ns;
end process;

end Behavioral;
