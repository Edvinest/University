**RAM (Random Access Memory)** - a gép kikapcsolása után elveszti az adatokat
	- Dinamikus - kondenzátorokból épül fel, periodikusan frissíteni kell
	- Statikus - D bistabilokból épül fel
**ROM (Read Only Memory)** - gyárilag beprogramozott, csak olvasható memória, a gép kikapcsolása után is megőrzi az adatokat
	- EPROM (Erasable Programamble ROM) - optikai úton (infravörös fénnyel) törölhető, újra programozható memória
	- EEPROM (Electronically Eraseable ROM) - elektromosan törölhető, újra programozható
	- FLASH-ROM - gyors, nagyszámú törlési, újraírási ciklust támogat


## Memória típusok használata

ROM típusú memóriák:
- A BIOS-t tartalmazó memória a ROM-BIOS. Melynek feladata az egyes hardver elemek múködésének irányítása. Ennek tartalmát a DOS a RAM-ba másolja
- Nagy felbontású VGA monitorok esetén, a vezérlőkártyán is találhatunk ROM-ot

RAM típusú memóriák:
- Operatív memória
- CMOS-RAM. Olyan kis fogyasztású memória, amely külön akkumulátorról kapja az áramot, így a gép kikapcsoláasakor sem veszíti el tartalmát. A számítógép konfigurációs beállításait őrzi
- CACHE-MEMORY. Kis kapcaitású gyorsító memória

Virtuális memória:
- A számítógépnek lehet úgynevezett virtuális memóriája. Itt tulajdonképpen arról van szó, hogy a gép - igazi memória hiányában - memóriának használja a merevlemez egy bizonyos, meghátorozott részét

## Adatok a memóriában: címzés, allokálás
### Memóriakezelés
A memóriakezelő feladata:
- folyamatok ne sértséek meg egymást - memóriaelosztás
- mindenkori helyzetadminisztrálás
- aktuális háttértárak ingénybevétele
A memória legyen gyors, megfelelően nagy, olcsó és kikapcsolás után is őrizze meg az adatokat.
Hierarchia (tároló hierarchia)
1. Kisméretú drága, gyors és felejtő - CACHE (MB)
2. Közepes méretú, felejtő, közepesen drága (GB) - RAM
3. Lassú, olcsü nem felejtő (TB) - HDD, SSD