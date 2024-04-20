Félösszeadó

```
entity felosszado is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           s : out STD_LOGIC;
           Cy : out STD_LOGIC);
end felosszado;

architecture Behavioral of felosszado is

begin

s <=a xor b;
Cy <= a and b;

end Behavioral;
```

Teljes összeadó

```
entity teljes_osszeado is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           Cin : in STD_LOGIC;
           S : out STD_LOGIC;
           Cy : out STD_LOGIC);
end teljes_osszeado;

architecture Behavioral of teljes_osszeado is

begin

Cy <= (a and b) or (Cin and (a or b));
S <= Cin xor a xor b;

end Behavioral;
```

Négy bit összeadó

```
entity negybitesosszeado is
    Port ( a0 : in STD_LOGIC;
           a1 : in STD_LOGIC;
           a2 : in STD_LOGIC;
           a3 : in STD_LOGIC;
           b0 : in STD_LOGIC;
           b1 : in STD_LOGIC;
           b2 : in STD_LOGIC;
           b3 : in STD_LOGIC;
           S0 : out STD_LOGIC;
           S1 : out STD_LOGIC;
           S2 : out STD_LOGIC;
           S3 : out STD_LOGIC;
           S4 : out STD_LOGIC);
end negybitesosszeado;


architecture Behavioral of negybitesosszeado is

component felosszado is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           s : out STD_LOGIC;
           Cy : out STD_LOGIC);
end component;

component teljes_osszeado is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           Cin : in STD_LOGIC;
           S : out STD_LOGIC;
           Cy : out STD_LOGIC);
end component;

signal Cy0, Cy1, Cy2, Cy3 : STD_LOGIC;

begin
U1:felosszado port map(a0, b0, S0, Cy0);
U2:teljes_osszeado port map(a1, b1, Cy0, S1, Cy1);
U3: teljes_osszeado port map(a2, b2, Cy1, S2, Cy2);
U4: teljes_osszeado port map(a3, b3, Cy2, S3, S4);

end Behavioral;
```

PCL négy bit

```
entity pclnegybit is
    Port ( a0 : in STD_LOGIC;
           a1 : in STD_LOGIC;
           a2 : in STD_LOGIC;
           a3 : in STD_LOGIC;
           b0 : in STD_LOGIC;
           b1 : in STD_LOGIC;
           b2 : in STD_LOGIC;
           b3 : in STD_LOGIC;
           S0 : out STD_LOGIC;
           S1 : out STD_LOGIC;
           S2 : out STD_LOGIC;
           S3 : out STD_LOGIC;
           S4 : out STD_LOGIC);
end pclnegybit;

architecture Behavioral of pclnegybit is

component gposszeado is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           Cin : in STD_LOGIC;
           G : out STD_LOGIC;
           P : out STD_LOGIC;
           S : out STD_LOGIC);
 end component;
 
 component pclosszeado is
    Port ( G0 : in STD_LOGIC;
           P1 : in STD_LOGIC;
           G1 : in STD_LOGIC;
           P2 : in STD_LOGIC;
           G2 : in STD_LOGIC;
           P3 : in STD_LOGIC;
           G3 : in STD_LOGIC;
           Cy0 : out STD_LOGIC;
           Cy1 : out STD_LOGIC;
           Cy2 : out STD_LOGIC;
           Cy3 : out STD_LOGIC);
  end component;

signal P0,G0,P1,G1,P2,G2,P3,G3,Cy0,Cy1,Cy2,Cy3 : STD_LOGIC;

begin
U1: gposszeado port map (a0, b0, '0', G0, P0, S0);
U2: gposszeado port map (a1, b1, Cy0, G1, P1, S1);
U3: gposszeado port map (a2, b3, Cy1, G2, P2, S2);
U4: gposszeado port map (a3, b3, Cy2, G3, P3, S3);
U5: pclosszeado port map (G0, P1, G1, P2, G2, P3, G3, Cy0, Cy1, Cy2, S4);

end Behavioral;
```