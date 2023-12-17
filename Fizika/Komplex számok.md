# Komplex számok

Formálisan gondolkodva, komplex számokra azért van szükségünk, mert negatív
számokból nem lehet négyzetgyököt vonni. A formális mivolta mellett a komplex számoknak és a
komplex számokkal történő számításoknak nagyon komoly jelentése van a fizikában, amelyekre
természetesen kitérünk a továbbiakban.
Például mennyi az értéke $\sqrt{-121}$ = ? Ezt a következő módon számítjuk ki: $\sqrt{-121} =\sqrt{121}\sqrt{-1} = 12\sqrt{-1}$. Használjuk a következő jelölést: j = $\sqrt{-1}$, így az előző értéket így írhatjuk
fel: $\sqrt{-121}$ = 12j és komplex számnak nevezzük (megjegyzés: a matematikusok $i = \sqrt{-1}$
jelölést használnak, azonban a későbbiekben bevezetésre kerülő áramerősség jelölés miatt ezt az
elektrotechnikában nem használjuk!).
Általánosan a komplex számot nem csak az előbbiekben megismert, ún. imaginárius rész
definiálja, hanem lehet a komplex számnak egy valós része is, sőt még akár az is lehet, hogy csak
valós része van. A komplex szám általános definícióját a következő összefüggés adja meg:

$$
\underline{z} = a + jb
$$

Ahol az **a** komplex szám valós része (a = Re{z}) és b a komplex szám imaginárius (vagy
másképpen képzetes) része (b = Im{z}) (megjegyzés: a matematikusok a komplex számokat $\overline{x}$-
al jelölik!).

### Komplex számsík

A komplex számokat a komplex számsíkban ábrázoljuk, ahol a komplex szám egy pontot
jelöl a síkban. A pontnak a helyzetét (ugyanúgy, mint a kétdimenziós euklideszi térben) két
koordináta párossal adhatjuk meg.

![Screenshot from 2023-11-12 18-49-19.png](Komplex%20sza%CC%81mok/Screenshot_from_2023-11-12_18-49-19.png)

Descartes-koordinátáknak megfelelő páros:$\begin{cases}a = Re\verb|{z}| = zcos\phi\\
b = Im\verb|{z}| = zsin\phi\end{cases}$

Poláris-koordinátának megfelelő páros: $\begin{cases}
z \equiv |\underline{z}| = \sqrt{a^2 + b^2} \text{ - modulusz }
\\tg\phi = \frac{b}{a} \text{ - fázisszög }
\end{cases}$

Nagyon fontos megjegyezni, hogy azok a komplex számok, amelyek egy adott sugarú
körön helyezkednek el (pl. |z| sugarú kör az ábrán, z és $z_1$), különböző valós, illetve
imaginárius résszel rendelkeznek, azonos a moduluszuk de különböző a fázisszögük.
Nagyon fontos képlet az ún. Euler-képlet, amely az exponenciális függvény és a komplex
számok közötti kapcsolatot termeti meg a trigonometriai függvények lineáris kombinációjaként.

$$
e^{±j\varphi} = cos(±\varphi) + sin(±\varphi) = cos\varphi ± jsin\varphi\\
Euler-képlet
$$

Ennek a képletnek a következményeként említsük meg azt, hogy miként lehet a szinusz és
koszinusz függvényeket kiszámítani az exponenciális függvények segítségével:

$$
cos\varphi = \frac{e^{j\varphi} + e^{-j\varphi}}{2}
\\
sin\varphi = \frac{e^{j\varphi} - e^{-j\varphi}}{2j}
$$

### Műveletek komplex számokkal

Az alábbiakban tekintsük a következő két komplex számot $\underline{z_1} = a + jb$ és $\underline{z_2} = c + jd$,
amelyekkel elvégezzük az egyszerű számításokat (az általánosítást az olvasóra bízzuk).

- összeadás:
$\underline{z_3} = \underline{z_1} + \underline{z_2} = a + jb + c + jd = (a + c) + j(b + d)$,
    
    ahol az eredményként származó komplex szám valós része Re{$\underline{z_3}$} = a + c és imaginárius része Im{$\underline{z_3}$} = b + d, modulusza $\underline{z_3} = |\underline{z_3}| = \sqrt{(a + c)^2 + (b + d)^2}$, valamint fázisszöge $\varphi_3$ = arctg $\frac{b+d}{a+c}$ 
    
    (**Megjegyzés:** a modulusz és fázis számítás hasonlóképpen történik a további műveletek
    esetén is). A komplex számok összeadása grafikusan a paralelogramma szabály szerint történik)
    

![Screenshot from 2023-11-12 21-11-20.png](Komplex%20sza%CC%81mok/Screenshot_from_2023-11-12_21-11-20.png)

- kivonás:
$\underline{z_4} = \underline{z_1} - \underline{z_2} = \underline{z_1} + \underline{(-z_2}) = a + jb - (c + jd) = (a - c) + j(b - d)$
A komplex számok összeadása grafikusan a paralelogramma szabály szerint történik.
- szorzás:
$\underline{z_5} = \underline{z_1z_2} = (a + jb)(c + jd) = (ac + j^2bd) + j(ad + bc) = (ac + \sqrt{-1}^2bd) + j(ad + bc) = (ac - bd) + j(ad + bc)$
- komplex konjugálás: a $\underline{z_1} = a + jb$ komplex szám komplex konjugáltját úgy képezzük,
hogy a komplex szám imaginárius részének értékét megszorozzuk (-1)-el. így $ \underline{z_1} ^* = a - jb$.
- négyzetre emelés: a z1 = a + jb komplex szám négyzetét a saját komplex konjugáltjával
történő szorzás útján számítjuk ki: $ \underline{z_1} * \underline{z_1} ^* = (a + jb)(a - jb) = a2 + b2 = |\underline{z_1}|^2$.
    
    Tulajdonképpen így számítjuk ki a komplex szám moduluszát: $\underline{z_1} = |\underline{z_1}| = \sqrt{\underline{z_1z_1}}^* = \sqrt{a^2 + b^2}$.
    
- osztás: ez a művelet egy kicsit összetettebb az eddigieknél, mivel a komplex számok
osztásakor a nevezőben nem maradhat komplex mennyiség, így minden esetben az osztónak a komplex konjugáltjával kell osztani és szorozni a törtet:
    
    $$
    \underline{z_6} = \frac{\underline{z}_1} {\underline{z}_2} 
    = \frac{a + jb}{c + jd} 
    =\\[12pt] \frac{(a + jb)(c - jd)}{(c + jd)(c - jd)}
    =\\[12pt]\frac{(ac + bd) + j(bc - ad)}{c^
    2 + d^2} 
    =\\[12pt] \frac{ac + bd}{c^2 + d^2} + j
    \frac{bc - ad}{c^2 + d^2}
    $$