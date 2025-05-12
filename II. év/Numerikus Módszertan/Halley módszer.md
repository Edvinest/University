```pseudo
function Halley(f, df, ddf, x0, max_iteracio=100, epszilon){
	x = x0
	for k in range(max_iteracio){
		fx = f(x)
		dfx = df(x)
		ddfx = ddf(x)

		nevezo = 2 * dfx^2 - fx * ddfx
		if nevezo == 0 break

		x_uj = x - (2 * fx * dfx) / nevezo

		if abs(x_uj - x) < epszilon break

		x = x_uj
	}
	return x
}
```