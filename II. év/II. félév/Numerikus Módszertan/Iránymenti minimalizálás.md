## Gradiens módszer
```pseudo
function Gradiens_Modszer(A, b, x0, max_iteracio=100, epszilon){
	x = x0                          # Kezdeti közelítés

	for k in range(max_iteracio){
		gradiens = <A, x> - b       # Gradienst számítjuk: ∇f(x) = Ax - b
		e = -gradiens               # Irányvektor a negatív gradiens

		nevezo = <e, <A, e>>        # Itt is: e^T * A * e (irány szerint mért változás)

		if nevezo == 0              # Ha nincs változás, megállunk
			break

		t = <e, e> / nevezo         # Optimális lépésméret meghatározása

		x_uj = x + t * e            # Új közelítés

		if norm(x_uj - x, inf) < epszilon   # Konvergenciaellenőrzés
			break

		x = x_uj                    # Frissítjük x-et a következő iterációhoz
	}
	return x                       # Megoldás közelítése
}
```

Ahol **A** egy mátrix, **b** és **x_0** pedig vektorok.
A **b** vektor a keresett pontunk, míg az **x_0** a kiindulási pont.
A függvény segítségével meg tudjuk határozni azt az **x** vektort amelyikkel el tudunk jutni a célunkhoz.

Ahhoz, hogy megkapjuk a gradiens skalárisan kell szoroznunk a mátrixunkat és az x-et, majd kivonni belőle a célt. A gradiens azt adja meg, hogy mennyit is tévedtünk, ezért az **e** segítségével az ellenkező irányba lépünk.

A **t** azt határozza meg, hogy mekkora lépést kell tennünk.

Ha az x_új és x különbsége kisebb, mint az epszilon (tolerancia/megadott hiba) akkor kiléphetünk a ciklusból.
## Konjugált Gradiens módszer
```pseudo
function Konjugalt_Gradiens(A, b, x0, max_iteracio=100, epszilon){
	x = x0                          # Kezdőérték
	r = b - <A, x>                  # Kezdeti maradékvektor: r = b - Ax
	e = r                          # Kezdeti irányvektor (rés iránya)

	for k in range(max_iteracio){
		nevezo = <e, <A, e>>       # Skaláris szorzat: e^T * A * e
		if nevezo == 0             # Ha nevező 0, akkor nincs előrelépés
			break

		t = <r, r> / nevezo        # Optimális lépésméret t (alfa)

		x_uj = x + t * e           # Új közelítés a megoldásra
		r_uj = r - t * <A, e>      # Új maradékvektor

		if norm(r_uj, inf) < epszilon   # Konvergenciavizsgálat (végtelen norma alapján)
			break

		beta = <r_uj, r_uj> / <r, r>    # Új irány súlyozása (β)
		e = r_uj + beta * e       # Új keresési irány
		x = x_uj                  # Következő iterációhoz frissítjük x-et
		r = r_uj                  # és r-t is
	}
	return x                      # Visszatérünk a megoldás közelítésével
}

```

### Felhasználhatóság a valóságban
**Gradiens módszer**: Gépi tanulás, képek kezelése
**Konjugált gradiens módszer**: Számítógépes grafika (pl. ruha, deformálható testek szimulálása)
