```pseudo
function banach_fixed_point(f, x0, tol=1e-6, max_iteracio=100){
    x = x0
    iterates = [(x, 0)]  # Kezdőpont: az x tengelyen (vizuális segédlethez, pl. grafikonhoz)

    for i in range(max_iteracio){
        y_new = f(x)  # Következő pont: f(x), ez lesz a "függőleges lépés"
        iterates.append((x, y_new))       # Léptetjük f(x)-ig (függőleges irányban)
        iterates.append((y_new, y_new))   # Majd az y = x egyenesre lépünk (vízszintesen)

        if abs(y_new - x) < tol {         # Konvergenciavizsgálat (eltérés kisebb mint tolerancia)
            break
        }

        x = y_new                         # Következő iterációhoz frissítjük x-et
    }

    return iterates  # Az összes (x, y) pont pár a lépésekhez – pl. vizualizációhoz
}

```

### Felhasználhatóság a valóságban
A Gépi Tanulás (Machine Learning) fix-pont algoritmusokat használ, sokaknak a Banach-iteráció az alapja