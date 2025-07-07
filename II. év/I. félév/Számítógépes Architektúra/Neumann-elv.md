- A számítógép **vezérlést tárolt program** végzi (control-flow)
- A gép belső tárolójában a program utasításai és a végrehajtásukhoz szükséges
adatok egyaránt megtalálhatók (**közös utasítás és adattárolás**, a program
felülírhatja magát illetve nyilván az adatokat is – azaz az egész memóriát)
- Az aritmetikai és logikai műveletek (programutasítások) végrehajtását önálló
részegység (**ALU**) végzi
- Az adatok és programok beolvasására és az eredmények megjelenítésére önálló
egységek (**perifériák**) szolgálnak

## A számítógép felépítése

### 5 alapvető egység
- bemenet
- memória
- aritmetikai egység
- vezérlőegység
- kimenet
![Számítógép felépítése](szamitogep_felepites.png)

## Neumann architekúra
**Egyetlen busz rendszer** az adatokhoz és az utasításokhoz, összesen **egy memória egység**.
### A tárolt program elve
- **A programot alkotó utasítások** kifejezhetők számokkal, **azaz adatként kezelhetők**. Ezek a belső memóriában tárolhatók, mint bármelyik más adat. 
- Ezáltal a számítógép önállóan képes működni, hiszen az adatokat és az utasításokat egyaránt a memóriából veszi elő.
![Neumann architektúra](neumann.png)
### Fő komponensek
- A CPU: központi egység
- A (központi) tár (memória)
- A perifériák, eszközök, I/O modulok
- A sín (busz)

### A működése általánosan
- A CPU veszi a soron következő gépi instrukciót és azt elemzi, végrehajtja.
- Ha kell, adatokat is vesz.
- Egyes instrukciók a perifériákat kezelik.


## Harvard architektúra
**Két külön buszon**, egyidőben olvas be adatot és utasítást, **két külön memóriából**.
- Elkülönített program és adat memória
- Nagyobb biztonság
- Kedvezőbb teljesítmény
- Lehetőség eltérő adat és program memória szervezésre
- Nem képes a saját programját generálni
- Főleg kis méretű számítógépekben (mikrokontrollerekben) terjedt el
![Harvard architektúra](harvard.png)

## Módosított Harvard architektúra
**Két külön buszon** egyidőben olvas be adatot és utasítást, **ugyanabból a memóriából**.
- Mentes a Neumann architektúra hiányosságaitól
- Képes a saját programját generálni és futtatni
- Esetleges hátrány: az adat és programmemória nem lehet különböző szervezésű
- Az általános célú számítógépekben széleskörűen használt felépítés