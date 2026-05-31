1. **Mi egy funkcionális elektronikus áramkör?**
Egy meghatározott feladatot (pl. jelerősítés, kapcsolás, logikai művelet) ellátó, elektronikai alkatrészekből felépülő logikai vagy analóg egység.

2. **Milyen egy mikroszámítógép általános felépítése?**
Központi feldolgozó egységből (CPU), memóriából (RAM, ROM) és ki/bemeneti (I/O) perifériákból áll, amelyeket egy buszrendszer köt össze.

3. **Milyen egy mikroszámítógép buszrendszere?**
Adat-, cím- és vezérlőbuszokból álló hálózat, amely az alkatrészek közötti információáramlást és címezhetőséget biztosítja.

4. **Hogy néz ki egy mikrovezérlő tömbvázlata?**
Egyetlen szilíciumlapkán (chipen) integrálja a CPU-t, a program- és adatmemóriát, az órajelgenerátort, valamint a különböző perifériákat (I/O portok, timerek, ADC).

5. **Mi az ALU és hova kapcsolódik?**
Aritmetikai és Logikai Egység (Arithmetic Logic Unit), amely a matematikai és logikai műveleteket végzi, és közvetlenül a CPU munkaregisztereihez (pl. Akkumulátor) kapcsolódik.

6. **Mi a programmemória és milyen a szerkezete?**
Általában nem felejtő memória (pl. Flash vagy ROM), amely a végrehajtandó gépi utasításokat (programkódot) tárolja, címezhető rekeszekből felépítve.

7. **Mi az adatmemória és milyen a szerkezete?**
Általában felejtő memória (SRAM), amely a program futása során keletkező változókat, az átmeneti adatokat és a speciális funkciójú regisztereket tárolja.

8. **Mi a gépi ciklus és mi a jellegzetessége?**
Az a minimális időtartam, amely alatt a CPU egy alapvető belső műveletet elvégez; általában a fő oszcillátor frekvenciájának hardveres leosztásával jön létre.

9. **Mi az utasításciklus és mennyi ideig tart?**
Az az időtartam, ami egy teljes gépi utasítás beolvasásához és végrehajtásához szükséges; architektúrától függően egy vagy több gépi ciklusból áll (pl. PIC esetén 4 órajel egy ciklus).

10. **Milyen lépésekből áll egy gépi utasítás végrehajtása?**
Utasítás lehívása a memóriából (Fetch), dekódolása (Decode), végrehajtása (Execute) és az eredmény eltárolása (Store).

11. **Miért szükséges egy extra gépi ciklus ugró utasítások esetén?**
Mert az ugrás megváltoztatja a programszámlálót (PC), így a pipeline (csővezeték) által már előre letöltött következő utasítást el kell dobni és egy újat kell beolvasni.

12. **Mi az átfedéses utasítás végrehajtás?**
Más néven Pipeline technika: miközben a CPU az aktuális utasítást végrehajtja, már tölti le a memóriából a következőt, jelentősen növelve a feldolgozási sebességet.

13. **Hogyan csoportosítjuk a gépi kódú utasítás készletet?**
Általában adatmozgató, aritmetikai, logikai, bitmanipulációs, valamint vezérlésátadó (ugró és hívó) utasításokra osztjuk őket.

14. **Mi a programszámláló (PC) és hogyan működik?**
Egy speciális mutató regiszter, amely mindig a soron következő végrehajtandó programmemória-utasítás címét tartalmazza, és automatikusan inkrementálódik.

15. **Mi a SFR és hogyan működnek?**
Speciális Funkciójú Regiszterek (Special Function Registers), amelyek a mikrovezérlő hardveres perifériáinak (pl. portok, timerek) vezérlésére és állapotuk lekérdezésére szolgálnak.

16. **Mi a RESET folyamat a mikrovezérlőknél?**
A mikrovezérlő biztonságos alapállapotba hozása, melynek során a regiszterek felveszik alapértelmezett értéküket, a program futása pedig a kezdőcímről (Reset vektor) indul.

17. **Mi az utasításregiszter (IREG) szerepe?**
A programmemóriából frissen lehívott (beolvasott) gépi utasítás ideiglenes tárolója, amíg a CPU dekódoló egysége értelmezi azt.

