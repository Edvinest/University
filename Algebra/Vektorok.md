## Vektor hossza

$v=\begin{bmatrix}v_1\\v_2\\v_3\end{bmatrix} \leftarrow\text{ vektor }\\[12pt]|\vec{v}|=\sqrt{v_1^2+v_2^2+v_3^2}$

## Skalárral való szorzás
A vektor hosszát és/vagy irányítását változtatja meg.

$a*\vec{v}=\dots$

a - skalár

1. $a > 0 \Rightarrow$ a vektor irányítása megmarad, hossza változik
2. $a < 0 \Rightarrow$ a vektor irányítása és hossza is változik
3. $a=0 \Rightarrow$ a szorzat eredménye $\vec{0}$

## Lineáris függetlenség

$\vec{u},\vec{v},\vec{w}\dots\in V$  
V - Vektortér (pl. $\mathbb{R}^2,\mathbb{R}^3$)

$\alpha*\vec{v}+\beta*\vec{u}+\gamma\vec{w}+\dots\leftarrow\text{ vektorok lineáris kombinációja}$  
$\vec{u},\vec{v},\vec{w} \text{ lineárisan független, ha lineáris kombinációjuk }=\vec{0}$  
**Generátor rendszer:** vektortér elemeinek részhalmaza, melyek kombinációjával bármelyik vektor kifejezhető.  
**Bázis:** vektortér elemeinek halmaza, melyek lineárisan függetlenek egymástól és lineáris kombinációjukkal a vektortér összes elemét meghatározhatjuk.  

Pl: $V=\mathbb{R}^2\Rightarrow\vec{u}\vec{v}\text{ lineárisan független}\\[3pt]a*\vec{u}+b*\vec{v}=\vec{w}\Rightarrow\vec{u},\vec{v}\text{ generátor rendszer}\\[12pt]\Rightarrow\{\vec{u},\vec{v}\} = B \leftarrow\text{ bázist alkotnak}$

## Két vektor skaláris szorzata

Legyen $\vec{u},\vec{v}$  
$\vec{u}*\vec{v}=|\vec{u}|*|\vec{v}|*\cos\varphi\\\varphi\in(\vec{u},\vec{v})\in[0,\pi]$  
1. két vektor merőleges, ha a skaláris szorzatuk = 0  
$\vec{u}\perp\vec{v}\Leftrightarrow\vec{u}*\vec{v}=0$
2. két vektor párhuzamos, ha egymás többszörösei  
$\vec{u}=x*\vec{v}$

$\vec{u}=u_1*\vec{i}+u_2*\vec{j}+u_3*\vec{k}=\begin{bmatrix}u_1\\u_2\\u_3\end{bmatrix}$
$\vec{v}=v_1*\vec{i}+v_2*\vec{j}+v_3*\vec{k}=\begin{bmatrix}v_1\\v_2\\v_3\end{bmatrix}$

$\vec{u}*\vec{v}=u_1*v_1+u_2*v_2+u_3*v_3\\
\vec{u}*\vec{v}=|\vec{u}|*|\vec{v}|*\cos\varphi\\
\cos\varphi=\frac{\vec{u}*\vec{v}}{|\vec{u}|*|\vec{v}|}$

## Két vektor vektoriális szorzata

$\vec{u}\times\vec{v}=\vec{w}\\\vec{w}\perp(\vec{u},\vec{v})\text{ síkjára}\\[6pt]\vec{u}=\begin{bmatrix}u_1\\u_2\\u_3\end{bmatrix}\quad\vec{v}=\begin{bmatrix}v_1\\v_2\\v_3\end{bmatrix}\quad\vec{u}\times\vec{v}=\begin{bmatrix}\vec{i}&&\vec{j}&&\vec{k}\\u_1&&u_2&&u_3\\v_1&&v_2&&v_3\end{bmatrix}$

### Tétel
1. $|\vec{u}\times\vec{v}|=\vec{u}$ és $\vec{v}$-re épített paralelogramma területével
2. $\vec{u}$ és $\vec{v}$-re épített háromszög területe = $\vec{u}$ és $\vec{v}$-re épített paralelogramma területe felével  
$$T_{ABC}=\frac{1}{2}|\vec{u}\times\vec{v}|$$

## Vegyes szorzat

$\vec{u}\times\vec{v}*\vec{w} = (\vec{u},\vec{v},\vec{w})$  
I vektoriális szorzat
II skaláris szorzat  
Eredménye egy skalár

### Tétel
$\vec{u}\times\vec{v}*\vec{w}=$ az $\vec{u},\vec{v},\vec{w}$ által épített hasáb térfogatával  
$V_{ABCD}=\frac{1}{6}(\vec{AB}\times\vec{AC}*\vec{AD})$

## Vektor tengelyekkel bezárt szöge
Szögfüggvények inverz függvényeivel (arcsin, arccos etc.) lehet meghatározni.

## Egyenes egyenlete

Legyen $\vec{PQ}=\vec{OP}+\vec{OQ}$ az e egyenes irányvektora és $\vec{v}\parallel\vec{PQ}$  
$P(x_P,y_P,z_P)\\
Q(x_Q,y_Q,z_Q)\\[6pt]
\vec{v}=\begin{bmatrix}v_1\\v_2\\v_3\end{bmatrix}\\[6pt]
\vec{v}\parallel\vec{PQ}\Rightarrow\vec{PQ}=t*\vec{v}\\
\vec{OP}+\vec{QP}=\vec{OP}\\[6pt]
e:\begin{matrix}x_Q = x_P+t*v_1\\y_Q=y_P+t*v_2\\z_Q=z_P+t*v_3\end{matrix}$

## Sík egyenlete
Egy pont és egy normál vektor határoz meg egy síkot ( $n\parallel S$ )  
n - normál vektor, S - sík  
Adott: $P(x_P,y_P)$  
$P_0(x_{P0},y_{P0})\\\vec{n}:\begin{bmatrix}n_1\\n_2\\n_3\end{bmatrix}$  
$\vec{P_0P}\in S, \vec{n}\perp S\Rightarrow\vec{n}\perp\vec{P_0P}\Leftrightarrow\vec{n}*\vec{P_0P}=\vec{0}\Rightarrow\begin{bmatrix}n_1\\n_2\\n_3\end{bmatrix}*\begin{bmatrix}x_P-x_{P0}\\y_P-y_{P0}\\z_P-x_{P0}\end{bmatrix}=\begin{bmatrix}0\\0\\0\end{bmatrix}\Rightarrow\begin{bmatrix}n_1(x_P-x_{P0})\\n_2(y_P-y_{P0})\\n_3(z_P-z_{P0})\end{bmatrix}=\begin{bmatrix}0\\0\\0\end{bmatrix}\Rightarrow\begin{matrix}n_1(x_P-x_{P0}=0\\n_2(y_P-y_{P0})=0\\n_3(z_P-z_{P0})=0\end{matrix}\Rightarrow S:n_1(x_P-x_{P0})+n_2(y_P-y_{P0})+n_3(z_P-z_{P0})=0$