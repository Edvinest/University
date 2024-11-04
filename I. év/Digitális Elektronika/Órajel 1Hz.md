```
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL; 

^ kell az órajelhez

entity clock_1Hz is
    Port ( reset : in STD_LOGIC;
           clk_in : in STD_LOGIC;
           clk_out : out STD_LOGIC);
end clock_1Hz;

architecture Behavioral of clock_1Hz is

signal clk_cnt: unsigned(25 downto 0);
signal clk_bit: std_logic;

begin

process(clk_in, reset) is
    begin
        if(reset = '0')
            then 
                clk_cnt <= "00000000000000000000000000";
                clk_bit <= '0';
        elsif rising_edge(clk_in)
            then
                if(clk_cnt = 10) -- 50_000_000
                  then
                    clk_cnt <= "00000000000000000000000000";
                    clk_bit <= not clk_bit;
                    
                else 
                    clk_cnt <= clk_cnt + 1;
                end if;
        end if;
end process;

clk_out <= clk_bit;

end Behavioral;
```

## Teszt

```
entity clk_1Hz_TEST is
-- Port ();
end clk_1Hz_TEST;

architecture Behavioral of clk_1Hz_TEST is

component clock_1Hz
    Port ( reset : in STD_LOGIC;
           clk_in : in STD_LOGIC;
           clk_out : out STD_LOGIC);
end component;

signal reset_TEST, clk_in_TEST : STD_LOGIC := '0';
signal clk_out_TEST : STD_LOGIC;

constant clk_in_period : time := 10 ns;

begin

 UUT: clock_1Hz PORT MAP (
        reset => reset_TEST,
        clk_in => clk_in_TEST,
        clk_out => clk_out_TEST
    );

clk_in_process: process
begin
    clk_in_TEST <= '0';
    wait for clk_in_period/2;
    clk_in_TEST <= '1';
    wait for clk_in_period/2;
end process;

stim_proc: process
begin
    wait for 100 ns;
    reset_TEST <= '1';
    wait;
end process;

end Behavioral;
```
