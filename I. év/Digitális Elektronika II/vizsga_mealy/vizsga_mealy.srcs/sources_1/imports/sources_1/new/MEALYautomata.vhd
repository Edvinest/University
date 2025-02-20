----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/30/2024 02:46:20 PM
-- Design Name: 
-- Module Name: MEALYautomata - Behavioral
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

entity MEALYautomata is
    Port ( CLK_IN : in STD_LOGIC;
           a : in STD_LOGIC;
           b : in STD_LOGIC;
           Q0 : out STD_LOGIC;
           Q1 : out STD_LOGIC;
           Q2 : out STD_LOGIC;
           z : out STD_LOGIC);
end MEALYautomata;

architecture Behavioral of MEALYautomata is

--az állapotok bináris kódolása
CONSTANT S0 : std_logic_vector (2 DOWNTO 0) :="000";
CONSTANT S1 : std_logic_vector (2 DOWNTO 0) :="001";
CONSTANT S2 : std_logic_vector (2 DOWNTO 0) :="011";
CONSTANT S3 : std_logic_vector (2 DOWNTO 0) :="100";
CONSTANT S4 : std_logic_vector (2 DOWNTO 0) :="101";
CONSTANT S5 : std_logic_vector (2 DOWNTO 0) :="110";

--az aktuális és a következő állapotokat tartalmazó állapotregiszterek deklarálása
SIGNAL aktualis, kovetkezo : std_logic_vector (2 DOWNTO 0);

--a kimenet következő értékét tartalmazó jel deklarálása
SIGNAL kovetkezo_z : std_logic;

begin

-- órajel felfutó élét figyelő folyamat
PROCESS (CLK_IN, kovetkezo, kovetkezo_z)
    BEGIN
        IF rising_edge(CLK_IN) THEN
        --átlépteti az automatát az aktuális állapotból a következo állapotba
        aktualis <= kovetkezo;

        --kiadja a következo kimenetet
        z <= kovetkezo_z;
        END IF;
END PROCESS;

--Következo állapotot és kimenetet eloállító folyamat
PROCESS (aktualis,a,b)
    BEGIN
        CASE aktualis IS
            WHEN S0 =>
                --a következő állapot és a kimenet is függ a bemenettől
                kovetkezo<=S1;

            WHEN S1 =>
                IF ( a='1' ) THEN
                    kovetkezo<=S4;
                    kovetkezo_z<='1';
                END IF;
                
                IF ( a='0' ) THEN
                    kovetkezo<=S2;
                    kovetkezo_z<='0';
                END IF;

            WHEN S2 =>
                IF ( b = '0' ) THEN
                    kovetkezo<=S3;
                    kovetkezo_z<='0';
                END IF;

                IF ( b ='1' ) THEN
                    kovetkezo<=S4;
                    kovetkezo_z<='1';
                END IF;

           WHEN S3 =>
                kovetkezo<=S4;
            
           WHEN S4 =>
                if( a = '0') THEN
                    kovetkezo<=S4;
                    kovetkezo_z <= '0';
                END IF;
                
                if( a = '1') THEN
                    kovetkezo <= S5;
                    kovetkezo_z <= '1';
                 END IF;
                 
             WHEN S5 =>
                  kovetkezo <= S0;
            
            WHEN OTHERS => kovetkezo_z<='Z'; kovetkezo<="ZZZ";
END CASE;
END PROCESS;

--a kimenetek felveszik az aktuális állapotregiszter értékeit
Q0<=aktualis(0);
Q1<=aktualis(1);
Q2<=aktualis(2);

end Behavioral;
