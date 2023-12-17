# Vonatkoztatási rendszer (koordináta rendszer)

A fizikai jelenségeket vonatkoztatási rendszerekben írjuk le, amelyek jellemezhetik térben,
és/vagy időben is a jelenségeket. 

A vonatkoztatási rendszerek lehetnek nyugalomban lévők (vagy viszonylagos nyugalomban lévők), illetve mozgásban lévők is és végezhetnek egymáshoz képest egyenletes (állandó sebesség) vagy gyorsuló haladó mozgást, illetve forgó mozgást is. Ennek megfelelően nem mindegy az, hogy milyen koordináta rendszert használunk egy jelenség leírására. ( Egyelőre a nyugalomban lévő, úgynevezett inercia (test tehetetlensége) vonatkoztatási rendszerekre szorítkozunk, ám később a gyorsuló vonatkoztatási rendszerekben fellépő különbségekre is kitérünk. )
A továbbiakban a jelenségek térbeli leírására használatos (Euklideszi-térre vonatkozó)
vonatkoztatási rendszerekkel ismerkedünk meg.

## Descartes féle koordináta rendszer

### 1 dimenzió

Ebben az esetben egy pont helyzetét a vonatkoztatási rendszer kezdőpontjához képest csak
egy adat határozza meg. Az ábrán az x-koordináta. Mivel egy adott iránnyal van dolgunk, két
különböző irányítás lehetséges. Ennek a matematikai megjelenítését egy egységvektor
segítségével fejezzük ki. Az x-tengelyhez hagyományosan az $\vec{i}$ - egységvektor tartozik. Az ábra
szerint az 1-es pont $r_1$ távolságra található az 0-ponttól és a helyzetét $\vec{r}_1$ = $r_1\vec{i}$ vektor adja meg,
míg a 2-es pont $r_2$ távolságra található az 0-ponttól és a helyzetét $\vec{r}_2 = \vec{-r}_2\vec{i}$ vektor adja meg.

![Screenshot from 2023-11-12 14-58-00.png](Vonatkoztata%CC%81si%20rendszer%20(koordina%CC%81ta%20rendszer)/Screenshot_from_2023-11-12_14-58-00.png)

Mivel egyetlen iránnyal van dolgunk szögek használatának tekintetében két lehetőség
adódik. Abban az esetben amikor két vektor azonos irányítással rendelkezik, az általuk bezárt szög értéke nulla, ha pedig ellentétes irányítással rendelkeznek, az általuk bezárt szög értéke 180 deg ($\pi$- radián).

### 2 dimenzió

Ebben az esetben egy pont helyzetét a vonatkoztatási rendszer kezdőpontjához képest két
adat határozza meg. A következő ábrán az x és az y koordináták. Az x-tengelyhez hagyományosan az $\vec{i}$ – egységvektor, míg az y-tengelyhez a $\vec{j}$ egységvektor tartozik. Az $\vec{i}$ és a $\vec{j}$ egységvektorok merőlegesek egymásra. Az ilyen koordináta-rendszert derékszögű koordináta-rendszernek hívjuk.
Az ábra szerint az 1-es pont $r_1$ távolságra található az 0-ponttól és a helyzetét

$$
\vec{r}_1 = x_1\vec{i} + y_1\vec{j}
$$

vektor adja meg, míg a 2-es pont $r_2$ távolságra található az 0-ponttól és a helyzetét

$$
\vec{r}_2 = -x_2\vec{i}-y_2\vec{j}
$$

vektor adja meg.

![Screenshot from 2023-11-12 15-06-50.png](Vonatkoztata%CC%81si%20rendszer%20(koordina%CC%81ta%20rendszer)/Screenshot_from_2023-11-12_15-06-50.png)

### 3 dimenzió

