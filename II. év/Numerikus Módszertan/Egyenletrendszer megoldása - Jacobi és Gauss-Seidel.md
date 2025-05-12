### Jacobi
```pseudo
function Jacobi_Iteracio(A, b, max_iteracio=100, epszilon){
    n = A.rows()
    x = zeros((n, 1))  # kezdő közelítés: nullvektor

    # Diagonális, alsó és felső mátrixok szétválasztása
    D = zeros(n, n)
    L = zeros(n, n)
    U = zeros(n, n)

    for i in range(n){
        for j in range(n){
            if (i == j) D[i][j] = A[i][j]             # főátló (diagonális)
            else if (i > j) L[i][j] = A[i][j]         # alsó háromszög
            else if (i < j) U[i][j] = A[i][j]         # felső háromszög
        }
    }

    # D inverze és jobboldali kifejezések
    D_inv = inverse(D)                                # feltételezzük, hogy D invertálható
    M = - D_inv * (L + U)                              # iterációs mátrix
    f = D_inv * b.reshape(-1, 1)                       # konstans oszlopvektor

    for iter in range(max_iteracio){
        x_uj = M * x + f                               # új közelítés számítása

        # konvergencia ellenőrzése (végtelen normával)
        if norm(x_uj - x, inf) < epszilon {
            return x_uj.flatten()                      # sorvektor visszaadása
        }
        x = x_uj
    }

    return x.flatten()                                 # ha nem konvergál max_iteráció alatt
}

```

### Gauss-Seidel
```pseudo
function Gauss_Seidel(A, b, max_iteracio=100, epszilon){
    n = A.rows()
    x = zeros((n, 1))  # kezdő közelítés

    for iter in range(max_iteracio){
        x_uj = copy(x)  # új vektor tárolásához

        for i in range(n){
            sum1 = 0
            for j in range(0, i){
                sum1 += A[i][j] * x_uj[j]              # frissített értékek használata

            sum2 = 0
            for j in range(i+1, n){
                sum2 += A[i][j] * x[j]                 # régi értékek (még nem frissítve)

            x_uj[i] = (b[i] - sum1 - sum2) / A[i][i]   # új i-edik komponens számítása
        }

        # konvergencia vizsgálat
        if norm(x_uj - x, inf) < epszilon {
            return x_uj.flatten()
        }

        x = x_uj
    }

    return x.flatten()
}
```

### Felhasználhatóság a valóságban
Például képek zajtalanításánál keletkező függvényeket hatékony megoldani Gauss-Seidel vagy Jacobi iterációval