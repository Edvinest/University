# Sorozatok és sorok
$\sum_{n = 1}^{\infty} a_n$

### D'Alembert
$\sum_{n = 1}^{\infty} a_n, \space a_n > 0$  
$\lim_{n\to\infty} = \frac{a_{n+1}}{a_n} = g$  
g < 1 => konvergens  
g = 1 => nem lehet eldönteni  
g > 1 => divergens

### Cauchy gyökkritérium
$\lim_{n\to\infty} \sqrt[n]{a_n} = l$  
l < 1 => konvergens  
l = 1 => nem lehet eldönteni  
l > 1 => divergens

### Raabe
$\lim_{n\to\infty} n*(\frac{a_{n+1}}{a_n} * 1) = l$  
l < -1 => konvergens  
l = -1 => nem lehet eldönteni  
l > -1 => divergens

### Leibnitz
$\sum_{n=1}^{\infty}(-1)^n * a_n$, ha $(a_n)_{n\geq1}$ csökkenő és $\lim_{n\to\infty} a_n = 0$ => konvergens  

Csökkenő tesztelése:  
$a_n - a_{n+1} > 0$ => csökkenő  
$\frac{a_n}{a_{n+1}} > 1$ => csökkenő

## Hatványsorok
$$\sum_{n=1}^{\infty} a_n*(x - x_0)^n \\[12pt]
\frac{1}{R} = \lim_{n\to\infty}\sqrt[n]{|a_n|}\\[12pt]
\frac{1}{R} = \lim_{n\to\infty} |\frac{a_{n+1}}{a_n}| (*)
$$
*Inkább ezt lehet használni  
R - konvergencia sugár  
| x - x$_0$ | < R => konvergens -> megnézem a határokat, hogy konv/div  
| x - x$_0$ | > R => divergens

## Iterált határérték
$\lim_{y\to y_0}(\lim_{x\to x_0}f_{(x, y)}) = l_1\\
\lim_{x\to x_0}(\lim_{y\to y_0}f_{(x, y)}) = l_2$  
Ha $l_1 \neq l_2$ => nem létezik f határértéke. Ez szükséges, de nem elég ahhoz, hogy tudjuk, hogy létezik a hatérték vagy sem.  
Pl: 
$$\lim_{x\to 1\space y\to 0} = \frac{sin (x+ y - 1}{x - y} = \space?\\[10pt]
\lim_{y\to 0}\space(\lim_{x\to 1}\frac{sin(x +y -1)}{x - y})= \lim_{y\to 0} \frac{sin y}{1-y} = 0\\[10pt]
\lim_{x\to 1}\space(\lim{y\to 0} \frac{sin(x+y-1)}{x-y}) = \lim_{x\to 1} \frac{sin x-1}{x} = 0\\[15pt]
\downarrow\\
\text{Létezhet a határérték, } l_1 = l_2
$$
