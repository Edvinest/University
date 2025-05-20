## Bevezetés

Az operációs rendszer (OS) a számítógép alapvető szoftvere, amely kezeli a hardver erőforrásokat és lehetővé teszi a felhasználói programok futtatását. Fő feladatai közé tartozik az erőforrások kezelése, a felhasználói felület biztosítása, valamint a programok közötti kommunikáció.

## Operációs Rendszerek Osztályozása
1. **Egyidejűleg futtatható programok száma szerint**:
    - Egyfeladatos: egyszerre csak egy program fut.
    - Többfeladatos: több program fut párhuzamosan.
2. **Felhasználók száma szerint**:
    - Monouser: egy felhasználó használhatja egyszerre.
    - Multiuser: több felhasználó dolgozhat egyszerre.
3. **Felhasználói felület szerint**:
    - Karakteres, menükezelt, grafikus, vagy hangorientált.
4. **Elérési mód szerint**:
    - Kötegelt: feladatok csoportosan kerülnek feldolgozásra.
    - Időosztásos: minden program kap egy időtartamot a processzor használatára.
    - Valós idejű: garantált időn belül hajtja végre a feladatokat.
5. **Hardver mérete szerint**:
    - Nagygépes: nagy teljesítményű, több OS futtatására képes.
    - Mikrogépes: kisebb méretű rendszerekhez.
6. **Rendszermag (kernel) szerint**:
    - Monolitikus: egyetlen nagy program.
    - Mikro-kernel: különálló modulok.
    - Vegyes kernel: kritikus funkciók egységesen, mások modulként.
    - Exokernel: hardverabsztrakció a felhasználóra bízva.
## Főbb Operációs Rendszerek
- Microsoft Windows
- Unix/Linux
- Mac OS, Mac OS X
- NetWare
## Az Operációs Rendszer Felépítése
1. **Kernel (rendszermag)**:
    - Feladatai: eszközkezelés, megszakításkezelés, erőforrás-kezelés, processzorütemezés, memóriakezelés, fájlkezelés.
    - Példák: monolitikus, mikro-kernel, vegyes kernel.
2. **Shell (héj)**:
    - Felhasználói felület biztosítása, programok indítása és leállítása.
3. **Alkalmazások**:
    - Felhasználói programok, amelyek az OS-en futnak.
## Absztrakciós Szintek
- Felhasználói programok
- Rendszerprogramok (pl. fordítók, szövegszerkesztők)
- Gépi nyelv
- Mikroarchitektúra
- Fizikai eszközök
## Processzorok és Regiszterek
- **Fontosabb regiszterek**:
    - Általános célú regiszterek
    - Dedikált regiszterek (akkumulátor, címregiszter, utasításszámláló, bázisregiszter, indexregiszter, állapotregiszter, veremmutató)
## Processzusok
- **Definíció**: Egy végrehajtás alatt álló program.
- **Létrehozás**: Rendszerindítás, felhasználói kérés, kötegelt feladatok.
- **Befejezés**: Szabályos kilépés, hiba miatti kilépés, más processzus által megsemmisítés.
- **Állapotok**:
    - Futó
    - Blokkolt
    - Futásra kész
## Rendszerhívások
Az operációs rendszer szolgáltatásokat nyújt a programoknak, például:
- Processzuskezelés
- Fájlkezelés
- Időkezelés
- Szignálkezelés
## Összegzés
Az operációs rendszer nélkülözhetetlen a számítógépek működéséhez, mivel biztosítja a hardver és a szoftver közötti kapcsolatot, optimalizálja az erőforrások használatát, és egyszerű felületet nyújt a felhasználóknak. Az OS folyamatosan fejlődik, hogy megfeleljen a modern számítástechnikai igényeknek.