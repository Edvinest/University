### Klasszikus valószínűségi tér
$\mathbb{P}$ - valószínűség
$\Omega$ - teljes eseménytér
$A$ - esemény
$\mu(A)$ - esemény mértéke (az utolsó és első érték különbsége)

----
Pl. szabályos 6 oldalú kockadobás esetén az $\Omega$ = {1, ... , 6}. Mekkora az esélye, hogy 2est dobunk (A = 2)

-----
Atomi valószínűség:
Mi a valószínűsége annak, hogy a szabályos 6 oldalú dobókockával páros számot dobunk?

$p$ - egy esemény valószínűsége
$B = \{2, 4, 6\}$
$\mathbb{P}(B) = \mathbb{P}(\{2\} \cup \{4\} \cup \{6\}) = 3p = 3* \frac{1}{6} = \#B *\frac{1}{\#\Omega}$
---
Komplemens:
$\mathbb{P}(A^c) = 1 -\mathbb{P}(A)$
-----
$\#$ - hossz
$\#(A \cup B \cup C) = \#A + \#B + \#C -\#A \cap B - \#A \cap C - \#B \cap C + \#A \cup B \cup C$

Általános képlet
$\mathbb{P}(\cup^n_{i=1} A_i) = \sum^n_{i=1} \mathbb{P}(A_i) - \sum_{i_1,i_2} \mathbb{P}(A_{i_1} \cap A_{i_2}) + \sum_{i_1, i_2, i_3} \mathbb{P}(A_{i_1}\cap A_{i_2}\cap A_{i_3}) - \dots$
---
#### Érdemes megjegyezni

Hányféleképpen lehet sorba rakni n különböző dolgot?
Ismétlés nélküli permutáció: $\mathbb{P} = n!$

Hányféleképpen lehet sorba rakni n dolgot ha van köztük egyforma (pl. 2 piros golyó, 3 kék)?
Ismétléses permutáció: $\mathbb{P} = \frac{n!}{n_1!*n_2!...n_k!} = \frac{5!}{2!*3!}$

Hányféleképpen lehet n különböző dologból kiválasztani k darabot, ha nem számít a kiválasztás sorrendje és mindegyiket csak egyszer választjuk?
Ismétlés nélküli kombináció: $C^k_n = \binom{n}{k} = \frac{n!}{k!(n-k)!}$

Hányféleképpen lehet n különböző dologból kiválasztani k darabot, ha nem számít a kiválasztás sorrendje és egy dolgot többször is választhatunk?
Ismétléses kombináció: $C^k_{n+k-1} = \binom {n+k-1}{k} = \frac{n+k-1}{k!(n-1)!}$

Hányféleképpen lehet n különböző dologból kiválasztani k darabot, ha számít a kiválasztás sorrendje és mindegyiket csak egyszer választhatjuk?
Ismétlés nélküli variáció: $V_{n,k} = \frac{n!}{(n-k)!}$

Hányféle képpen lehet n különböző dologból kiválasztani k darabot, ha számít a kiválasztás sorrendje és egy dolgot többször is választhatunk?
Ismétléses variáció: $V = n^k$

----
### Geometriai valószínűség
Ha a feladat pl egy szakasszal dolgozik akkor a valószínűségi tér és a kedvező esetek számának hosszát vesszük ($\mu$).

---
### Feltételes valószínűség
Jelölés: $\mathbb{P}(B | A)$ - az A esemény már bekövetkezett

$\mathbb{P}(B|A) = \frac{\mathbb{P}(B \cap A)}{\mathbb{P}(A)}$
$\mathbb{P}(B \cap A) = \mathbb{P}(A) * \mathbb{P}(B|A)$
$\mathbb{P}(A \cup B) = \mathbb{P}(A) + \mathbb{P}(B) - \mathbb{P}(A) * \mathbb{P}(B)$
#### Bayes tétel
$\mathbb{P}(B|A) = \frac{\mathbb{P}(B \cap A)}{\mathbb{P}(A)} = \frac{\mathbb{P}(A \cap B)}{\mathbb{P}(A)} = \frac{\mathbb{P}(B) *\mathbb{P}(A|B)}{\mathbb{P}(A)}$

Pl. Mekkora az esélye annak, hogy a véletlenszerűen kiválasztott diák I. éves, feltéve, hogy átment.
A - átment
B - első éves

---
### A valószínűségű változó
$x : \Omega \rightarrow \mathbb{R}$
A feladat megoldása hasonló a rendszerelmélet feladatokhoz.

Sűrűség függvény: csak diszkrét halmazokra (intervallumokra, F(X))
Eloszlás függvény: diszkrét és folytonos halmazokra

---
### Várható érték néhány tulajdonsága

$\mathbb{E}(x)$ - várható érték

1. Legyen az x valószínűségi változó egy konstans c érték

	$\mathbb{E}(x) = c$

2. Legyen x és y valószínűségi változó melyeknek létezik a várható értéke, ekkor
   
	$\mathbb{E}(x+y) = \mathbb{E}(x) + \mathbb{E}(y)$
	$\mathbb{E}(x+y) = \sum_i\sum_j (i+j) *\mathbb{P}(x=i \cap y = j)=\quad...$ lásd az órai jegyzetet a teljes bizonyításért

---
### Teljes valószínűség tétele

$B_i = \{x=i\}$ egy teljes eseménytér $\mathbb{P}(y=j) =\sum\mathbb{P}(x=j | x = i)*\mathbb{P}(x=i)$

