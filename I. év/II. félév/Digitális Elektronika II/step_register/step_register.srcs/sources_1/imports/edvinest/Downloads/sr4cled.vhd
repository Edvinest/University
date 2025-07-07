-------------------------------------------------------------------------------
-- Copyright (c) 2006 Xilinx, Inc.
-- All Right Reserved.
-------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor      : Xilinx
-- \   \   \/     Version     : J.23
--  \   \         Description : Xilinx HDL Macro Library
--  /   /                       4-Bit Shift Register with Clock Enable and Asynchronous Clear
-- /___/   /\     Filename    : SR4CLED.vhd
-- \   \  /  \    Timestamp   : Fri Jul 21 2006
--  \___\/\___\
--
-- Revision:
-- 07/21/06 - Initial version.
-- End Revision

----- CELL SR4CLED -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SR4CLED is
port (
    Q0   : out STD_LOGIC;
    Q1   : out STD_LOGIC;
    Q2   : out STD_LOGIC;
    Q3   : out STD_LOGIC;
    C    : in STD_LOGIC;
    CE   : in STD_LOGIC;
    CLR  : in STD_LOGIC;
    D0   : in STD_LOGIC;
    D1   : in STD_LOGIC;
    D2   : in STD_LOGIC;
    D3   : in STD_LOGIC;
    L    : in STD_LOGIC;
    LEFT : in STD_LOGIC;
    SLI  : in STD_LOGIC;
    SRI  : in STD_LOGIC
    );
end SR4CLED;

architecture Behavioral of SR4CLED is
signal q_tmp : std_logic_vector(3 downto 0);
begin

process(C, CLR)
begin
  if (CLR='1') then
    q_tmp <= "0000";
  elsif (C'event and C = '1') then
    if (L= '1') then
      q_tmp <= D3&D2&D1&D0;
    elsif (CE='1') then 
      if (LEFT= '1') then
        q_tmp <= ( q_tmp(2 downto 0) & SLI );
      else
        q_tmp <= ( SRI & q_tmp(3 downto 1) );
      end if;
    end if;
  end if;
end process;

Q3 <= q_tmp(3);
Q2 <= q_tmp(2);
Q1 <= q_tmp(1);
Q0 <= q_tmp(0);


end Behavioral;

