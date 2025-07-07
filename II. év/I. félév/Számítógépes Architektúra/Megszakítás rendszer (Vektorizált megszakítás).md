A megszakítási rendszereket elsődlegesen az I/O műveleteknek és a velük átlapoltan
végrehajtott számítási művelteknek az összehangolására hozták létre. **A megszakítás célja az, hogy egy I/O tevékenység beindítása után a processzornak ne kelljen várakoznia az I/O művelet befejeződésére, hanem ezalatt más feladat vagy feladatrész végrehajtásába foghasson.** Viszont az I/O tevékenység befejeződéséről valahogy értesítenünk kell a processzort.
Ezért az I/O tevékenység befejeződése egy megszakítás-kérő jelet generál, amely az
éppen végrehajtás alatt álló utasítás befejeződése után, a végrehajtásra következő utasítás
megkezdése helyett megszakítást (vezérlés-átadást) hoz létre egy, a megszakítás konkrét okától (forrásától) függő címre, a szükséges megszakító rutinra. Egyúttal automatikusan (hardverrel) tárolódnak:
- a megszakított programnak a megszakítás pillanatában fennálló legfontosabb állapotjellemzői és regiszterei (együtt: kontextus), hogy azok később, a megszakított program folytatásakor visszaállíthatók legyenek; valamint
- beállítódnak a megszakító rutin induló állapotjellemzői és regisztertartalmai.
- A megszakító rutin végén megtörténik a vezérlés visszaadása a megszakított programra: például az utasításszámláló új tartalma a megszakított program végrehajtásra következő utasításának címe lesz.

## A megszakítások okai vagy forrásai
A megszakítási okok vagy megszakítási források a következőképpen
osztályozhatók:
❑ Géphibák
❑ I/O források
❑ Külső források
❑ Programozási források
	- A memóriavédelem megsértése
	- A tényleges tárkapacitás túlcímzése
	- A címzési előírások megsértése
	- Aritmetikai-logikai műveletek miatti megszakítások

![Mikrokontroller](megszakitas_okok.png)

## A hardware rendszer kialakítása
![A hardware rendszer kialakítása](hardware_kialakitas.png)

## Egy megszakítás kiszolgálásának általános folyamata
**A megszakítás előkészítése**
1. valamilyen egység megszakítási kérést bocsát ki, azaz aktiválja az INTR vezérlővonalat;
2. a megszakítás beérkezésekor a számítógép az éppen folyó utasítást még végrehajtja:
3. minden utasítás-töréspontban a vezérlőegység megvizsgálja, hogy van-e megszakítás. Észleli, hogy van megszakítás. Az INTACK vezérlővonal aktiválásával jelzi a megszakítási kérés elfogadását, mire a megszakítást kérő deaktiválja az INTR vonalat;

**A megszakítás kiszolgálásának a hardver által végzett feladatai**
1. Ekkor a processzor elkezdi annak az előkészítését, hogy az eddig futó program helyett a megszakítást kiszolgálását végző programot kezdhesse végrehajtani. Ennek során a programtól általában függetlenül (tehát hardver úton) egy erre a célra kijelölt memória-tartományba, a veremtárolóba kimenti azokat az állapot-információkat (a PC és az állapotregiszterek tartalma), amelyek a megszakított programnak a megszakítás bekövetkezése utáni folytatásához szükségesek.
2. Ezután a számítógép rátérhet mindazoknak a műveleteknek a végrehajtására, amelyek érdekében a megszakítás bekövetkezett. Ennek érdekében be kell töltenie a megszakítást feldolgozó program első utasításának címét a PC-be, továbbá esetleg, tehát nem minden architektúra esetén be kell töltenie a megszakítást kiszolgáló program futásához szükséges állapot-információkat. Ezen két adatcsoport megszerzési módja architektúra-függő. Ez benne lehet az eredeti megszakítási kérésben vagy esetleg a processzornak kell kezdeményezni - akár a megszakítást feldolgozó programban - a megszakítást kérőnél ezen adatok rendelkezésre bocsátását. Szintén architektúra-függően a megszakítást kérő program lehet egyetlen program az összes megszakítás feldolgozására, lehet egy-egy önálló program minden egyes megszakítás-típushoz, stb.

Mihelyt a PC-be betöltésre kerül a megszakítást kiszolgáló program első utasításának címe, a processzor készen áll a megszakítást kérő rutin futtatására.

![Megszakítás általános folyamata](interrupt.png)

Külön vonal kell a jelzéshez:
	IRQ (interrupt kérés), ezen jelzik a perifériák a CPU-nak a megszakítási igényt.

A CPU a kérés hatására abbahagyja az aktuális program futását:
• Az aktuális utasítás befejezése után, a perifériát kiszolgáló programrészen folytatja az utasítások végrehajtását.
• Meg kell jegyeznie, hogy az interrupt program végrehajtása után, hol kell folytatnia a működését. Ezért az IT rutinra ugrás előtt a stackre menti a következő utasítás címét.

Az IT rutin befejezése után visszatér a megszakított programba:
• Az IT rutin végén a RETI utasítás hatására leemeli a stack tetejéről a
visszatérési címet és oda adja a vezérlést.

![Megszakítás ábra 2](interrupt2.png)

