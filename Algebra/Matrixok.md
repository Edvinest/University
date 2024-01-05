# Mátrixok

Jelölés: $M_{sor\text{ x }oszlop}$  
Pl: $M_{m\text{ x }n}$, ahol $m$ és $n$ pozitív egész számok és a mátrix dimenziói.  
A mátrix dimenziót mindig először a sorok számával, majd az oszlopok számával adják meg.

$$
A =
\begin{bmatrix}
a_{11} && a_{12} && \dots && a_{1n}\\
a_{21} && a_{22} && \dots && a_{2n}\\
\vdots &&  && \ddots\\
a_{m1} && a_{m2} && \dots && a_{mn}
\end{bmatrix}
$$

A mátrixnak az **_i_**-edik sorában és **_j_**-edik oszlopában lévő elemet a mátrix **_i_**, **_j_**-edik elemének nevezik, jelölése **A$_{\bold{i,j}}$** vagy **A[i,j]**. először mindig a sorszám, utána az oszlopszám szerepel. Konvenció, hogy a mátrixot nagybetűvel, az elemeit kisbetűvel jelöljük.  
Azokat a mátrixokat amelyek egyik dimenziója 1, vektornak szoktuk nevezni. A sorvektornak csak egy sora van.

$$ [a_1\space a_2\space\dots\space a_n]$$

Még az oszlopvektornak csak egy oszlopa.

$$
\begin{bmatrix}
a_1\\
a_2\\
\vdots\\
a_n
\end{bmatrix}
$$

## Transzponálás

A transzponálás egy argumentumú művelet. Egy mátrix transzponálása sorainak és oszlopainak a felcserélését jelenti. Egy m×n-es mátrix transzponáltja n×m-es. Kétszer végrehajtva visszakapjuk az eredeti mátrixot. A transzponálás jele **A$^\bold{T}$** vagy **A'**. Egy mátrix szimmetrikus, ha transzponáltja önmaga, azaz **A$^\bold{T}$** = **A'**. Szimmetrikus mátrix csak négyzetes mátrix lehet.

Példa:

$$
A = \begin{bmatrix}
1 && 2 &&3\\
1 && 2 && 7\\
4 && 9 && 2\\
6 && 0 && 5
\end{bmatrix},
A^T = \begin{bmatrix}
1 && 1 && 4 && 6\\
2 && 2 && 9 && 0\\
3 && 7 && 2 && 5
\end{bmatrix}
$$

## Összeadás

Csak azonos dimenziójú mátrixok adhatóak össze. Az **A**+**B** összeget úgy képezzük, hogy az azonos helyen lévő elemeket összeadjuk.

### Tulajdonságai

**Asszociatív**: (A + B) + C = A + (B + C)  
**Kommutatív**: A + B = B + A

## Skalárral való szorzás

Az **A** mátrix egy **c** skalárral való c**_A_** szorzatát úgy számítjuk ki, hogy **_A_** minden elemét megszorozzuk a skalárral.

### Tulajdonságai

**aM** = **Ma** (bármely oldalról szorozhatunk skalárral)  
**(a + b)M** = **aM** **bM**  
**a(bM)** = **(ab)M** = **(ba)M** = **b(aM)**  
Az összeadás viszonyában teljesül még a (mindkét oldali) disztributivitás: **a(M + N)** = **aM** + **aN**

## Mátrixszorzás

Két mátrix szorzata akkor definiált, ha a bal oldali mátrix oszlopai száma megegyezik a jobb oldali mátrix sorainak számával. Ha **_A_** egy **m** x **n**-es, **_B_** pedig **n** x **p**-s mátrix, mátrixszorzatuk egy **m** x **p** méretű (m sorból, p oszlopból álló) **_AB_** mátrix lesz, melynek az elemei így számíthatóak:  
**AB[i,j] = A[i,1] \* B[1,j] + A[i, 2] + B[2,j] + ... + A[i,n] + B[n,j]**  
minden **i** és **j**-re.

Példa:

$$
\begin{bmatrix}
1 && 0 && 2\\
-1 && 3 && 1
\end{bmatrix}
\times
\begin{bmatrix}
3 && 1\\
2 && 1\\
1 && 0
\end{bmatrix}
=\\[12pt]
\begin{bmatrix}
(1 * 3 + 0*2 + 2*1) && (1*1 + 0 * 1 + 2 * 0)\\
((-1)*3+3*2+1*1) && ((-1)*1+3*1+1*0)
\end{bmatrix}
=\\[12pt]
\begin{bmatrix}
5 && 1\\
4 && 2
\end{bmatrix}
$$

### Tulajdonságai

**Asszociativitás**: **(AB)C** = **A(BC)** minden **k** x **m**-es **A m x n**-es **B** és **n** x **p**-s **C** mátrixra. Ezt a tulajdonságot kihasználva optimalizálni lehet a mátrixszorzást. A leghatékonyabb zárójelezés megtalálása nevezetes optimalizációs probléma.  
**Jobb oldali disztributivitás**: **(A + B)C = AC + BC** minden **m** x **n**-es **A** és **B**, valamint **n** x **k**-s **C** mátrixra.  
**Bal oldali disztributivitás**: **C(A + B) = CA + CB** minden **m** x **n**-es, valamint **n** x **k**-s **C** mátrixra.  
Fontos tudni, hogy a kommutativitás általában nem teljesül; vagyis **\*A** és **\*B\*\*** összeszorozható mátrixra általában igaz, hogy **AB** $\ne$ **BA**.
