# Összefoglaló a Folyamatok Közötti Kommunikációról (Inter-Process Communication, IPC)

## Bevezetés

A folyamatok közötti kommunikáció (IPC) olyan mechanizmusok összessége, amelyek lehetővé teszik a folyamatok számára az adatcserét és a koordinációt. Az IPC megoldásoknak kezelniük kell a **versenyhelyzeteket** és biztosítaniuk kell a **kölcsönös kizárást**, hogy a folyamatok ne zavarják egymást a megosztott erőforrások használatában.

## Alapfogalmak
1. **Kritikus szekció**: A program azon része, ahol a folyamat megosztott erőforrást használ. Egyszerre csak egy folyamat lehet a kritikus szekcióban.
2. **Kölcsönös kizárás**: Garantálja, hogy ha egy folyamat a kritikus szekciójában van, más folyamatok nem léphetnek be a saját kritikus szekciójukba.
3. **Versenyhelyzet (Race Condition)**: Akkor alakul ki, ha több folyamat verseng ugyanazon erőforrásért, és a végeredmény függ a folyamatok végrehajtási sorrendjétől.
## Megoldások a Kölcsönös Kizárásra
### 1. Megszakítások Tiltása
- A folyamat letiltja a megszakításokat, amikor belép a kritikus szekcióba, és visszaengedi kilépéskor.
- **Hátrány**: Nem használható felhasználói szintű folyamatoknál, mert veszélyes a rendszer stabilitására.
### 2. Zárolás Változó (Lock Variable)
- Egy megosztott változó (`flag`) jelzi, hogy a kritikus szekció szabad-e.
- **Probléma**: A változó ellenőrzése és beállítása nem atomi művelet, így versenyhelyzet alakulhat ki.
### 3. Szigorú Váltogatás (Strict Alternation)
- A folyamatok váltogatva lépnek be a kritikus szekcióba.
- **Hátrány**: Nem hatékony, ha egy folyamat gyakrabban akar belépni.
### 4. Peterson Algoritmusa
- Két folyamat számára biztosítja a kölcsönös kizárást `flag` és `turn` változók használatával.
- **Előny**: Egyszerű és hatékony kis számú folyamat esetén.
- **Hátrány**: Tevény várakozást (busy waiting) használ, ami pazarló.
### 5. TSL Utasítás (Test and Set Lock)
- Egy speciális processzorus utasítás, ami atomi módon ellenőrzi és beállít egy zároló változót.
- **Előny**: Hardveres támogatás miatt hatékony.
- **Hátrány**: Busy waiting problémája továbbra is fennáll.
### 6. Sleep és Wakeup
- A `sleep()` és `wakeup()` rendszerhívásokkal a folyamat blokkolható és ébreszthető.
- **Probléma**: Az ébresztések elveszhetnek, ha a célfolyamat még nem aludt el.
- **Megoldás**: Ébresztést váró bit bevezetése.
## Szemaforok
- **Definíció**: Egy egész szám (`semval`) és egy várakozási sor, amelyen két atomi művelet (`down` és `up`) végezhető.
- **Típusok**:
    - **Bináris szemafor (Mutex)**: 0 vagy 1 értékű, kölcsönös kizárásra.
    - **Általános szemafor**: Pozitív egész, több erőforrás kezelésére.
- **Példa**: Termelő-Fogyasztó probléma megoldása szemaforokkal:
    
```c
semaphore mutex = 1;  // Közös erőforrás védelme
semaphore empty = N;  // Üres helyek száma
    semaphore full = 0;   // Tele helyek száma
```
## Monitorok
- **Definíció**: Magas szintű absztrakció, amely eljárások és változók gyűjteménye. A fordító biztosítja a kölcsönös kizárást.
- **Műveletek**: `wait` és `signal` az állapotváltozókon.
- **Előny**: Egyszerűbb és biztonságosabb, mint a szemaforok, mert a fordító kezeli a szinkronizációt.
## Üzenetküldés (Message Passing)
- **Fogadó-küldő modell**: A `send()` és `receive()` műveletek segítségével történik az adatcsere.
- **Nyugtázás**: Az üzenetek elvesztésének elkerülésére a fogadó nyugtázza a küldőt.
- **Példa**: Termelő-Fogyasztó probléma megoldása üzenetküldéssel:
    
```c   
void producer() {
        while (true) {
            item = produce();
            receive(consumer, &m);
            build_message(&m, item);
            send(consumer, &m);
        }
    }
    ```

## Összegzés

Az IPC mechanizmusok közül a **szemaforok** és a **monitorok** a legelterjedtebbek a kölcsönös kizárás és szinkronizáció megvalósítására. Az üzenetküldés alternatívát kínál, különösen elosztott rendszerekben. A megfelelő módszer választása függ a konkrét problémától és a rendszer követelményeitől.

New chat