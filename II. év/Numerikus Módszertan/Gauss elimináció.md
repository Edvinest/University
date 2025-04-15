```pseudo
function gauss_elimination_with_L(A, b){
    n = length(A)
    L = eye(n)  # egységmátrix

	# eliminációs lépés
    for k in range(n-1){
        for i in range(k+1, n){
            L[i][k] = A[i][k] / A[k][k]
            b[i] = b[i] - L[i][k] * b[k]
            for j in range(k, n){
                A[i][j] = A[i][j] - L[i][k] * A[k][j]
            }
        }
    }
    
    # visszahelyettesítés
    x = zeros(n)
    x[n-1] = b[n-1] / A[n-1][n-1]

    for i in range(n-2, -1, -1){
        s = 0
        for j in range(i+1, n):
            s += A[i][j] * x[j]
        x[i] = (b[i] - s) / A[i][i]
	}
    return x, L, A
}
```