18. **Hogyan működik a megszakításkérő eljárás?**
Egy hardveres esemény hatására a CPU felfüggeszti a főprogramot, elmenti a visszatérési címet, és végrehajt egy speciális alprogramot (kiszolgáló rutint), majd visszatér oda, ahol abbahagyta.

19. **Hogyan lehet kijelölni az I/O portok adatirányát?**
Az adatirány-regiszterek (pl. TRIS vagy DIR) megfelelő bitjeinek logikai állapotba (általában 1=bemenet, 0=kimenet) történő beállításával.

20. **Hogy néz ki egy Timer modul?**
Egy hardveres számláló regiszterből és a hozzá tartozó vezérlő/előosztó áramkörökből áll, amely függetlenül képes belső órajeleket vagy külső impulzusokat számolni.

21. **Hányféle RESET állapot lehetséges?**
Általában tápfeszültség bekapcsoláskori (POR), feszültségeséskori (BOR), külső lábon lévő (MCLR), szoftveres, valamint Watchdog timer (WDT) által kiváltott reset létezik.

22. **Mi a Watchdog?**
Egy független, belső időzítő (őrkutya), amely automatikusan újraindítja a mikrovezérlőt, ha a futó program "lefagy" és nem törli (nullázza) az időzítőt rendszeres időközönként.

23. **Sorolja fel a megszakítás forrásokat!**
Időzítők (Timerek) túlcsordulása, külső bemeneti lábak állapotváltozása, analóg-digitális konverzió befejezése, és soros kommunikációs események.

24. **Mi a kódvédelem?**
Egy programozáskor beállítható hardveres biztosíték, amely megakadályozza a chip programmemóriájának külső eszközökkel (programozókkal) történő kiolvasását vagy másolását.

25. **Hogyan helyezkednek el a program és az adatok a memóriában?**
A Neuman architektúránál a kód és az adatok egy közös memóriatérben vannak, míg a Harvard architektúránál fizikailag elkülönített memóriablokkokban és sínrendszereken kapnak helyet.

26. **Mi a különbség a Neuman és Harvard architektúrák között?**
A Neuman közös adat- és címbuszt használ, míg a Harvard elkülönített sínrendszert alkalmaz a kódhoz és az adatokhoz, ami gyorsabb párhuzamos adathozzáférést biztosít.

27. **Mi a különbség a RISC és CISC utasításkészlet között?**
A RISC (Csökkentett) kevés, egyszerű, egyforma hosszúságú és gyors utasítást tartalmaz, a CISC (Összetett) pedig sok, összetett, változó hosszúságú és végrehajtási idejű utasítást.

28. **Melyek a gépi utasítás fő részei?**
Egy műveleti kódból (Opcode), amely megmondja, mit kell csinálni, és az ahhoz tartozó operandusokból (adatszavak vagy címek) áll, amelyeken a műveletet el kell végezni.

29. **Hogyan címezünk n darab egyenként m KB-os memóriát?**
A címsín felső bitjeivel egy dekódolón keresztül (Chip Select) választjuk ki a memóriacsipet (n), az alsó bitekkel pedig az adott chipen belüli rekeszt (m).

30. **Melyek egy Timer modul üzemmódjai?**
Általában időzítő (Timer - belső órajelet számol) és eseményszámláló (Counter - külső impulzusokat számol) üzemmódokban használhatók.

31. **Hogyan működik a Capture üzemmód?**
Egy külső esemény (pl. jelél) bekövetkezésekor a hardver azonnal, szoftveres késleltetés nélkül lementi egy szabadon futó Timer aktuális értékét egy regiszterbe.

32. **Hogyan működik a Compare üzemmód?**
A hardver folyamatosan összehasonlítja a Timer értékét egy előre beírt referenciatartalommal, és egyezéskor automatikusan eseményt (kimenetváltást vagy megszakítást) generál.

33. **Hogyan működik a PWM üzemmód?**
Impulzusszélesség-moduláció: a Timer és a Compare regiszterek együttes használatával a hardver egy meghatározott frekvenciájú és kitöltési tényezőjű négyszögjelet állít elő egy kimeneten.

34. **Mi a szoftveres időzítés elve?**
A processzor ismétlődő, hasznos munkát nem végző utasításciklusokat (pl. üres ciklusok visszaszámlálása) hajt végre, hogy időt "égessen el" a késleltetéshez.

