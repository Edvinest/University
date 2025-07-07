- A digitális technika alapjai. A kettes számrendszer, tizenhatos számrendszer
- A „számrendszer” szó, mint fogalom azt jelenti, hogy az egyes helyiértékeken, a számrendszer alapjának a helyiérték sorszáma mínusz egyedik kitevőjű hatványai találhatók.
- Kettes számrendszerben, az előjel nélküli egész számokat 0-től 2N-1-ig tudjuk ábrázolni.
- BCD → pl. BCD óra kijelző
## Egyenes kód (abszolútértékes kód)
A pozitív számokat és a nullát egy vezető zérussal, e számok ellentettjét egy vezető egyessel írjuk. Például: +1 = 0001, és -1 = 1001. E kód jellegzetessége a negatív nulla, ami formálisan képezhető a nulla szám 0000 kódjából az előjelbit átváltásával: 1000.
## Komplemens kód (kettes komplemens kód)
A legáltalánosabb fixpontos bináris kód a nullát kódoló 0000-ból előre (+1 = 0001) és vissza (-1 = 1111) számlálással adódik (ahogyan a decimális műszereken a 0000-től visszaforgatással a 9999).

**Átvitel bit**: Jelzi, ha egy adott helyiértéken elvégzett művelet eredménye
meghaladja az ott ábrázolható értéket.
**Túlcsordulás (illetve alulcsordulás)**: ha egy összeadás vagy kivonás művelet
eredménye kívül esik az aktuális számábrázolási tartományon.

## Lebegőpontos számok
A lebegőpontos szám lényege, hogy az ábrázolásánál a tizedespont „lebeg”, vagyis az ábrázolható értékes számjegyeken belül bárhova kerülhet. (Példa erre az 1,23; 12,3; 123 számok, melyek mindegyike 3 értékes számjegyet tartalmaz.) A lebegőpontos ábrázolás előnye a fixpontos számábrázolással szemben az, hogy sokkal szélesebb tartományban képes értékeket felvenni.

## Lebegőpontos számok - IEEE 754 (I tripple E) szabvány
Az IEEE 754/1985 szabvány szerint 4 féle – csak kettes számrendszerben értelmezendő – lebegőpontos szám ábrázolási formátum létezik, melyek csak az adott elem bitszámában térnek el egymástól. Az 1985-86-os évben került elfogadásra az IEEE 754-es (854) számú lebegőpontos számábrázolási szabvány, melyet a legfontosabb processzorgyártók is elfogadtak.

### Tulajdonságai
- a mantissza előjele 0, ha a szám pozitív; és 1, ha negatív;
- a mantisszában levő fixpontos szám 1-re normalizáltan értendő, azaz 1.
a formájú;
A szabvány a lebegőpontos művelet végrehajtáshoz többfajta
pontosságot definiál:

| Pontosság     | Hossz   | Előjel | Mantiszta | Exponens | Számtartomány                                    |
| ------------- | ------- | ------ | --------- | -------- | ------------------------------------------------ |
| Egyszeres     | 32 bit  | 1 bit  | 23 bit    | 8 bit    | 8.43 x $10^{-37}$ < \| N \| < 3.37 x $10^{38}$   |
| Dupla         | 64 bit  | 1 bit  | 52 bit    | 11 bit   | 4.19 x $10^{-307}$ < \| N \| < 1.67 x $10^{308}$ |
| Kiterjesztett | 80 bit  | 1 bit  | 64 bit    | 15 bit   | 3.4 x $10^{-4932}$ < \| N \| < 1.2 x $10^{4932}$ |
| Négyszeres    | 128 bit | 1 bit  | 112 bit   | 15 bit   |                                                  |
