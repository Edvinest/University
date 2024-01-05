## Határérték számítás:

1. $\lim_{n\to\infty}\frac{\sin x_n}{x_n} = 1\qquad,\text{ ha }\lim_{n\to\infty}x_n=0$
2. $\lim_{n\to\infty}\frac{\arcsin x_n}{x_n}=1\qquad,\text{ ha }\lim_{n\to\infty}x_n=0$
3. $\lim_{n\to\infty}\frac{\tg x_n}{x_n}=1\qquad,\text{ ha }\lim_{n\to\infty} x_n = 0$
4. $\lim_{n\to\infty}\frac{\arctg x_n}{x_n} = 1\qquad,\text{ ha }\lim_{n\to\infty}x_n=0$
5. $\lim_{n\to\infty}\frac{\ln(1+x_n)}{x_n}=1\qquad,\text{ ha }\lim_{n\to\infty}x_n=0$
6. $\lim_{n\to\infty}\frac{a^{x_n}-1}{x_n}=\ln a\qquad,\text{ ha }\lim_{n\to\infty}x_n=0\\
a = e\Rightarrow\lim_{n\to\infty}\frac{e^{e_n}-1}{x_n}=1$
7. $\lim_{n\to\infty}(1+\frac{1}{x_n})^{x_n}=e\qquad\text{ a }\lim_{n\to\infty}x_n=\pm\infty$
8. $\lim_{n\to\infty}(\frac{1}{1!}+\frac{1}{2!}+\frac{1}{3!}+\dots+\frac{1}{n!}=e$
9. $\lim_{n\to x_0}\frac{f(x)}{g(x)}=\lim_{x\to x_0}\frac{f'(x)}{g'(x)}\qquad \text{L'Hôpital}$

## Figyelj oda!

- $\lim_{x\to\infty}\frac{\sin x}{x}\neq 1\quad,\text{ mert }\lim_{x\to\infty} x=\infty$  
   $\Rightarrow \text{ Fogó tétel }\\-1\leq\sin x\leq 1\quad /*\frac{1}{x}\\
\frac{-1}{x}\leq\frac{\sin x}{x}\leq\frac{1}{x}\\
\downarrow\\0\Rightarrow\lim_{x\to\infty}\frac{\sin x}{x}=0
$

- $\lim_{x\to a}\frac{f(x)-f(a)}{x-a}=f'(a)$
- $e^{\frac{1}{-0}}=e^{-\infty}=\frac{1}{e^\infty}=\frac{1}{\infty}=0$ |$\frac{1}{-0}=-\infty$  
  $e^{\frac{1}{+0}}=e^{+\infty}=\infty$|$\frac{1}{+0}=+\infty$

## Határozatlan esetek

1. $\frac{\infty}{\infty}$ vagy $\frac{0}{0}$ lehet L'Hôpital szabály, vagy nevezetes határérték. Ha gyök is van akkor vagy kiemelsz a gyök alól (de vigyázz, mert $\sqrt{x^2}=|x|$), vagy konjugált

2. $\infty*0\xrightarrow{}f*g=\frac{f}{\frac{1}{g}}\xrightarrow{}\text{ L'H}$
3. $(\infty-\infty)\xrightarrow{}$ gyök esetén - konjugált ($\sqrt[3]{}$ harmadfokú képlet)  
   $\xrightarrow{}$ erőltetve kiemelek  
   pl: $\lim_{x\to\infty} x -\ln(x+1)=\lim_{x\to\infty}x*(1-\frac{\ln(x+1)}{x})*=\infty*(1-0)=\infty$

\*:$\lim_{x\to\infty}\frac{\ln(x+1)}{x}=(\frac{\infty}{\infty})=\dots=0$

4. $1^\infty$ visszavezetjük "e"-re: $\lim_{x\to x_0}(1+f(x_0))^{\frac{1}{f(x)}}=e\qquad,\forall\lim_{x0\to\infty}f(x_0)=0$
