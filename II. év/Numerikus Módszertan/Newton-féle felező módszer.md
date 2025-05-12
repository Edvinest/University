(Newton-Raphson)
```pseudo
function Newton_Felezo(f, df, x0, max_iteracio=100, epszilon){
    x = x0                          # Kezdő közelítés

    for k in range(max_iteracio){
        f_ertek = f(x)              # f(x) értékének kiszámítása
        df_ertek = df(x)            # f'(x), azaz az első derivált értéke

        if df_ertek == 0            # Ha a derivált 0, nem tudunk tovább osztani → megállunk
            break

        x_uj = x - f_ertek / df_ertek   # Newton lépés: x - f(x)/f'(x)

        if abs(x_uj - x) < epszilon     # Konvergencia ellenőrzése (változás kicsi)
            break

        x = x_uj                     # Következő iterációhoz frissítjük x-et
    }

    return x                         # Visszaadjuk a gyök közelítését
}
```

### Felhasználhatóság a valóságban
Számítógépes grafika (hálók visszaállítása), gépi tanulás, optimalizálás