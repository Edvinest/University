```pseudo
function HermiteInterpolacio(xData, fData, fDeriv, x){
	n = len(xData)
	z = [0] * (2 * n)
	Q = [[0 for _ in range(2 * n)] for _ in range(2 * n)]

	for i in range(n):
		z[2 * i] = xData[i]
		z[2 * i + 1] = xData[i]
		Q[2 * i][0] = fData[i]
		Q[2 * i + 1][0] = fData[i]
		Q[2 * i + 1][1] = fDeriv[i]
		
		if i != 0:
			Q[2 * i][1] = (Q[2 * i][0] - Q[2 * i - 1][0]) / (z[2 * i] - z[2 * i - 1])

	for i in range(2, 2 * n):
		for j in range(2, i + 1):
			Q[i][j] = (Q[i][j - 1] - Q[i - 1][j - 1]) / (z[i] - z[i - j])

	Eredmeny = Q[0][0]
	Szorzat = 1.0

	for i in range(1, 2 * n):
		Szorzat = Szorzat * (x - z[i - 1])
		Eredmeny = Eredmeny + Q[i][i] * Szorzat

	return Eredmeny
```