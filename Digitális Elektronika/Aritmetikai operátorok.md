NEM kapu

```
entity NOT_GATE is
    Port ( a : in STD_LOGIC;
           F : out STD_LOGIC);
end NOT_GATE;

architecture Behavioral of NOT_GATE is

begin

F <= not a;

end Behavioral;
```

VAGY kapu (4 bemenet)

```
entity OR_GATE_FOUR is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           d : in STD_LOGIC;
           F : out STD_LOGIC);
end OR_GATE_FOUR;

architecture Behavioral of OR_GATE_FOUR is

begin

F <= a or b or c or d;

end Behavioral;
```

ÉS kapu (3 bemenet)

```
entity AND_GATE_THREE is
    Port ( a : in STD_LOGIC;
           S1 : in STD_LOGIC;
           S2 : in STD_LOGIC;
           F : out STD_LOGIC);
end AND_GATE_THREE;

architecture Behavioral of AND_GATE_THREE is

begin

F <= a and S1 and S2;

end Behavioral;

```