35. **Mi a hardveres időzítés elve?**
A processzortól független Timer periféria számolja az órajeleket a háttérben, így a CPU ezalatt más feladatokat is zavartalanul elvégezhet.

36. **Hogyan programozunk fel egy mikrovezérlőt?**
Egy külső eszköz (programozó) segítségével, célzott protokollon (pl. ICSP) keresztül égetjük be a PC-n megírt és lefordított hexadecimális kódot a chip nem felejtő memóriájába.

37. **Hogyan működik a lapválasztás?**
Ha a címezhető memória nagyobb, mint amit egyetlen utasításszó ki tud fejezni, a memóriát lapokra (bankokra) osztják, és a státuszregiszter bitjeivel választják ki az aktív lapot.

38. **Mi a ciklusidő és mi az utasításidő?**
A ciklusidő az oszcillátor egyetlen periódusának hossza, míg az utasításidő az az időtartam, amely egy utasítás teljes hardveres végrehajtásához szükséges.

39. **Melyek a programmemória kitüntetett címei?**
A Reset vektor (ide ugrik a PC induláskor) és a Megszakítási vektor (Interrupt Vector, ide ugrik a PC egy megszakítási eseménykor).

40. **Hogyan működik a megszakításengedélyezés?**
Egy központi regiszterben (pl. INTCON) külön engedélyező bitekkel aktiválhatók az egyes hardveres események, és egy globális bittel (GIE) engedélyezhető vagy tiltható a teljes rendszer.

41. **Milyen a párhuzamos I/O portok struktúrája?**
Több (általában 8) adatvezetéket egyetlen regiszterbe (Port) fognak össze, amelyek állapotát a CPU egyszerre, egy utasítással képes írni vagy olvasni.

42. **Milyen a soros I/O portok struktúrája?**
Az adatok nem egyszerre, hanem bitenként, időben egymás után haladnak egy-két vezetéken, amihez a mikrovezérlő belső léptető (Shift) regisztereket használ.

43. **Mi az órajel jelentősége a mikrovezérlőknél?**
Ez adja a hardver "szívverését", ez szinkronizálja a CPU and a perifériák minden belső logikai és adatmozgatási műveletét.

44. **Mi az oszcillátor start up működés?**
Bekapcsoláskor egy belső időzítő (OST) vár bizonyos számú órajel-ciklust, hogy a külső kvarc oszcillátor rezgése stabilizálódjon, mielőtt elindítaná a CPU-t.

45. **Hogyan működik a feltételes utasításvégrehajtás?**
A CPU megvizsgál egy adott bitet (pl. egy Z flage-t a STATUS regiszterben), és az eredménytől függően végrehajtja, vagy átsugorja a soron következő utasítást.

46. **Mi a FSR és hogyan működik?**
File Select Register: a memóriacímzés mutatója (pointere), amelybe beírva egy címet, az ott található adatot az INDF fiktív regiszteren keresztül érjük el (indirekt címzés).

47. **Hogyan működik a státus regiszter?**
Az ALU által elvégzett legutóbbi aritmetikai vagy logikai műveletek eredményéről ad jelzésekeket (flageket) - pl. nulla lett az eredmény (Z), vagy túlcsordult (C).

48. **Mi a kis fogyasztású üzemmód?**
Más néven SLEEP üzemmód: a mikrovezérlő leállítja a CPU órajelét és az energiaintenzív perifériákat az áramfelvétel radikális csökkentése érdekében.

49. **Hány féle ébredés van a SLEEP állapotból?**
Általában háromféle: hardveres RESET láb (MCLR) lenyomása, a Watchdog időzítő lejárata, vagy egy engedélyezett külső/perifériás megszakítás bekövetkezése.

50. **Mi a konfigurációs biztosíték?**
Kódba írt vagy programozáskor beállított nem felejtő kapcsolók (Fuse-ok), amelyek a chip alapműködését (pl. oszcillátor típus, WDT engedélyezés, kódvédelem) határozzák meg.

51. **Magyarázza el a direkt címzés folyamatát!**
Az utasításkód közvetlenül (önmagában) tartalmazza annak a memóriarekesznek a fizikai címét, amelyből adatot kell olvasni vagy amibe írni kell.

