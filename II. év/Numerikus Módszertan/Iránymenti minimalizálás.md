## Gradiens módszer
```psuedo
x = x0

a max iterációk végéig ismételd:
	| gradiens = < A,x > - b
	| e = -gradiens
	|
	| nevező = < e, < A,x > >
	| 
	| ha a nevező = 0
		| kilépés
	|
	| t = < e, e > / nevező
	| 
	| x_új = x + t * e
	|
	| ha (x_új - x) < epszilon:
		| kilépés
	| x = x_új

térítsd vissza x-et 
```

Ahol **A** egy mátrix, **b** és **x_0** pedig vektorok.
A **b** vektor a keresett pontunk, míg az **x_0** a kiindulási pont.
A függvény segítségével meg tudjuk határozni azt az **x** vektort amelyikkel el tudunk jutni a célunkhoz.

Ahhoz, hogy megkapjuk a gradiens skalárisan kell szoroznunk a mátrixunkat és az x-et, majd kivonni belőle a célt. A gradiens azt adja meg, hogy mennyit is tévedtünk, ezért az **e** segítségével az ellenkező irányba lépünk.

A **t** azt határozza meg, hogy mekkora lépést kell tennünk.

Ha az x_új és x különbsége kisebb, mint az epszilon (tolerancia/megadott hiba) akkor kiléphetünk a ciklusból.
## Konjugált Gradiens módszer