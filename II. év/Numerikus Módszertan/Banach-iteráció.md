```pseudo
function banach_fixed_point(f, x0, tol=1e-6, max_iteracio=100){
    x = x0
    iterates = [(x, 0)]  # Az első pont az x tengelyen van (x, 0)
    for i in range(max_iteracio){
        y_new = f(x)  # Következő y érték f(x)
        iterates.append((x, y_new))  # Függőleges lépés f(x) felé
        iterates.append((y_new, y_new))  # Vízszintes lépés az y = x egyeneshez
        if np.abs(y_new - x) < tol{
            break
        }
        x = y_new
    return iterates
}
```