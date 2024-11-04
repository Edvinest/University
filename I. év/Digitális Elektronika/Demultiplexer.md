Strukturális

```
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
```

Funkcionális

```
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

```

Adatfolyam

```
entity DEMUX124_adatfolyam is
Port ( i : in STD_LOGIC;
           s : in STD_LOGIC_VECTOR (1 downto 0);
           O0 : out STD_LOGIC;
           O1 : out STD_LOGIC;
           O2 : out STD_LOGIC;
           O3 : out STD_LOGIC);
end DEMUX124_adatfolyam;

architecture Behavioral of DEMUX124_adatfolyam is

begin

O0 <= i and (not s(0)) and (not s(1));
O1 <= i and s(0) and (not s(1));
O2 <= i and (not s(0)) and s(1);
O3 <= i and s(0) and s(1);

end Behavioral;
```