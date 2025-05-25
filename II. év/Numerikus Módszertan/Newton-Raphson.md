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