Ebben az esetben egy pont helyzetét a vonatkoztatási rendszer kezdőpontjához képest
három adat határozza meg. Az ábrán az x, y és z koordináták. Az x-tengelyhez hagyományosan az $\vec{i}$, az y-tengelyhez a $\vec{j}$ és a z-tengelyhez a $\vec{k}$ egységvektor tartozik. Az $\vec{i}$, $\vec{j}$ és $\vec{k}$ egységvektorok merőlegesek egymásra. Az ilyen koordináta-rendszert derékszögű koordináta-rendszernek hívjuk.
Az ábra szerint az M-pont r távolságra található az 0-ponttól és a helyzetét

$$
\vec{r} = x_M\vec{i} + y_M\vec{j} + z_M\vec{k} = r\vec{e}_r
$$

ahol $\vec{e}_r$ a $\vec{r}$-hoz tartozó egységvektor adja meg.
**Megjegyzés:** az x, y és z koordinátákat Descartes-féle koordinátáknak nevezzük.

![Screenshot from 2023-11-15 16-16-13.png](Vonatkoztata%CC%81si%20rendszer%20(koordina%CC%81ta%20rendszer)/Screenshot_from_2023-11-15_16-16-13.png)

## Poláris koordináta rendszer

### 2 dimenzió

Kiindulásként használjuk az ábrán szemléltetett koordináta-rendszert, amelyhez annyi kiegészítést teszünk, hogy egy pont helyzetét egy szög és egy távolság függvényében is
megadhatjuk. A következő ábrán az 1-pont helyzetét megadhatjuk a descartes-i koordinátákkal ($x_1$, $y_1$), vagy az $r_1$ távolság és a $\varphi_1$ egy szög (azimut-szög) segítségével (megjegyezzük, hogy a szögek meghatározása is mindig egy vonatkoztatási irányhoz képest történik, az ábrán a vonatkoztatási irány az x-tengely pozitív irányítása – 0 fokos „irány”). Az ($r_1$, $\varphi_1$) párost nevezzük poláris koordinátáknak.

![Screenshot from 2023-11-12 15-12-17.png](Vonatkoztata%CC%81si%20rendszer%20(koordina%CC%81ta%20rendszer)/Screenshot_from_2023-11-12_15-12-17.png)

Felhasználva a trigonometriai függvényeket kapcsolatot teremthetünk a descartes-i és a
poláris koordináták között.

$$x_1 = r_1*cos\varphi_1\\  
és\\
y_1 = r_1 * sin\varphi_1\\
vagy\\
r_1 = \sqrt{x_1^2 + y_1^2}\\
és\\
tg\varphi_1 = \frac{y_1}{x_1}$$

### 3 dimenzió

Kiindulásként használjuk az ábrán szemléltetett koordináta-rendszert, amelyhez annyi
kiegészítést teszünk, hogy egy pont helyzetét két szög és egy távolság függvényében is
megadhatjuk. Az ábrán az M-pont helyzetét megadhatjuk a descartes-i koordinátákkal
($x_M$, $y_M$, $z_M$), vagy az r távolság a $\varphi$ és a $\theta$ szögek segítségével. Az (r, $\varphi$, $\theta$) hármast nevezzük poláris koordinátáknak.

![Screenshot from 2023-11-12 16-12-05.png](Vonatkoztata%CC%81si%20rendszer%20(koordina%CC%81ta%20rendszer)/Screenshot_from_2023-11-12_16-12-05.png)

Felhasználva a trigonometriai függvényeket kapcsolatot teremthetünk a descartes-i és a
poláris koordináták között.  

$$
x_M = r*sin\theta*cos\varphi\\ y_M = r*sin\theta*sin\varphi\\ z_M = r*cos\theta\\[12pt] vagy\\[12pt] r = \sqrt{x_M^2 + y_M^2 + z_M^2}\\[6pt] tg\varphi = \frac{y_M}{x_M}\\[6pt] tg\theta = \frac{\sqrt{x_M^2 + y_M^2}}{z_M}
$$