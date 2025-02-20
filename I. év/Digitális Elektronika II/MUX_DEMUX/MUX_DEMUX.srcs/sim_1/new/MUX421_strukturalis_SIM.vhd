----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/01/2024 01:18:46 PM
-- Design Name: 
-- Module Name: MUX421_strukturalis_SIM - Behavioral
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

entity MUX421_strukturalis_SIM is
--  Port ( );
end MUX421_strukturalis_SIM;

architecture Behavioral of MUX421_strukturalis_SIM is

component MUX421_strukturalis is
    Port ( i0 : in STD_LOGIC;
           i1 : in STD_LOGIC;
           i2 : in STD_LOGIC;
           i3 : in STD_LOGIC;
           S : in STD_LOGIC_VECTOR (1 downto 0);
           O : out STD_LOGIC);
end component;

signal i0, i1, i2, i3 : std_logic := '0';
signal S : std_logic_vector (1 downto 0) := "00";
signal O : std_logic;

begin

uut: MUX421_strukturalis PORT MAP(
    i0 => i0,
    i1 => i1,
    i2 => i2,
    i3 => i3,
    S => S,
    O => O
);

stim_proc: process
begin
wait for 100 ns;
i0 <= '0';
i1 <= '0';
i2 <= '0';
i3 <= '0';
S <= "00";
wait for 100 ns;
i0 <= '1';
i1 <= '0';
i2 <= '0';
i3 <= '0';
S <= "01";
wait for 100 ns;
i0 <= '0';
i1 <= '0';
i2 <= '1';
i3 <= '0';
S <= "10";
wait for 100 ns;
i0 <= '0';
i1 <= '0';
i2 <= '0';
i3 <= '1';
S <= "11";
end process;

end Behavioral;
