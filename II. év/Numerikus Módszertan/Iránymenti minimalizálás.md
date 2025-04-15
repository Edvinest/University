## Gradiens módszer
```pseudo
function Gradiens_Modszer(A, b, x0, max_iteracio = 100, epszilon){
	x = x0
	
	for k in range(max_iteracio){
		gradiens = < A,x > - b # <,> = dot product, ebben az esetben skaláris szorzat
		e = -gradiens
		
		nevező = < e, < A,x > >
		 
		if nevező == 0 break
		
		t = < e, e > / nevező
		 
		x_új = x + t * e
		
		ha (x_új - x) < epszilon 
			break
		
		x = x_új
	}
	return x
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
	x = x0
	r = b - < A, x >
	e = r
	
	for k in range(max_iteracio){
		nevezo = < e, < A, e > >
		if nevezo == 0 break
		t = < r, r > / nevezo

		x_uj = x + t * e
		r_uj = r - t * < A, e>
		
		if linalg.norm(r_uj, ord=inf) < epszilon
			break

		beta = < r_uj, r_uj> / < r, r>
		e = r_uj + beta * e
		x = x_uj
		r = r_uj
	}
	return x
}
```