52. **Magyarázza el az indirekt címzés folyamatát!**
A program nem konkrét címet ad meg, hanem egy mutató regiszterre (FSR) hivatkozik, és a művelet azon a címen hajtódik végre, ami a mutatóban számként szerepel.

53. **Magyarázza el a megszakításkérés folyamatát!**
Egy periféria jelez (beállít egy Flag-et), a CPU leállítja a főprogramot, elmenti a visszatérési címet, majd végrehajtja a megszakítási vektoron lévő speciális kódblokkot.

54. **Magyarázza el az adatmemória lapozás folyamatát!**
Mivel a teljes memória megcímzéséhez nem elég egy utasítás hossza, a státuszregiszter (STATUS) RP0/RP1 bitjeinek állításával választjuk ki, hogy melyik memóriabankot akarjuk elérni.

55. **Hogyan működik az INTCON regiszter?**
A mikrovezérlő fő megszakításvezérlő regisztere, amely tartalmazza a globális engedélyező bitet (GIE) és a leggyakoribb megszakítások (pl. Timer0, port változás) flagjeit.

56. **Csoportosítsa a PIC mikrovezérlők utasításkészletét.**
Három fő csoportra osztható: bájtorientált (regiszterműveletek), bitorientált (bit manipuláció) és literális/vezérlő (konstans betöltés és ugrások) utasítások.

57. **Röviden mutassa be a PIC mikrovezérlők utasításkészletét.**
RISC alapú architektúra, amely jellemzően 35-70 körüli, nagyon egyszerű, azonos felépítésű utasításból áll, amelyek többsége egyetlen utasításciklus alatt lefut.

58. **Magyarázza el a státuszbittek jelentését.**
Z (Zero): a legutóbbi művelet eredménye nulla. C (Carry): összeadásnál túlcsordulás, kivonásnál alulcsordulás történt. DC (Digit Carry): túlcsordulás az alsó 4 bitről a felsőre.

59. **Mik az RP0, RP1, IRP bitek?**
A STATUS regiszter bitjei: az RP0 és RP1 a direkt memóriacímzéshez szükséges aktív memóriabankot választják ki, az IRP pedig az indirekt címzés lapválasztója.

60. **Miért van szükség memórialapok kialakítására?**
Mert a mikrovezérlő utasításszavának bitjei (pl. egy 14 bites szónál 7 bit cím) nem elegendőek ahhoz, hogy a teljes fizikai memóriaterületet egyetlen számmal meg lehessen címezni.

61. **Hogyan néz ki a referencia feszültség generáló modul?**
Egy belső, szoftveresen programozható ellenállás-hálózat, amely a tápfeszültségből előállít egy precíz, alacsonyabb feszültségszintet az analóg perifériák (pl. komparátor) számára.

62. **Miért alkalmaznak a mikrovezérlőknél különböző órajelet előállító modult?**
Hogy az eltérő sebességet és pontosságot igénylő perifériák (Timerek, UART, ADC) és a processzor mind a saját működésükhöz optimális frekvenciájú jelet kapjanak.

63. **Hogyan néz ki az analóg komparátor modul?**
Egy beépített műveleti erősítő alapú áramkör, amely két analóg bemeneti feszültséget hasonlít össze, és logikai (digitális) 0 vagy 1 szintű jelet ad kimenetként.

64. **Mi a polling és mi a megszakítás?**
Pollingnál a program szoftveres végtelen ciklusban, folyamatosan lekérdezi egy esemény állapotát; megszakításnál a hardver magától "szól" a processzornak, ha az esemény bekövetkezett.

65. **Hogyan néz ki az ADC modul?**
Analóg-Digitális Átalakító modul, amely egy analóg bemeneti feszültséget mintavételez, és azt a mikrovezérlő számára értelmezhető bináris számmá alakítja egy eredményregiszterben.

66. **Ismertesse az ALU működését.**
Feldolgozza az Akkumulátor és egy regiszter tartalmát (pl. összeadja őket), letárolja az eredményt a célhelyre, és beállítja a műveletnek megfelelő STATUS flageket.

67. **Mi a táblakezelés lényege?**
Előre kiszámolt konstans értékek (pl. karakterkódok) elhelyezése a programmemóriában, amelyekhez a programszámláló manuális növelésével és indexelt olvasással (RETLW) férünk hozzá.

