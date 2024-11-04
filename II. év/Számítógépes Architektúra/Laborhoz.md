![Tömbvázlat](tombvazlat.png)


## LOAD sX, sY (sX = sY)
0. Instruction fetch // Kérés fázis
1. Dekódolás (MUX_Sel = "100") //
2. RW = '0' //
3. RW = '1' //             Specifikus fázis
4. RW = '0' //

## STORE sX, (sY) || DataMem(sY) = sX
0. Instruction Fetch
1. Dekódolás, Sel_Addr = '1'
2. RW = '0'
3. MWr = '1'
4. MWr = '0'

## ADDCy sX, Sy || sX = sX + sY + C
sX + sY + C -> ALU Result
0. Instruction Fetch
1. Dekódolás, ALUresult = "010"
2. RW = '0'
3. EXECUTE = '1'
4. RW = '1'
5. EXECUTE = '0'
6. RW = '0'