3. Legyen x egy valószínűségi változó és $\alpha$ egy konstans, ekkor

	$\mathbb{E}(\alpha x) = \alpha * \mathbb{E}(x)$
	$\mathbb{E}(\alpha x) = \sum_i (\alpha x) \mathbb{P}(x = i) = \sum_i i*f(i) = \alpha \mathbb{E}(x)$

---
### Szórásnégyzet (variancia) tulajdonsága

1. $\sigma^2(x) = \mathbb{V}(x) = \mathbb{E}(x^2) - \mathbb{E}(x)^2$
	Definícióból kiindulva
	$\sigma^2(x) = \mathbb{E}([x-\mathbb{E}(x)]^2) =$ ... innentől pedig csak levezeted és megkapod a fenti eredményt

Tulajdonság: ha x és y független, akkor cov(x,y) = 0
$cov(x,x) = \mathbb{E}(x*x) - \mathbb{E} - \mathbb{E}(x)*\mathbb{E}(x)=\sigma^2(x) =\mathbb{V}(x)$

---
### A valószínűség számítás nevezetes egyenlőtlenségei

1. Markov-egyenlőtlenség
   
   Legyen x valószínűségi változó, mely pozitív értékeket vesz fel és létezik a valós értéke
   
   $\mathbb{P}(x > c) \le \frac{\mathbb{E}(x)}{c}$
   
   $\mathbb{E}(x) = \int^\infty_{-\infty}tf(t)dt = \int^c_0tf(t)dt = \int^c_0tf(t)dt + \int^\infty_ctf(t)dt =>$
   $\mathbb{E}(x)\ge \int^\infty_c tf(t)dt \ge c*\int^\infty_c f(t)dt=c*\mathbb{P}(x=[c,\infty]) => \mathbb{E}(x) \ge c*\mathbb{P}(x\ge c)$
   Ha ezt átírod, megkapod a fenti egyenlőtlenséget.
   
   Kis magyarázat a fentiekhez:
   $x \gt 0 => f(t) = 0\quad, t \le 0$
   $c \le t, \forall t \in [c, \infty] => cf(t) \le tf(t), \forall t \in [c, \infty] => \int^\infty_c cf(t)dt \le \int^\infty_c tf(t)dt$

2. Chebishev-egyenlőtlenség
   
   Legyen x valószínűségi változó, melynek létezi a várható értéke és a szórása.
   
	$\mathbb{P}(|x-\mathbb{E}(x)| \ge \epsilon) \le \frac{\sigma^2(x)}{\epsilon^2}$
	
	Pl. $\epsilon = 2\sigma(x)$
		
		$\mathbb{P}(|x - \mathbb{E}(x)| \ge 2\sigma(x))\le\frac{\sigma^2(x)}{4\sigma^2(x)}=25\%$

	Ha átírjuk az egyenletet akkor megkapjuk a komplemensét:
	
	$\mathbb{P}(|x -\mathbb{E}(x)| \lt 2\sigma(x)) \ge 75\%$

3. Az átlag, mint valószínűségi változó
   
   Legyen $x_1, x_2,\dots,x_n$ valószínűségi változó, melyek azonos eloszlású x valószínűségi változók (jel $x_i \sim x$) és egymástól függetlenek.
   
   Tekintsük az $\overline{x} = \frac{1}{n}(x_1+x_2+\dots+x_n)$ valószínűségi változót.
   
   $\mathbb{E}(\overline{x})=\mathbb{E}(\frac{1}{n}(x_1+\dots+x_n)) =\frac{1}{n}\mathbb{E}(x_1+\dots+x_n)=$
   $=\frac{1}{n}(\mathbb{E}(x_1)+\dots+\mathbb{E}(x_n))=\frac{1}{n}*n*\mathbb{E}(x) = \mathbb{E}(x)$

---
### Diszkrét nevezetes eloszlások

1. Egyenletes/uniform eloszlás
   
   x valószínűségi változó egyenletes eloszlású az {1,2,...,n} halmazon, ha $f: \mathbb{N} \rightarrow \mathbb{R},$
   
   $f(k) = \begin{cases}\frac{1}{n}, \text{ha k}=\overline{1,n}\\0,\text{ különben} \end{cases}$
   
   Jel: $x \sim U(1,n)$
   $\mathbb{E}(x) = \sum^\infty_{k = -\infty}kf(k) = 1*\frac{1}{n} + 2*\frac{1}{n}+...+n*\frac{1}{n}=\frac{n(n+1)}{2n}=\frac{1+n}{2}$

2. Binominális eloszlás
   
   Pl. Hamis pénzérme dobás esetén a fej dobás valószínűsége p = (0,4), az írásé q = 1 - p = (0,6). Négyszer dobunk egymás után. Legyen x valószínűségi változó a dobott fejek száma.
   
   $\mathbb{P}(x = 0) = q^4$
   $\mathbb{P}(x = 1) = \binom{4}{1} * q^3* p$
   $\mathbb{P}(x = 2) = \binom{4}{2} * p^2 * q^2$
   $\mathbb{P}(x = 3) = \binom{4}{3} * p^3 * q^1$
   $\mathbb{P}(x = 4) = \binom{4}{4} * p^4 * q^0$
   
   Newton képlet
   
	   $1^n = (p+(1-p))^n = (p+q)^n=\sum^n_{k=0}\binom{n}{k}*p^k*q^{n-k}=\sum^n_{k=0}\mathbb{P}(x=k)=\sum^n_{k=0}f(k)$

3. Poisson eloszlás
   
   $\sum^\infty_{k=0}\frac{\lambda^k}{k!}*e^{-\lambda}=e^{-\lambda}\sum^\infty_{k=0}\frac{\lambda^k}{k!}=e^{-\lambda}*e^\lambda =1$
   
---
### Folytonos eloszlások
