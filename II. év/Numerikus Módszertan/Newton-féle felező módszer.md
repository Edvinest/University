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

### Felhasználhatóság a valóságban
Számítógépes grafika (hálók visszaállítása), gépi tanulás, optimalizálás