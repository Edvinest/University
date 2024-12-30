- Memória hozzáférés menete:
	- Címfordítás: Fizikai cím előállítása a virtuálisból
	- Tényleges adat olvasás/írás a fizikai címről/címre
- A laptábla is a fizikai memóriában van
- 1 memóriaművelet a programba
	-> >= 2 memóriaművelet a valóságban
	![Aranyköpés](Images/aranykopes.png)
- Reménység: lokalitás

**TLB: Translation Lookaside Buffer**
- A gyakran használt virtuális <-> fizikai összerendelések cache-e
- Címfordításkor először a TLB-ben keres
**TLB lefedettség**: a TLB bejegyzések által lefedett címtartomány
- Minél nagyobb, annál ritkábban kell a lassú laptáblához nyúlni
**TLB megvalósítása**: tartalom szerint címezhető memória
- Nagy a felülete és sokat fogyaszt
- Szűkös a tárolási kapacitás

| TLB méret                        | 16 - 512 bejegyzés |
| -------------------------------- | ------------------ |
| Találat ideje                    | 0.5 - 1 órajel     |
| TLB hiba esetén címfordítási idő | 10 - 100 órajel    |
| TLB hibaarány                    | 0.01% - 1%         |
![TLB ábra](Images/tlb.png)
