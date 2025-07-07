----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/30/2024 02:46:20 PM
-- Design Name: 
-- Module Name: MOOREautomata - Behavioral
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

entity MOOREautomata is
    Port ( CLK_IN : in STD_LOGIC;
           x : in STD_LOGIC;
           Q0 : out STD_LOGIC;
           Q1 : out STD_LOGIC;
           z : out STD_LOGIC);
end MOOREautomata;

architecture Behavioral of MOOREautomata is

-- állapotok bináris kódja
CONSTANT S0 : std_logic_vector (1 DOWNTO 0) :="00";
CONSTANT S1 : std_logic_vector (1 DOWNTO 0) :="01";
CONSTANT S2 : std_logic_vector (1 DOWNTO 0) :="10";
CONSTANT S3 : std_logic_vector (1 DOWNTO 0) :="11";

-- aktuális és kövektező állapotokat tartalmazó állapotregiszterek
SIGNAL aktualis, kovetkezo : std_logic_vector (1 DOWNTO 0);

begin

PROCESS (CLK_IN)
BEGIN

    IF rising_edge(CLK_IN) THEN
        --órajel felfutó él detektálása esetén átlépteti az automatát az aktuális állapotból a következő állapotba
        aktualis <= kovetkezo;
    END IF;
END PROCESS;

PROCESS (aktualis,x)
BEGIN

CASE aktualis IS
    WHEN S0 => z <= '0';-- az állapotot ismerve, megadható a kimenet értéke
        
        --a bemenetet megvizsgálva megadható a következő állapot
        IF x='1' THEN kovetkezo <= S2;
        ELSE kovetkezo <= S0;
        END IF;
    
    WHEN S1 => z <= '1';

        IF x='1' THEN kovetkezo <= S2;
        ELSE kovetkezo <= S0;
        END IF;

    WHEN S2 => z <= '1';

        IF x='1' THEN kovetkezo <= S3;
        ELSE kovetkezo <= S2;
        END IF;
        
    WHEN S3 => z <= '0';

        IF x='1' THEN kovetkezo <= S1;
        ELSE kovetkezo <= S3;
        END IF;

    WHEN OTHERS => z<='Z'; kovetkezo<="ZZ";
END CASE;
END PROCESS;

Q0 <= aktualis(0);
Q1 <= aktualis(1);

end Behavioral;
