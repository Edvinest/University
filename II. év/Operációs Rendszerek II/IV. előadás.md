# Összefoglaló a Folyamatok Ütemezéséről és Ütemező Algoritmusokról

## Bevezetés
Az operációs rendszer **rövid távú ütemezője** (CPU ütemező) felelős a processzor időének kiosztásáért a folyamatok között. A várakozási sor lehet FIFO, prioritásos, fa struktúrájú vagy rendezetlen lista.
## Folyamatok Típusai
- **Számításigényes (CPU burst)**: Hosszú CPU-idő, ritka I/O műveletek.
- **I/O igényes (I/O burst)**: Rövid CPU-idő, gyakori I/O műveletek.
## Kötegelt Rendszerek Ütemezési Stratégiái
1. **Sorrendi ütemezés (FCFS - First-Come, First-Served)**:
    - A folyamatok a belépési sorrendben kapják meg a CPU-t.
    - **Hátrány**: Hosszú folyamatok miatt nagy várakozási idő lehet.
2. **Legrövidebb feladat először (SJF - Shortest Job First)**:
    - A legrövidebb CPU burst idővel rendelkező folyamat kap prioritást.
    - **Optimalizálja** az átlagos várakozási időt, de nehéz előre megjósolni a futási időket.
3. **Legrövidebb maradék futási idejű következik (SRTF)**:
    - Megszakítható változata az SJF-nek, ahol a legrövidebb maradék idővel rendelkező folyamat fut.
4. **Háromszintű ütemezés**:
    - Több szinten történik az ütemezés (CPU, memória, lemez), figyelembe véve a folyamatok igényeit.
## Interaktív Rendszerek Ütemezési Algoritmusai
1. **Round-Robin (RR)**:
    - Minden folyamat kap egy fix **időszeletet** (time quantum), majd a sor végére kerül.
    - **Előny**: Egyszerű és fair.
    - **Hátrány**: Nagy adminisztrációs terhelés, ha az időszelet túl kicsi.
2. **Prioritásos ütemezés**:
    - Minden folyamat kap egy prioritást, a legmagasabb prioritású fut először.
    - **Megoldás a "éhezés" problémára**: Dinamikus prioritás-csökkentés.
3. **Többszörös sorok**:
    - Több prioritási szint, ahol az időszelet hossza növekszik az alacsonyabb szinteken.
    - **Interaktív folyamatok** a legmagasabb szintre kerülnek.
4. **Garantált ütemezés**:
    - Minden folyamat garantáltan kap egy fix részesedést a CPU-ból (pl. 1/n, ahol n a folyamatok száma).
5. **Sorsjáték ütemezés**:
    - A folyamatok sorsjegyeket kapnak, és a nyertes fut.
    - **Előny**: Dinamikus és fair.
6. **Arányos ütemezés**:
    - A CPU idő felhasználónként van elosztva, nem folyamatonként.
## Valós Idejű Rendszerek Ütemezése
- **Szigorú valósidejű**: Kötelező határidők betartása.
- **Toleráns valósidejű**: Engedi a határidők enyhe túllépését.
- **Periodikus és aperiodikus események** kezelése.
## Többprocesszoros Rendszerek Ütemezése
1. **Aszimmetrikus multiprocesszálás**:
    - Egy "mester" processzor felelős az ütemezésért.
2. **Szimmetrikus multiprocesszálás (SMP)**:
    - Minden processzor ütemezi a saját folyamatait.
    - **Processzor affinitás**: A folyamatok preferáltan ugyanazon a processzoron futnak (cache-hatékonyság miatt).
3. **Többmagos processzorok**:
    - Több mag ugyanazon a chipen, az OS számára különálló processzorként kezeli őket.
## Összegzés
Az ütemező algoritmusok kiválasztása függ a rendszer típusától (kötegelt, interaktív, valós idejű) és a célkitűzésektől (például alacsony válaszidő, magas áteresztőképesség). A modern rendszerekben a **többprocesszoros és többmagos architektúrák** miatt az ütemezés további kihívások elé állítja az operációs rendszereket, mint például a processzor affinitás vagy a hatékony erőforrás-kihasználás.