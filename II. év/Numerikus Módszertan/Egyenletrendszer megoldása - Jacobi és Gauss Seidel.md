### Jacobi
```pseudo
function Jacobi_Iteracio(A, b, max_iteracio=100, epszilon){
	x = zeros((row, 1))

	for i in range(rows){
		for j in range(columns){
			if (i < j) Lower_Triangle[i][j] = A[i][j]
			else if (i > j) Upper_Triangle[i][j] = A[i][j]
		} 
	}

	M = - < Inverse_Diagonal, Lower_Triangle + Upper_Triangle > # dot product mátrix és skaláris szorzáshoz is
	f = < Inverse_Diagonal, b.reshape(-1, 1) # ahhoz, hogy oszlopvektort kapjunk

	for _ in range(max_iteracio){
		x_uj = < M, x > + f

		if(linalg.norm(x_uj - x, ord=inf) < epszilon){
			return x.flatten() # sor vektorhoz?
		}
		x = x_uj
	}

	return x.flatten()
}
```

### Gauss-Seidel
```pseudo
function Gauss_Seidel(A, b, max_iteracio=100, epszilon){
	rows, cols = A.shape()

	x = zeros((rows, 1))

	for _ in range(max_iteracio){
		x_uj = copy(x)

		for i in range(rows){
			sum1 = sum(A[i][j] * x_uj[j] for j in range(i))
			sum2 = sum(A[i][j] * x[j] for j in range(i+1, cols))

			x_uj[i] = (b[i] - sum1 - sum2) / A[i][i]
		}
		if linalg.norm(x_uj - x, ord=inf) < epszilon{
			return x_uj
		}
		x = x_uj
	}

	return x
}
```