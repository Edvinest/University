# Összefoglaló a Memóriakezelésről
## Bevezetés
Az operációs rendszer memóriakezelő modulja felelős a számítógép memóriájának hatékony kihasználásáért. A memória hierarchiája (gyors, kis kapacitású cache memóriától a lassú, nagy kapacitású háttértárig) optimalizálja a teljesítményt és a költséghatékonyságot.
## Memória Hierarchia
- **Cache memória**: Kis méretű, gyors, drága. Gyakran használt adatok tárolására.
- **Központi memória (RAM)**: Közepes méretű és sebességű, a futó programok és adatok tárolására.
- **Háttértár (HDD/SSD)**: Nagy kapacitású, lassú, nem felejtő, tartós adattárolásra.
## Címkötődés (Address Binding)
A programok címzése különböző fázisokban történhet:
1. **Fordítási idő**: Abszolút vagy relatív címek generálása.
2. **Linkelés**: Végrehajtható fájl létrehozása abszolút vagy relokálható címekkel.
3. **Betöltés**: Relatív címek átalakítása abszolút címekké.
4. **Végrehajtás**: Dinamikus címkötődés, ahol a logikai címeket a memóriakezelő egység (MMU) fordítja fizikai címekké.
## Memóriakiosztási Stratégiák
### 1. Monoprogramozás
- Egy időben egy program fut a memóriában (az operációs rendszer mellett).
- Egyszerű, de nem hatékony a memóriahasználat szempontjából.
### 2. Multiprogramozás Fix Méretű Partíciókkal
- A memória fix méretű partíciókra oszlik.
- Minden partíciónak saját várakozási sora van, vagy egy közös sor használatos.
- **Probléma**: A partíciók mérete nem optimális a különböző méretű programokhoz.
### 3. Multiprogramozás Változó Méretű Partíciókkal
- A memória dinamikusan oszlik fel a programok igényei szerint.
- **Algoritmusok**:
    - **First-fit**: Az első megfelelő lyukat foglalja le.
    - **Best-fit**: A legkisebb megfelelő lyukat választja.
    - **Worst-fit**: A legnagyobb lyukat használja.
    - **Quick-fit**: Gyakran igényelt méretekhez külön lyukakat tart fenn.
## Virtuális Memória
A virtuális memória lehetővé teszi, hogy a programok nagyobb címteret lássanak, mint a fizikai memória mérete. A gyakran használt részek a RAM-ban, a ritkábban használtak a háttértáron tárolódnak.
### Lapozás (Paging)
- A virtuális memória lapokra, a fizikai memória lapkeretekre oszlik.
- A **Memóriakezelő Egység (MMU)** leképezi a virtuális címeket fizikai címekre a laptábla segítségével.
- **TLB (Translation Lookaside Buffer)**: Gyorsító tábla a gyakran használt lapkeretekhez, csökkenti a laptábla elérésének idejét.
### Lapcserélési Stratégiák
- **FIFO (First-In-First-Out)**: A legrégebben betöltött lap kerül ki.
- **LRU (Least Recently Used)**: A legrégebben használt lap cserélődik ki.
- **Optimal**: Elméleti stratégia, a legkésőbb használt lap kerül ki.
- **NRU (Not Recently Used)**: A nem rég használt lapok közül választ.
## Védelem és Relokáció
- **Bázis- és határregiszterek**: Biztosítják, hogy a programok ne lépjék túl a kijelölt memóriaterületet.
- **Védelmi kódok**: Megakadályozzák a jogosulatlan memóriahozzáférésokat.
## Összegzés
A memóriakezelés kulcsfontosságú az operációs rendszerek hatékonyságához. A virtuális memória és a lapozás lehetővé teszi a nagyobb programok futtatását korlátozott fizikai memóriával, míg a hatékony címfordítás és lapcserélés biztosítja a gyors hozzáférést. A memóriakiosztási algoritmusok és a védelmi mechanizmusok együttesen biztosítják a rendszer stabilitását és biztonságát.