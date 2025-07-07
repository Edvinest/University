```pseudo
function gauss_elimination_with_L(A, b){
    n = length(A)
    L = eye(n)  # egységmátrix létrehozása (alsó háromszög mátrixként fog szolgálni)

    # Eliminációs lépés - cél: az A mátrixot felső háromszög formára hozni
    for k in range(n-1){
        for i in range(k+1, n){
            # L[i][k] értéke az aktuális sor és a pivot sor hányadosa
            L[i][k] = A[i][k] / A[k][k]
            # b vektor frissítése az elimináció szerint
            b[i] = b[i] - L[i][k] * b[k]
            # A mátrix i-edik sorának frissítése
            for j in range(k, n){
                A[i][j] = A[i][j] - L[i][k] * A[k][j]
            }
        }
    }
    
    # Visszahelyettesítés (back substitution) - megoldás kiszámítása az x vektorban
    x = zeros(n)
    x[n-1] = b[n-1] / A[n-1][n-1]  # utolsó változó kiszámítása

    # A többi változó kiszámítása visszafelé haladva
    for i in range(n-2, -1, -1){
        s = 0
        # Az ismert x[j] értékek súlyozott összege
        for j in range(i+1, n):
            s += A[i][j] * x[j]
        # x[i] értékének kiszámítása
        x[i] = (b[i] - s) / A[i][i]
    }

    # Eredmények visszaadása: megoldásvektor (x), L mátrix, és módosított A mátrix (felső háromszög formában)
    return x, L, A
}

```

### Felhasználhatóság a valóságban
Áramkörök elemzésénél igen hasznos tud lenni. Kirchhoff törvényei egy egyenletrendszert eredményezhetnek, melyet Gauss eliminációval könnyebb megoldani.