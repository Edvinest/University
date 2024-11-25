![Tömbvázlat](tombvazlat.png)


## LOAD sX, sY (sX = sY)
0. Instruction fetch // Kérés fázis
1. Dekódolás (MUX_Sel = "100") //
2. RW = '0' //
3. RW = '1' //             Specifikus fázis
4. RW = '0' //
## LOAD sX, KK
0. Instruction fetch
1. Dekódolás, MUX_Sel = "011"
2. RW = '1'
3. RW = '0'
## STORE sX, (sY) || DataMem(sY) = sX
0. Instruction Fetch
1. Dekódolás, MUXSel = "000", Sel_Addr = '1'
2. RW = '0'
3. MWr = '1'
4. MWr = '0'
## Fetch sX, sa
0. Instruction Fetch
1. Dekódolás, MUXSel = "000", Sel_Addr = '1'
2. RW = '0'
3. MRd = '1'
4. MRd = '0'
## Fetch sX, (sY)
0. Instruction Fetch
1. Dekódolás, MUXSel = "000", Sel_Addr = '0'
2. RW = '0'
3. MRd = '1'
4. MRd = '0'
# I/O
## INPUT sX, PP
0. Instruction Fetch
1. Dekódolás, MUXsel = 001,  RW = '0', PortID_sel = '0'
2. IORD = '1' (PortID = PP)
3. IORD = '1' (ReadStrobe = '1')
3. IORD = '1', RW = '1' (PortIntoCPU = PortDataIn)
4. IORD = '0', RW = '0' (ReadStrobe = '0' )

## INPUT sX, (sY)
0. Instruction Fetch
1. Dekódolás, MUXsel = "001", RW = '0', PortID_sel = '1'
2. IORD = '1' (PortID = DataOutY)
3. IORD = '1' (ReadStrobe = '1')
4. IORD = '1', RW = '1' (PortIntoCPU = PortDataIn)
5. IORD = '0', RW = '0' (ReadStrobe = '0')
## OUTPUT sX, PP
0. Instruction Fetch
1. Dekódolás, MUXSel = 001, RW = '0', PortID_sel = '1'
2. IOWR = '1' (PortID = PP)
3. IOWR = '1' (PortDataOut = DataOutX)
4. IOWR = '1' (WriteStrobe = '1')
5. IOWR = '0' (WriteStrobe = '0')
## OUTPUT sX, (sY)
0. Instruction Fetch
1. Dekódolás, MUXSel = 001, RW = '0', PortID_sel = '0'
2. IOWR = '1' (PortID = DataOutY)
3. IOWR = '1' (PortDataOut = DataOutX)
4. IOWR = '1' (WriteStrobe = '1')
5. IOWR = '0' (WriteStrobe = '0')

# Aritmetikai műveletek (az összes ugyanaz)
## ADDCy sX, Sy || sX = sX + sY + C
sX + sY + C -> ALU Result
0. Instruction Fetch
1. Dekódolás, ALUresult = "010"
2. RW = '0'
3. EXECUTE = '1'
4. RW = '1'
5. EXECUTE = '0'
6. RW = '0'
