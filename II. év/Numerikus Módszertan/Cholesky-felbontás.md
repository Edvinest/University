```pseudo
function Cholesky-felbontas(n, A, L){
	for j in range(n){
		sum_diag = sum(L[i][k] ** 2 for k in range(i))
		L[j][j] = sqrt(A[j][j] - sum_diag)

		for i in range(j+1, n){
			sum_off_diag = sum(L[i][k] * L[j][k] for k in range(j))
			L[i][j] = (A[i][j] - sum_off_diag) / L[j][j]
		}
	}
	return L
}
```

### Felhasználhatóság a valóságban
Szintén alkalmas Gépi Tanuláshoz, főként optimalizáció céljából. Ugyanakkor számítógépes grafikában is használják rugalmas testekhez és fizikai modellezéshez.