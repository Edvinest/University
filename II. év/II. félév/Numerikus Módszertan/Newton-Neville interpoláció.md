```pseudo
function NevilleInterpolacio(xData, fData, x){
	N = len(xData)
	y = fData.copy()

	for k in range(1, N):
		for i in range(N - k):
			ny = (x - xData[i + k]) * y[i] + (xData[i] - x) * y[i + 1]
			ny = ny / (xData[i] - xData[i + k])
			y[i] = ny

	return y[0]
}
```