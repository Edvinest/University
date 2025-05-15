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