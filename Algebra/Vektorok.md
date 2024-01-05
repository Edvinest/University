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

## Egyenes - sík viszonya

$\vec{v}$ - az egyenes irányvektora  
$\vec{n}$ - a sík normál vektora

Az egyenes párhuzamos a síkkal ha $\vec{v}\perp\vec{n}\Leftrightarrow\vec{n}*\vec{v}=0$  
Az egyenes merőleges a síkkal ha $\vec{v}\parallel\vec{n}\Leftrightarrow=k*\vec{v}$

# Sík - sík viszonya

Sík párhuzamos síkkal ha $\vec{n}\parallel\vec{n'}$  
Sík merőleges síkkal ha $\vec{n}\perp\vec{n'}$

## Polár koordináták

Helyzetvektor hossza és a helyzetvektor tengelyekkel bezárt szöge  
$P(r;\theta)$  
A $\theta$ szöget szögfüggvények segítségével határozzuk meg.

$Q(x_Q,y_Q,z_Q)\\P(x_P,y_P,z_P)\in e\\\text{e - egyenes}\\S:\,Ax+By+Cz+D=0$

### Távolság ponttól síkig

$d(Q,S) =\frac{Ax_Q+By_Q+Cz_Q+D}{\sqrt{A^2+B^2+C^2}}$

### Távolság ponttól egyenesig

$d(Q,e)=\frac{|\vec{v}\times\vec{PQ}|}{|\vec{v}|}$

## Alterek

Egy altér egy nagyobb vektortér része.  
(V,+,\*,$\mathbb{R}$)  
Pl: V=$\mathbb{R}^2\rightarrow$ ($\mathbb{R}^2$,+,\*,$\mathbb{R}$)

### Tétel

$\vec{u},\vec{u'}\in U\\
(1.)\quad\vec{u}+\vec{u'}\in U$ - U zárt a "+"-ra nézve  
$(2.)\quad\alpha*\vec{u}\in U$ - U zárt a skalárral való szorzásra nézve

Ha a két feltétel igaz, U altere $\mathbb{R}$-nek

## $\bold{R^n}$-ben lineáris függetlenség

$(V,+,*,\mathbb{R})vt.\\
\vec{v_1},\vec{v_2},\dots,\vec{v_n}\in V\\
\vec{v_1},\vec{v_2},\dots,\vec{v_n}$ lineárisan függletlen ha $\alpha_1*\vec{v_1}+\alpha_2*\vec{v_2}+\dots+\alpha_n\vec{v_n}\Leftrightarrow\alpha_1,\alpha_2,\dots,\alpha_n = 0$  
$\vec{v_1},\vec{v_2},\dots,\vec{v_n}$ generátor rendszert alkot ha $\forall\vec{w}\in V\qquad \vec{w}=\beta_1*\vec{v_1}+\beta_2*\vec{v_2}+\dots+\beta_n*\vec{v_n}$
$\vec{v_1},\vec{v_2},\dots,\vec{v_n}$ bázis, ha lineárisan független és generátor rendszer

## Végtelen vektorterek

Pl. (F,+,\*,$\mathbb{R}$) függvények vektortere

### Wronskij determináns

$f_0,f_1,\dots,f_{n-1}\rightarrow$ deriválható függvény  
$(f_0,f_1,\dots,f_{n-1})\in F$ lin. függ. ?  
$\alpha_0*f_0(x)+\alpha_1*f_1(x)+\dots\alpha_n*f_{n-1}(x) = 0\\\alpha_0*f'_0(x)+\alpha_1*f'_1(x)+\dots+\alpha_n*f'_{n-1}(x)=0\\
\alpha_0*f''_0(x)+\alpha_1*f''_1(x)+\dots+\alpha_n*f''_{n-1}(x)=0$

$\begin{bmatrix}f_0(x)&&f_1(x)&&\dots&&f_{n-1}(x)\\f'_0(x)&&f'_1(x)&&\dots&&f'_{n-1}(x)\\\vdots\\f^{n-1}_0(x)&&f^{n-1}_1(x)&&\dots&&f^{n-1}_{n-1}(x)\end{bmatrix}*\begin{bmatrix}\alpha_0\\\alpha_1\\\vdots\\\alpha_{n-1}\end{bmatrix}=\begin{bmatrix}0\\0\\\vdots\\0\end{bmatrix}$

**Wronskij-féle determináns**

$W(x)=\begin{bmatrix}f_0(x)&&f_1(x)&&\dots&&f_{n-1}(x)\\f'_0(x)&&f'_1(x)&&\dots&&f'_{n-1}(x)\\\vdots\\f^{n-1}_0(x)&&f^{n-1}_1(x)&&\dots&&f^{n-1}_{n-1}(x)\end{bmatrix}$

### Tétel

$W(x)\neq 0\Rightarrow(f_0,f_1,\dots,f_{n-1}) $ lineárisan független
$W(x)=0\Rightarrow(f*0,f_1,\dots,f*{n-1}) $ lineárisan függő

## Bázis transzformáció

Pl: $v=\mathbb{R}^2$
