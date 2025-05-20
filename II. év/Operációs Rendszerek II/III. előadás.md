## Processzus Modell és Process Control Block (PCB)
- A processzus egy végrehajtás alatt álló program, amelyhez az operációs rendszer egy **processzustáblát** (processzustábla) kezel.
- A **Process Control Block (PCB)** tárolja a processzus állapotát és a processzusváltáshoz szükséges információkat, például:
    - Processzus állapota (fut, futásra kész, blokkolt).
    - Utasításszámláló (PC) – a következő végrehajtandó utasítás címe.
    - CPU-regiszterek – a processzus által használt regiszterek tartalma.
    - Memóriakezelési információk (pl. bázis- és szegmensregiszterek).
    - I/O állapot (pl. megnyitott fájlok, lefoglalt eszközök).
    - Ütemezési információk (pl. prioritás).
## Processzus Állapotai
Egy processzus az alábbi állapotok között váltogathat:
1. **Új (Created)**: A processzus létrejött, de még nem fut.
2. **Futásra kész (Ready)**: A processzus készen áll a futásra, csak a CPU-ra vár.
3. **Futó (Running)**: A processzus éppen fut a CPU-n.
4. **Blokkolt (Blocked/Waiting)**: A processzus várakozik egy eseményre (pl. I/O művelet befejeződése).
5. **Zombie**: A processzus befejeződött, de a szülő processzus még nem olvasta ki a kilépési állapotát.
### Állapotátmenetek Példái:
- **Fork()**: Új processzus jön létre (új állapot).
- **Rendszerhívás**: A processzus kernel módba vált.
- **Időtúllépés**: A processzus visszakerül a futásra kész listára.
- **I/O kérés**: A processzus blokkolt állapotba kerül.
- **Exit()**: A processzus befejeződik és zombi állapotba kerül.
## Unix Processzus Állapotai
- **User running**: Felhasználói módban fut.
- **Kernel running**: Kernel módban fut.
- **Ready to run in memory**: Futásra kész a memóriában.
- **Asleep in memory**: Blokkolt állapotban, eseményre vár.
- **Ready to run, swapped**: Futásra kész, de a lemezen tárolt.
- **Sleeping, swapped**: Blokkolt és a lemezen tárolt.
- **Preempted**: A processzust a kernel másik processzusra cserélte.
- **Zombie**: A processzus befejeződött, de a szülő még nem dolgozta fel.
## Ütemezés (Scheduling)
- Az **ütemező (scheduler)** dönti el, hogy melyik processzus kapja meg a CPU-t.
- **Ütemezési algoritmusok**:
    - **Nem megszakítható**: A processzus addig fut, amíg blokkolódik vagy befejeződik.
    - **Megszakítható**: A processzus csak egy meghatározott ideig fut (időosztás).
- **Ütemezési stratégiák**:
    - **Kötegelt rendszerek**: Áteresztőképesség, CPU-kihasználtság.
    - **Interaktív rendszerek**: Gyors válaszidő, arányosság.
    - **Valós idejű rendszerek**: Határidők betartása, előjelezhetőség.
## Processzusok Viselkedése
- **Számításigényes processzusok**: Hosszú CPU-idő, ritka I/O.
- **I/O igényes processzusok**: Gyakori I/O, rövid CPU-idő.
## Szálak (Threads)
- Egy processzus több **szálból** állhat, amelyek megosztják az erőforrásokat.
- **Előnyök**:
    - Gyorsabb váltás a szálak között.
    - Hatékonyabb erőforrás-használat.
## Összegzés
A processzusok az operációs rendszer alapvető egységei, amelyeket a PCB tárol és kezel. Az állapotuk dinamikusan változik, és az ütemező dönti el a futási sorrendjüket. Az ütemezési stratégiák a rendszer típusától (kötegelt, interaktív, valós idejű) függenek. A szálak lehetővé teszik a párhuzamos futtatást és a hatékony erőforrás-használatot.