68. **Milyen feladatot lát el a veremtár?**
A Stack egy LIFO (utoljára be, elsőként ki) elvű memória, amely alprogramhívások (CALL) és megszakítások esetén eltárolja a programszámláló visszatérési címét.

69. **Mi az eredménye a RETURN utasítás végrehajtásakor?**
Az alprogram véget ér: a processzor kiveszi a verem legfelső elemét (a korábban elmentett visszatérési címet), betölti a programszámlálóba, és ott folytatja a főprogramot.

70. **Milyen veremkezeléssel kapcsolatos hibák lehetségesek?**
Stack Overflow (túlcsordulás: ha túl sokszor hívunk alprogramot visszatérés nélkül) és Stack Underflow (alulcsordulás: ha több a visszatérés, mint ahány elmentett cím volt).

71. **Két operandust igénylő utasítások esetén hol képződik az eredmény?**
Az utasításkódban lévő iránybit (d) határozza meg: az eredmény kerülhet vissza a forrásregiszterbe (f), vagy a processzor Akkumulátorába/Munkaregiszterébe (W).

72. **Hogyan helyezkednek el az utasítások a memóriában?**
A programmemóriában szekvenciálisan, egymást követő címeken tárolódnak fix hosszúságú (pl. 12, 14 vagy 16 bites) szavakként.

73. **Mi az oszcillátor átkapcsolás?**
Egyes mikrovezérlők képesek működés közben, szoftveresen váltani egy gyors (külső) és egy lassú (belső) órajel forrás között, az energiatakarékosság optimalizálására.

74. **Mi az IND utalás szerepe?**
Az INDF egy nem létező fizikai regiszter: ha adatot írunk ide vagy olvasunk innen, a processzor valájában az FSR regiszter által mutatott memóriacímen végzi el a műveletet.

75. **Mi az akkumulátor (A) szerepe?**
Gyakran Munkaregiszternek (W) is hívják; a processzor legfontosabb regisztere, amely az ALU műveletek és az adatmozgatások elengedhetetlen forrása és célállomása.

76. **Ismertesse a számok hexa ábrázolási módját.**
16-os számrendszer, ahol a 0-9 számjegyek és az A-F betűk használatosak; azért előnyös, mert 1 hexa karakter pontosan 4 bitet (fél bájtot) tud egyértelműen és röviden leírni.

77. **Alakítsuk át decimális számmá a következő hexa számokat: xxH, yyyyH, .........**
Az átalakításhoz minden hexadecimális számjegyet meg kell szorozni a 16-nak a helyiértéke szerinti hatványával (1, 16, 256, stb.), majd a szorzatokat össze kell adni.

78. **Alakítsuk át hexa számmá a következő decimális számokat: xxD, yyyyH, ........**
A tízes számrendszerbeli számot ismételten maradékosan osztjuk 16-tal, a keletkező maradékokat (alulról felfelé haladva) betűkre váltjuk, ami megadja a hexa sorrendet.

79. **Alakítsuk át hexa számmá a következő bináris számokat: nnnnnnnnB, ...........**
A bináris számjegyeket jobbról balra 4 bites blokkokra osztjuk, majd minden 4-es blokkot behelyettesítünk a neki megfelelő 0-F közötti hexadecimális karakterrel.

80. **Hogyan működnek a DECSZ / INCSZ utasítások?**
Csökkentik (Dec) vagy növelik (Inc) egy regiszter értékét, és ha a módosítás után az eredmény pontosan nulla lett, akkor a processzor átugorja a következő programutasítást.

81. **Hogyan működnek a BTSC / BTSS utasítások?**
Bites ugró utasítások: megvizsgálnak egy kiválasztott bitet, és ha az nulla (Clear - BTSC) vagy ha az egy (Set - BTSS), átugorják a soron következő programutasítást.

82. **Hogyan működik a CLRWDT utasítás?**
Nullázza (törli) a hardveres Watchdog Timer számlálóját, ezzel jelezve az "őrkutyának", hogy a program nem fagyott le, így elkerülve a processzor újraindulását.