**A megszakítás kiszolgálásának a szoftver által végzett feladatai**
1. Azonban míg az állapottér információinak mentését a hardverre bíztuk, még hátravan a megszakított program adatterének (pontosabban az aktuális regiszter-tartalmának) mentése, hiszen a regisztereket a megszakítást kiszolgáló program is használhatja s ezáltal tönkretenné a megszakított programok által beállított értékeket. Általában a megszakítást feldolgozó program első utasításai pont ezen regiszter-tartalmak mentését végzik, szintén a veremtárolóba.
2. Amennyiben egyetlen megszakítás-kiszolgáló program van, vagy egy megszakítás-típushoz több egység is tartozik, először beazonosítja a megszakítás-kérő egységet.
3. A megszakítás tényleges kiszolgálása. Ennek során például I/O megszakítás esetén beolvassa a megszakítást kérő I/O port adatregiszterének tartalmát, esetleg további parancsokat küldhet az I/O egység számára, s azok végrehajtását is ellenőrizheti az I/O egység státuszregiszterének újabb beolvasásával (mint a hardver 2. pontban említett esetben az állapot-információk átküldését kérheti explicit).
4. A megszakítás kiszolgálásának befejeződése után (amennyiben a megszakítás nem okozott rendszer-leállítást) gondoskodni kell arról, hogy egy programmal visszaírjuk a megfelelő regiszterekbe a megszakítási veremtárolóból a megszakított program folytatásához szükséges adatokat, majd ezután megkezdődhet a megszakított program következő utasításának végrehajtása.

**A megszakítás tehát abban különbözik a közönséges programtól, hogy a program futásának
megszakítása során a megszakított programtól teljesen függetlenül lejátszódik egy olyan folyamat, amelynek eredményeképpen az összes jellemző regiszter pillanatnyi állapota tárolódik egy verem-memóriában.**

## A programindítás folyamata
**A vektortábla** első két eleme a veremtár és a futtatandó program kezdőcímét tartalmazza. RESET után ezek *automatikusan betöltődnek* a megfelelő regiszterekbe (R13 és R15).
![Vektortábla](vektortabla.png)

## Az aktuális utasítás befejezése
A legtöbb utasítás rövid és gyorsan befejeződik
◦ Néhány utasítás azonban sok utasításciklusig tart 
	Load Multiple (LDM), Store Multiple (STM), Push, Pop, MULS (némely CPU esetében akár 32 ciklus is lehet)
◦ A sokciklusú utasítás befejezése késleltetné a megszakítások kiszolgálását,
ezért ha ilyen utasítás végrehajtása van folyamatban, amikor megszakítási
kérelem érkezik, akkor a CPU:
	◦ Eldobja az utasítást
	◦ Reagál a megszakításra
	◦ Végrehajtja a megszakítást kiszolgáló eljárást
	◦ Visszatér a megszakításból
	◦ Újrakezdi az eldobott utasítást

## Kontextus mentése
![A kontextus mentése](kontextus_mentese.png)

## Az IT rutin címének meghatározása

• Fix IT rutin kezdőcím. Az IT vonalhoz előre definiált, nem megváltoztatható kezdőcím tartozik. A CPU-knak többnyire 1 IT vonala van, de van kivétel (I8085).
• Utasítás beolvasás. A CPU az IT elfogadásakor az INTA (IT elfogadási) ciklusban utasítást vár az adatbuszon, amit végrehajt. Tipikusan CALL vagy TRAP. A CPU az INTA ciklust külön
jelzi.
• Vektor beolvasás A CPU az IT elfogadásakor az INTA (IT elfogadási)
ciklusban egy vektort vár az adatbuszon. A processzor az IT vektor alapján az IT
vektor táblából automatikusan előveszi a megfelelő IT rutin kezdőcímet.

![Az IT cím meghatározása](it_meghatarozas.png)

**Programozott (státus) lekérdezéses IT forrás azonosítás** szükséges az ún. 
***Egyszerű IT rendszer esetén.***
![Egyszerű IT rendszer](egyszeru_it.png)

A ***vegyes IT rendszer*** esetén egyes IT források automatikusan, mások lekérdezéssel azonosíthatók.
![Vegyes IT rendszer](vegyes_it.png)

**Centralizált vektoros IT rendszer**
![Centralizált vektoros IT rendszer](centralizalt_it.png)

## Vektorizált megszakításrendszer
Az AT típusú személyi számítógépek két sorba kapcsolt, 8259A típusú megszakításvezérlő 
áramkörrel vannak ellátva, melyek a hardware megszakítas kérelmeket fogadják. Mindkét interrupt vezárlő nyolc független csatornán érkező megszakítás kérést tud koordinálni.
Az első az IRQ0-IRQ7 megszakításkérő vonalakat kezeli és az ezeknek megfelelő 0x08-0xF megszakítás-vektorokat generálja, míg a második az IRQ8 - IRQ15 vonalakat és a 0x70-0x77 vektorokat küldi. A kéréseket sorrendbe rakják és meghatározzák, melyik eszköznek
van a legnagyobb prioritása, majd megszakítás kérelemmel jelentkeznek a processzor felé. A kérések prioritása rögzített, a 0-s vonal a legnagyobb priorítású.
![Megszakítás rendszer](megszakitas_rendszer.png)
Ahhoz, hogy egy hardware megszakítást saját céljainkra felhasználjuk, ki kell cseréljük a
megszakítás vektor táblázatban az illető megszakításhoz tartozó lekezelő rutin címet az
általunk írt lekezelő függvény címével. Gondoskodnunk kell a megszakítás vége utasítás
kiküldéséről, a fennebb említett módon, vagy az eredeti megszakításrutin egyszeri futtatásával, a mi függvényünk végén. A programunk lezárása előtt az eredeti megszakítasrutin címet vissza kell állítani a megszakítas vektor táblázatban.

Ezen műveletek elvégzéséhez, a környezet a *getvect()* illetve *setvect()* függvényeket biztosítja, amelyekkel elmenthető azaz lecserélhető / visszaállítható valamely megszakításrutin címe.