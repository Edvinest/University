Strukturális

```
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

```

Funkcionális

```
entity MUX421_funkcionalis is
    Port ( i0 : in STD_LOGIC;
           i1 : in STD_LOGIC;
           i2 : in STD_LOGIC;
           i3 : in STD_LOGIC;
           S : in STD_LOGIC_VECTOR (1 downto 0);
           O : out STD_LOGIC);
end MUX421_funkcionalis;

architecture Behavioral of MUX421_funkcionalis is

begin

process(i0, i1, i2, i3)
begin
    case S is
        when "00"=>O<=i0;
        when "01"=>O<=i1;
        when "10"=>O<=i2;
        when "11"=>O<=i3;
    end case;
end process;

end Behavioral;
```

Adatfolyam

```
entity MUX421_adatfolyam is
    Port ( i0 : in STD_LOGIC;
           i1 : in STD_LOGIC;
           i2 : in STD_LOGIC;
           i3 : in STD_LOGIC;
           S : in STD_LOGIC_VECTOR (1 downto 0);
           O : out STD_LOGIC);
end MUX421_adatfolyam;

architecture Behavioral of MUX421_adatfolyam is

begin

O <= (i0 and (not S(0)) and (not S(1))) or (i1 and (not S(1)) and S(0)) or (i2 and S(1) and (not S(0))) or (i3 and S(1) and S(0));

end Behavioral;

```