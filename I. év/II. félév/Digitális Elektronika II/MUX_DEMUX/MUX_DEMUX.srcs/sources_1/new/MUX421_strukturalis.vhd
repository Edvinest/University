----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/21/2024 03:19:46 PM
-- Design Name: 
-- Module Name: MUX421_strunkturalis - Behavioral
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

entity MUX421_strunkturalis is
 Port ( i0 : in STD_LOGIC;
           i1 : in STD_LOGIC;
           i2 : in STD_LOGIC;
           i3 : in STD_LOGIC;
           s : in STD_LOGIC_VECTOR (1 downto 0);
           O : out STD_LOGIC);
end MUX421_strunkturalis;

architecture Behavioral of MUX421_strunkturalis is

component OR_GATE_FOUR is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           d : in STD_LOGIC;
           F : out STD_LOGIC);
end component;

component NOT_GATE is
    Port ( a : in STD_LOGIC;
           F : out STD_LOGIC);
end component;

component AND_GATE_THREE is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           F : out STD_LOGIC);
end component;

signal nemS0,nems1,t0,t1,t2,t3 : std_logic;

begin

U1: NOT_GATE port map(s(0),nems0);
U2: NOT_GATE port map(s(1),nems1);
U3: AND_GATE_THREE port map(i0,nems0,nems1,t0);
U4: AND_GATE_THREE port map(i1,s(0),nems1,t1);
U5: AND_GATE_THREE port map(i2,nems0,s(1),t2);
U6: AND_GATE_THREE port map(i3,s(0),s(1),t3);
U7: OR_GATE_FOUR port map(t0,t1,t2,t3,O);

end Behavioral;
