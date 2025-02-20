----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/23/2024 05:35:36 PM
-- Design Name: 
-- Module Name: DEMUX124_strukturalis - Behavioral
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

entity DEMUX124_strukturalis is
    Port ( i : in STD_LOGIC;
           s : in STD_LOGIC_VECTOR (1 downto 0);
           O0 : out STD_LOGIC;
           O1 : out STD_LOGIC;
           O2 : out STD_LOGIC;
           O3 : out STD_LOGIC);
end DEMUX124_strukturalis;

architecture Behavioral of DEMUX124_strukturalis is

component AND_GATE_THREE is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           F : out STD_LOGIC);
end component;

component NOT_GATE is
    Port ( a : in STD_LOGIC;
           F : out STD_LOGIC);
end component;

signal nems0,nems1 : std_logic ;

begin

U1: NOT_GATE port map(s(0),nems0);
U2: NOT_GATE port map(s(1),nems1);
U3: AND_GATE_THREE port map(i,nems0,nems1,O0);
U4: AND_GATE_THREE port map(i,s(0),nems1,O1);
U5: AND_GATE_THREE port map(i,nems0,s(1),O2);
U6: AND_GATE_THREE port map(i,s(0),s(1),O3);

end Behavioral;
