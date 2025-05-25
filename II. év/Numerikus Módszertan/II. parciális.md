```pseudo
function Newton(f, df, x0, max_iteracio=100, epszilon=1e-10){
	x = x0
	for k in range(max_iteracio):
		fx = f(x)
		dfx = df(x)

		if dfx == 0:
			break

		x_uj = x - fx / dfx

		if abs(x_uj - x) < epszilon:
			break

		x = x_uj

	return x
}
```

```pseudo
function NewtonFelezo(f, df, a, b, x0, max_iteracio=100, epszilon=1e-10){
	x = x0

	for k in range(max_iteracio){
		fx = f(x)
		dfx = df(x)

		if abs(fx) < epszilon:
			break

		# Newton lépés, ha lehet
		if dfx != 0:
			xn = x - fx / dfx
		else:
			xn = (a + b) / 2  # ha derivált nulla, felezés

		# Ha xn kimegy az [a, b] intervallumból, akkor felezés
		if xn < a or xn > b:
			xn = (a + b) / 2

		if f(a) * f(xn) < 0:
			b = xn
		else:
			a = xn

		if abs(xn - x) < epszilon:
			break

		x = xn

	}
	
	return x # Visszaadjuk a gyök közelítését
}
```

```python
def HurModszer(a, b, f, k_max, tol=1e-10):
	x = b
	s = a

	for k in range(1, k_max):

		if (f(x) == f(s)):
			print("Division by zero")
			break

		x_new = x - (x - s / (f(x) - f(s)))*f(x)
		if(f(x_new) == 0): break
		if abs(f(x_new)) < tol:
			return x_new 

		if f(x_new) * f(x) < 0:
		s = x
  
		x = x_new

	return x
```

```pseudo
function Steffensen(f, x0, max_iteracio = 100, epszilon){
	x = x0

	for k in range(max_iteracio){
		x1 = f(x)              # Első közelítés: f(x)
		x2 = f(x1)             # Második közelítés: f(f(x))

		nevezo = x2 - 2 * x1 + x
		if nevezo == 0 break   # Osztás elkerülése, ha a nevező nulla

		# Aitken-gyorsítás képlete:
		x_uj = x - ((x1 - x)^2) / nevezo

		if abs(x_uj - x) < epszilon break  # Konvergenciateszt

		x = x_uj
	}

	return x
}

```