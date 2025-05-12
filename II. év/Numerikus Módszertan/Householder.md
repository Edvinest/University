```pseudo
function Householder3(f, df, ddf, dddf, x0, max_iteracio=100, epszilon){
	x = x0
	for k in range(max_iteracio){
		fx = f(x)
		dfx = df(x)
		ddfx = ddf(x)
		dddfx = dddf(x)

		if dfx == 0 break

		# Householder 3. rendű lépés (szimbólum szerint fejlesztve)
		num = fx * (6 * dfx^2 - 3 * fx * ddfx)
		den = 6 * dfx^3 - 6 * fx * dfx * ddfx + fx^2 * dddfx

		if den == 0 break

		x_uj = x - num / den

		if abs(x_uj - x) < epszilon break

		x = x_uj
	}
	return x
}
```
1. Oldjuk meg
   
   a) $$\begin{cases}\tan x - y = 1\\
     \cos x - 3 \sin y = 0\end{cases}$$
   b) $$\begin{cases}\sin x + 3 \cos y = 2\\
     cos x - sin y = - \frac{1}{5}\end{cases}$$
2.  Oldjuk meg
	 $x^3 - 10 x^2 + 5 = 0$ (Householder módszer)
	 d = 1, 2, 3
	 $x_0$ = 0.7
	 