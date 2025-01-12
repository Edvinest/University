![Tömbvázlat](tombvazlat.png)

## Komponensek
### Utasítás betöltő és dekódoló (IFDEC)
Mivel a tervezett CPU, Harvard architektúrájú RISC processzor, a célunk, hogy az utasítások végrehajtása minél egyszerűbb legyen, lehetőleg minél kevesebb mikrolépés során érjen véget. A különálló modulként létrehozott programmemóriából, a programok utasításait áthozzuk a processzorba, végrehajtás céljából. A betöltés és dekódolás képezi a végrehajtás első, úgynevezett közös fázisát, hisz ez minden típusú utasítás esetében megegyezik. E közös fázisért az IF&DEC a felelős. A vezérlő egység által szolgáltatott programmemória címen levő utasítás 18 bitje érkezik az IF&DEC egység bemenetére. Az egység feladata, a 18 bites utasítások dekódolása, azaz vizsgálva az utasításkód értékét, megjeleníteni a megfelelő kimeneten vagy kimeneteken, az érkezett utasítástípus mezőinek értékeit.
### A regisztertömb
A regisztertömb tinzenhat általános célú (akkumulátor-szerű) regisztert tartalmaz, melyek mindegyike egy-egy 16 bites adatot tárol. A regisztereket az s0, s1, ... sE, sF nevekkel látjuk, s ezekkel hivatkozhatunk rájuk az utasításokban. A regisztertömb modul egy adatbemenettel, két regisztercím bemenettél és két adatkimenettel rendelkezik. Ezek, valamint egy vezérlőjel segítségével, írásra egy, olvasására pedig egyszerre két regisztert címezhetünk meg. A regisztertömb adatbemenetére csatolt multiplexer segítségével kiválaszthatjuk, hogy mely alkatrész kimenetét szeretnénk a regisztertömbbe menteni. Ugyanakkor, a két kimenet által a regiszterek tartalma továbbadható más alkatrészek fele.
### Az adatmemória
Mivel Harvard architektúréban az adat és a programmemória két, különálló egységben foglal helyet, ezt nekünk is így kell implementálnunk. Processzorunk adatmemóriája (Scratchpad) 64 lokációval rendelkezik, melyek mindegyike 16 bites adatokat tud tárolni. A modulnak egy adatbemenete és egy adatkimeneti jele van, melyeken keresztül új adat hozható be, illetve a tárolt adatok olvashatóak ki. A memória két címbemenettel rendelkezik (egyidőben csak az egyik használható), mivel az utasításaink direkt és indirekt címzést is használhatnak az adatmozgatásoknál. Az adatmemória csak a regisztertömbbel áll közvetlen kapcsolatba, adatok innen/ide mozgathatóak.
### A programmemória
A proceszorra írt utasításaink tárolási helye a programmemória.
### Az Aritmetikai-Logikai egység
Az ALU feladata, az utasásokban megfogalmazott matematikai és logikai műveletek elvégzése. Az ehhez szükséges adatok érkezhetnek vagy a regisztertömb két adatkimenetéről, vagy, annak az X kimenetéről illetve a dekódoló egység KK_const kimenetéről, melyen az utasításba kódolt azonnali érték (konstans) érkezhet.
### A Port Logika
Minden tárolt programú processzor alkalmazásának célja, annak környezetéből érkező adatok feldolgozása, illetve visszajelzés létrehozása (például, vezérlő jel generálása egy folyamatirányító körben) a környezet számára. Az általunk tervezett és fejlesztett processzor esetében, a Port Logika egység biztosítja a belső alkatrészek és a környezet közötti adatkommunikációt. Ennek érdekében, a port logika adatot kaphat a regisztertömbből, melyet egy külső periféria fele tud kiküldeni (port-ra írás). A fordított művelet esetén, külső periféria által szolgáltatott adatot hoz be a regisztertömb egyik regiszterébe.
A processzor és a perifériák közötti interfész, egy port-azonosító (PortID) értéket (melyet az utasítások direkt vagy indirekt - regiszteren - keresztül - müdon állítanak be), valamint az átvitel irányát meghatározó állapotjelző kimeneteket (ReadStrobe, WriteStrobe) használ.
### A vezérlőegység
A processzor minden eddigi alegységének a működését a vezérlőegység koordinálja. Ennek érdekében, itt többfeladatú, komplex áramkört kell tervezni, mely a közös fázis (programmemória címzés és utasításbetöltés) után, a mikrolépésre valós felosztást követve, minden utasítás minden órajelében meghatározza a szükséges, aktív állapotba kapcsolt vezérlőjelek csoportját. Ugyanakkor, figyelembe kell vennie - elágazásképző utasítások vagy megszakításkérés esetén - azt, hogy ugrást/függvényhívást szükséges-e végrehatjani. Ez esetben, a következő utasítás címét az ugrási címmel kell meghatározni, máskülönben növelni kell a programmemória címet, biztosítva ezáltal a program végrehajtásának előre haladását.
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
