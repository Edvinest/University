## Paraméteres integrál
### Egyismeretlenes
Pl:
$f(a) = \int_0^\frac{\pi}{2} ln\frac{1+a\cos x}{1-a\cos x} * \frac{f}{\cos x}dx = ?; |a|<1 \Rightarrow -1 < a < 1\\
f'(a) = \int_0^{\frac{\pi}{2}}(ln \frac{1+a\cos x}{1-a\cos x})'_a \frac{dx}{\cos x} = \dots = \frac{\pi}{\sqrt{1-a^2}}\\
f(a) = \int f'(a) da = \int\frac{\pi}{\sqrt{1-a^2}} = \pi \arcsin a+ C$ C-t még meg kell határozni  
$f(0) = 0 \Rightarrow f(0) = \pi\arcsin 0 + C = - \Rightarrow C = 0 \Rightarrow f(a) = \pi\arcsin a$

### Kétismeretlenes
Pl:

$f(a,b) = \int_0^{\infty}\frac{e^{-a^2x^2}-e^{-b^2x^2}}{x}dx = ?\\[12pt]\frac{\partial f}{\partial a} = \int_0^{\infty}(e^{-a^2x^2}-e^{b^2x^2})'_a\frac{dx}{x}=\dots=-\frac{1}{a}\\
f(a,b) = \int\frac{\partial f}{\partial a}da = -\ln a+\bold{\underline{C(b)}} \leftarrow\text{ még ki kell számolni}\\[6pt]
f(b,b) = 0 \Rightarrow f(b,b) = -\ln b + C(b) = 0 \Rightarrow C(b) = \ln b \Rightarrow f(a,b) = -\ln a + \ln b(*) = ln\frac{b}{a}$ 
*: C(b)

## Inproprius integrál
$\lim_{b\to\infty}\int_a^bf(x) dx = L, \text{ ha L véges} \Rightarrow \text{ konvergens}$ 
Jel:  $L = \int_a^{\infty}f(x)dx$  
$\int_1^{\infty}f(x)dx = \lim_{t\to\infty}\int_1^tf(x)dx \leftarrow$ így kell kiszámolni  
pl: $\int_1^{\infty}\frac{x}{(x^2+2)^2}dx=\lim_{t\to\infty}\int_1^t\frac{x}{(x^2+2)^2}dx=\lim_{t\to\infty}\frac{-1}{2(x^2+2)}\Big|_1^t = \frac{1}{6}$  

Konvergencia kritérium: ha az integrál kiszámolása nélkül kell a konvergens/divergens
Ha $\lim_{x\to\infty}x^L*f(x)=l\quad, l\in\mathbb{R}^*\\[6pt]
L > 1 \Rightarrow \int_1^{\infty}f(x)dx \text{ konvergens}\\
L \le 1 \Rightarrow \int_1^{\infty}f(x)dx \text{ divergens}
$

pl:

$f(x) = \frac{x}{(x^2+2)^2}\\
\lim_{x\to\infty}x^3f(x)=\lim_{x\to\infty}\frac{x^4}{x^4+4x^2+4} = 1\\
L = 3 > 1 \Rightarrow f(x) \text{ konvergens}
$

## Dupla integrál
Pl: 

$\underset{D}{\iint}4xy\,dx\,dy=?\\[6pt]
D: \begin{cases}y=x\\y=\frac{1}{x}\\x=3\end{cases}$

![Dupla_integral.png](Integralok/Dupla_Integral.png)

$\int_1^3(\int_{\frac{1}{x}}^x 4xy\,dy)dx$

Pl:

$\underset{D}{\iint}x^2\sqrt{(x^2+y^2)^3}\,dx\,dy\\
D:\begin{cases}x^2+y^2 \le 4\\ y\ge0\end{cases}$

![Dupla_integral2.png](Integralok/Dupla_Integral2.png)

### Polár koordináta
$\begin{cases}x =r\cos\Theta\\y =r\sin\Theta\end{cases}\qquad ,dx\,dy = \underline{r}(*)dr\,d\Theta\qquad,r\in[0,R]$  

*: det I  

$\underset{d}{\iint}\underline{(r\cos\Theta)^2}(*)\sqrt{[\underline{(r\cos\Theta)^2}(*) + \underline{(r\sin\Theta)^2}(**)]^3}*\underline{r\,dr\,d\Theta}(***) = \int_0^2(\int_0^2r^6 \cos^2\Theta \, d\Theta)dr\\[12pt]\Theta\in[0,\pi]$  

*: $x^2$  
**: $y^2$  
***: dxdy

## Tripla integrál
### Gömbi koordináta
$\begin{cases}x = r*\cos\varphi\sin\Theta\\y=r*\sin\varphi\sin\Theta\\z=r*\cos\Theta\end{cases}\quad,\det I = r^2*\sin\Theta\quad,r\in[0,R]$

$\text{gömb:} \qquad x^2+y^2+z^2 = R^2\\R\in[0,r]$

![Tripla_Integral.png](Integralok/Tripla_Integral.png)

Pl: 
$
I = 
\underset{C}{\iiint}\sqrt{x^2+y^2+z^2}\,dx\,dy\,dz = 
\iiint\sqrt{\underline{(r\cos\varphi\sin\Theta)^2}(*)+\underline{(r\sin\varphi\sin\Theta)^2}(**)+\underline{(r\cos\Theta)^2}(***)} \underline{r^2\sin\Theta}\, dr\, d\varphi\, d\Theta = \dots \\\ [0,r]x[0,\frac{\pi}{2}]x[0,\frac{\pi}{2}]
$  

## Görbe ívhossza (görbe grafikonjának a hossza)
Ha $r: \qquad x = x_{(t)}, y = y_{(t)}, z = z_{(t)}\quad; t\in[a,b]\\
L(r) =\int_a^b\sqrt{(x'_{(t)})^2+(y'_{(t)})^2+(z'_{(t)})^2}\,dt$  

Ha 

$f:[a,b]\rightarrow\mathbb{R}\quad f(x) =\dots\\L(f)=\int_a^b\sqrt{1+(f'(x))^2}\,dx$

## Elsőfajú görbementi integrál
r - a görbe jele

$y=f(x)\qquad,x\in[a,b]\\
L(f) = \int_a^b\sqrt{1+(f'(x))^2}\,dx$


$\int_rf(x,y,z)\,\underline{ds} \leftarrow\text{ ívhossz elem}\\ds = \sqrt{(x'_{(t)})^2 + (y'_{(t)})^2+ (z'_{(t)})^2}\,dt$

Pl:\
$\int_r(x^2+y^2)\ln z\,ds = ?\\[12pt]
r:\begin{cases}x = e^t\cos t\\y =e^t\sin t\\z=e^t\end{cases}\qquad t\in[0,1]\\[24pt]
\begin{rcases}x'_{(t)}=e^t(\cos t-\sin t)\\
y'_{(t)} =e^t(\sin t+\cos t)\\
z'_{(t)}=e^t\end{rcases}\Rightarrow ds=e^t\sqrt{3}dt$

$\int_0^1[\underline{(e^t\cos t)^2}(*) +\underline{(e^t\sin t)^2}(**)]\underline{\ln e^t}(***)*\underline{e^t\sqrt{3}}(****)\,dt\\[6pt]\uparrow$ 
Az integrál a és b-je a $t$ a és b-je\
*: $x^2$\
**: $y^2$\
***: $\ln z$\
****: ds

## Másodfajú görbementi integrál

### Ha függ az úttól
Pl:\
$I = \int_r(y^2-z^2)dx\,+\,$