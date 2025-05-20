# Összefoglaló a Be-/Kimeneti Eszközökről és Kezelésükről
## Bevezetés
Az operációs rendszer I/O (Input/Output) alrendszere felelős a különböző perifériák (pl. billentyűzet, egér, nyomtató, háttértárolók) kezeléséért és a CPU-val való kommunikációjukért. Az I/O eszközök kezelése többféle módon történhet: programozott I/O, megszakításvezérelt I/O és közvetlen memória-hozzáférés (DMA).
## I/O Eszközök Illesztése
Az I/O eszközök a következő fő komponensekből állnak:
- **Adatregiszter**: Az átvitelre váró adatot tárolja.
- **Állapotregiszter**: Az eszköz állapotát jelzi (pl. kész, foglalt).
- **Vezérlőregiszter**: Az eszköz működését irányítja.
Az eszközök a következő módon csatlakoznak a rendszerhez:
- **Port-alapú I/O**: Az eszközök külön I/O portokon keresztül kommunikálnak a CPU-val. Példa utasítások: `IN` (beolvasás), `OUT` (kiírás).
- **Memórialeképezett I/O**: Az eszközök regiszterei a rendszermemóriában vannak leképezve, így a szokásos memória-hozzáférési utasításokkal kezelhetők.
## I/O Adatátviteli Módok
### 1. Programozott I/O
- A CPU aktívan lekérdezi az I/O eszköz állapotát, és közvetlenül kezeli az adatátvitelt.
- **Hátrány**: A CPU időt pazarol az állapot lekérdezésére, miközben az eszköz nem áll készen.
### 2. Megszakításvezérelt I/O
- Az I/O eszköz megszakítást generál, amikor kész az adatátvitelre. A CPU a megszakítás kezelése során végzi az adatcserét.
- **Előny**: A CPU addig más feladatot végez, amíg az eszköz nem jelez készenlétet.
- **Példa**: Billentyűzet bemenet kezelése.
### 3. Közvetlen Memória-hozzáférés (DMA)
- A DMA vezérlő közvetlenül kezeli az adatátvitelt az I/O eszköz és a memória között, a CPU közreműködése nélkül.
- **Előny**: Nagy sebességű adatátvitel (pl. merevlemezről való olvasás).
- **Működés**:
    1. A CPU beállítja a DMA vezérlőt (forrás, cél, adatmennyiség).
    2. A DMA vezérlő átveszi a busz irányítását (HOLD/HLDA jelzéssel).
    3. Az adatátvitel után a DMA visszaadja a busz irányítását a CPU-nak.
## DMA Vezérlő Működése
A DMA vezérlő a következő lépéseket hajtja végre:
1. **Kérés**: Az I/O eszköz DMA kérést küld (DREQ).
2. **Jóváhagyás**: A CPU átadja a busz irányítását (HLDA).
3. **Adatátvitel**: A DMA vezérlő közvetlenül ír/olvas a memóriából.
4. **Befejezés**: Az átvitel után a DMA jelzi a végét (EOP), és a CPU visszaveszi az irányítást.
## Példa Kód: I/O Eszköz Konfigurálása
Az alábbi pszeudokód bemutatja, hogyan konfigurálható egy I/O eszköz programozott I/O-val:
```c
// I/O eszköz konfigurálása
outportb(K1, érték);  // Vezérlőregiszter beállítása
outportb(K2, érték);  // Második regiszter beállítása

while (1) {
    // Állapot lekérdezése
    while (((s = inportb(cím)) & maszk) == 0);
    // Adatok beolvasása
    adat1 = inportb(ADAT_REG_CIM1);
    adat2 = inportb(ADAT_REG_CIM2);
}
```
## Összegzés
Az I/O eszközök kezelése kritikus szerepet játszik az operációs rendszerekben. A programozott I/O egyszerű, de nem hatékony, míg a megszakításvezérelt I/O és a DMA jelentősen javítja a rendszer teljesítményét. A DMA különösen nagy adatmennyiségek átvitelénél nélkülözhetetlen, mivel kizárja a CPU terhelését. Ezek a módszerek együttesen biztosítják a gyors és megbízható adatcserét a rendszer és a perifériák között.