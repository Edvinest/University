```pseudo
function LagrangeInterpolacio(xData, fData, x){
	N = len(xData)
	Osszeg = 0

	for i in range(N):
		p = fData[i]
		for j in range(N):
			if j != i:
				p = p * (x - xData[j]) / (xData[i] - xData[j])
		Osszeg = Osszeg + p

	return Osszeg
}
```