83. **Hogyan működik a SLEEP utasítás?**
Felfüggeszti a program végrehajtását és leállítja a fő oszcillátort, ezzel a mikrovezérlőt egy ultra alacsony fogyasztású alvó üzemmódba helyezi.

84. **Hogyan működik a RETLA utasítás?**
Egy utasítás, amivel visszatérünk egy alprogramból a főprogramba, de közben automatikusan beölt egy fix értékű konstanst (literált) az Akkumulátorba (W).

85. **Hogyan működik a CALL utasítás?**
Feltétel nélküli alprogram hívás: elmenti a Programsámláló aktuális értékét a verembe (Stack), majd a megadott címkén található új memóriacímet írja a PC-be.

86. **Hogyan működik a JMP utasítás?**
Feltétel nélküli ugró utasítás (GOTO): a Programsámlálóba beírja a címkében megadott új memóriacímet, így a program futása azon a ponton folytatódik tovább.

87. **Hogyan működik a SUB utasítás?**
Kivonás operáció: a megadott célregiszter értékéből (vagy konstansból) kivon egy másik adatot (Akkumulátort), és az eredmény alapján beállítja a STATUS regiszter bitjeit.

88. **Hogyan működnek a BS / BC utasítások?**
Bit Set (BS) és Bit Clear (BC): egy megadott regiszter pontosan egy kiválasztott bitjét képesek 1-es vagy 0-s logikai szintre állítani, a többi bit érintetlenül hagyásával.

89. **Miből áll egy integrált fejlesztői környezet (IDE)?**
Olyan szoftvereszköz (pl. MPLAB), amely egy közös felületen biztosítja a kódszerkesztőt, az assemlert/fordítót, valamint a hibakereséshez szükséges szimulátort.

90. **Mi a különbség a Szimulátor és az Emulátor között?**
A szimulátor tisztán szoftveresen, a számítógép képernyőjén modellezi a hardver viselkedését, míg az emulátor fizikai áramkört és mérőeszközöket köt a PC-hez a valós idejű teszteléshez.

91. **Melyek a gépi kódú programfejlesztés lépései?**
A forráskód megírása (Editor), a kód lefordítása (Assembler), a program hibakeresése és tesztelése (Szimulátor), majd végül a keletkezett hex fájl beégetése a chipbe (Programozás).

92. **Mi az utasítás és milyen részekből áll?**
A mikroprocesszornak szóló végrehajtható parancs, amely állhat Címkéből, a műveletet megadó Mnemonikból, az adathivatkozást biztosító Operandusból és megjegyzésekből.

93. **Mi az assembler programozás?**
A legalacsonyabb szintű emberi olvasható programozás, ahol a bináris gépi kódok helyett könnyebben megjegyezhető szavakkal (mnemonikokkal) irányítjuk a hardvert.

94. **Mi az assembler nyel szintaktikája?**
A programnyelv formai és nyelvtani szabályrendszere, amely rögzíti az utasítások, címkék, formátumok és konstansok előírt szöveges elrendezését.

95. **Mi az utasításmező?**
A kódsornak az a strukturális oszlopa, amely a végrehajtandó művelet nevét vagy annak rövidítését (a mnemonikot, pl. MOV, ADD) tartalmazza.

96. **Mi az operandusmező?**
Az utasításmezőt követő rész, amely meghatározza azokat a regisztercímeket, biteket vagy konstansokat, amellyel a kiadott műveletet végre kell hajtani.

97. **Mi a címkemező?**
A kódsor legelső oszlopában elhelyezkedő azonosító, amely fizikai memóriacímek helyett emberi nevet ad a kódsornak, megkönnyítve az ugrásokat.

98. **Mi az ORG direktíva?**
Egy beállítás (Origin), amivel megmondjuk a fordítóprogramnak, hogy az utána következő utasítások blokkját pontosan melyik fizikai programmemória-címre helyezze el.

99. **Mi az EQU direktíva?**
A fordítónak szóló parancs (Equate), ami egy számnak vagy memóriacímnek ad egy jól olvasható, beszédes betűnevet a könnyebb kódolás érdekében.

100. **Mi a mnemonik és mik a címkék?**
A mnemonik egy konkrét gépi utasítás szöveges rövidítése (pl. CLR, JMP), a címke pedig egy a programozó által elnevezett ugrási pont a memóriában.