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
           x : in STD_LOGIC;
           Q0 : out STD_LOGIC;
           Q1 : out STD_LOGIC;
           z : out STD_LOGIC);
end MEALYautomata;

architecture Behavioral of MEALYautomata is

--az állapotok bináris kódolása
CONSTANT S0 : std_logic_vector (1 DOWNTO 0) :="00";
CONSTANT S1 : std_logic_vector (1 DOWNTO 0) :="01";
CONSTANT S2 : std_logic_vector (1 DOWNTO 0) :="10";
CONSTANT S3 : std_logic_vector (1 DOWNTO 0) :="11";

--az aktuális és a következő állapotokat tartalmazó állapotregiszterek deklarálása
SIGNAL aktualis, kovetkezo : std_logic_vector (1 DOWNTO 0);

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
PROCESS (aktualis,x)
    BEGIN
        CASE aktualis IS
            WHEN S0 =>
                IF ( x='0' ) THEN
                    --a következő állapot és a kimenet is függ a bemenettől
                    kovetkezo<=S0;
                    kovetkezo_z<='0';
                END IF;
                
                IF ( x='1' ) THEN
                    kovetkezo<=S2;
                    kovetkezo_z<='1';
                END IF;

            WHEN S1 =>
                IF ( x='1' ) THEN
                    kovetkezo<=S2;
                    kovetkezo_z<='1';
                END IF;
                
                IF ( x='0' ) THEN
                    kovetkezo<=S0;
                    kovetkezo_z<='0';
                END IF;

            WHEN S2 =>
                IF ( x='0' ) THEN
                    kovetkezo<=S2;
                    kovetkezo_z<='1';
                END IF;

                IF ( x='1' ) THEN
                    kovetkezo<=S3;
                    kovetkezo_z<='0';
                END IF;

           WHEN S3 =>
                IF ( x='0' ) THEN
                    kovetkezo<=S3;
                    kovetkezo_z<='0';
                END IF;
                
                IF ( x='1' ) THEN
                    kovetkezo<=S1;
                    kovetkezo_z<='1';
                END IF;
            
            WHEN OTHERS => kovetkezo_z<='Z'; kovetkezo<="ZZ";
END CASE;
END PROCESS;

--a kimenetek felveszik az aktuális állapotregiszter értékeit
Q0<=aktualis(0);
Q1<=aktualis(1);

end Behavioral;
