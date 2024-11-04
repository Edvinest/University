Adatok: E$_0$ = 10 V, R$_0$ = 4 Ohm, E$_1$ = 25 V, R$_1$ = 25 Ohm
a. ) A K kapcsoló nyitott állásában számítsa ki minden pont potenciálját és lehetséges feszültségeket, ha V$_0$ = 0 V, illetve V$_0$ = −20 V.
![Egyen áram a. ábra](egyen1.png)
![Egyenáram a. ábra, potenciális áram](egyen1potencial.png)

1. Nincs zárt áramkör (nem folynak sehol sem áramok)
	Ha V$_0$ = 0 V
		U$_{01}$ = V$_{0}$ − V$_{1}$ = E$_0$ = −10 (V) $\rightarrow$ V$_1$ = V$_0$ - U$_{01}$ = 10 (V)
		U$_{21}$ = V$_2$ - V$_1$ = 0 (V) $\rightarrow$ = V$_2$ = V$_1$ + U$_{21}$ = V$_1$ = 10 (V)
		U$_{23}$ = V$_2$ − V$_3$ = 0 (V) $\rightarrow$ V$_3$ = V$_2$ − U$_{23}$ = V$_2$ = 10 (V)
		U$_{43}$ = V$_4$ − V$_3$ = E$_1$ = 25 (V) $\rightarrow$ V$_4$ = V$_3$ + U$_{43}$ = 35 (V)
		U$_{24}$ = V$_2$ − V$_4$ = 10 − 35 = −25 (V) $\rightarrow$ U$_{03}$ = U$_{01}$ − U$_{21}$ + U$_{23}$ = −10 − 0 + 0 = −10 (V)
		U$_{41}$ = V$_4$ − V$_1$ = 35 − 10 = 25 (V) $\rightarrow$ U$_{41}$ = U$_{21}$ − U$_{24}$ = 0 − (−25) = 25 (V)
		
	Ha V$_0$ = -20 V
		U$_{01}$ = V$_0$ − V$_1$ = E$_0$ = −10 (V) $\rightarrow$ V$_1$ = V$_0$ − U$_{01}$ = −20 − (−10) = −10 (V)
		U$_{21}$ = V$_2$ − V$_1$ = 0 (V) $\rightarrow$ V$_2$ = V$_1$ + U$_{21}$ = V$_1$ = −10 (V)
		U$_{23}$ = V$_2$ − V$_3$ = 0 (V) $\rightarrow$ V$_3$ = V$_2$ − U$_{23}$ = V$_2$ = −10 (V)
		U$_{43}$ = V$_4$ − V$_3$ = E$_1$ = 25 (V) $\rightarrow$ V$_4$ = V$_3$ + U$_{43}$ = −10 + 25 = 15 (V)
		U$_{24}$ = V$_2$ − V$_4$ = −10 − 15 = −25 (V) $\rightarrow$ U$_{03}$ = U$_{01}$ − U$_{21}$ + U$_{23}$ = −10 − 0 + 0 = −10 (V)
		U$_{41}$ = V$_4$ − V$_1$ = 15 − (−10) = 25 (V) $\rightarrow$ U$_{41}$ = U$_{21}$ − U$_{24}$ = 0 − (−25) = 25 (V)

2. Zárt áramkör
	![Egyen áram b. feladat](egyen2.png)
Az áram kiszámítása a H$_1$ hurokra vonatkozó huroktörvényből (Kirchhoff II.) történik:
$$E_{1} = R_1 I \rightarrow I = \frac{E_{1}}{R_{1}} = 0,5 \text{ (A)}$$
A K kapcsoló nyitott helyzetében meghatározott potenciálviszonyokat az áram
jelenléte részben megváltoztatja, amelyeket az alábbiakban számítunk ki.

Ha V$_0$ = 0 V
	U$_{01}$ = V$_0$ − V$_1$ = E$_0$ = −10 (V) $\rightarrow$ V$_1$ = V$_0$ − U$_{01}$ = 10 (V)
	U$_{21}$ = V$_2$ − V$_1$ = 0 (V) $\rightarrow$ V$_2$ = V$_1$ + U$_{21}$ = V$_1$ = 10 (V)
	U$_{23}$ = V$_2$ − V$_3$ = R$_1$I = 25 (V) $\rightarrow$ V$_3$ = V$_2$ − U$_{23}$ = 10 − 25 = −15 (V)
	U$_{43}$ = V$_4$ − V$_3$ = E$_1$ = 25 (V) $\rightarrow$ V$_4$ = V$_3$ + U$_{43}$ = −15 + 25 = 10 (V)
	U$_{24}$ = V$_{2}$ − V$_4$ = 0 (V) $\rightarrow$ U$_{03}$ = U$_{01}$ − U$_{21}$ + U$_{23}$ = −10 + 0 + 25 = 15 (V)
	U$_{41}$ = V$_4$ − V$_1$ = 10 − 10 = 0 (V) $\rightarrow$ U$_{41}$ = U$_{21}$ − U$_{24}$ = 0 − 0 = 0 (V)

Ha V$_0$ = -20 V
	U$_{01}$ = V$_{0}$ − V$_1$ = E$_0$ = −10 (V) $\rightarrow$ V$_1$ = V$_0$ − U$_{01}$ = −20 − (−10) = −10 (V)
	U$_{21}$ = V$_2$ − V$_1$ = 0 (V) $\rightarrow$ V$_2$ = V$_1$ + U$_{21}$ = V$_1$ = −10 (V)
	U$_{23}$ = V$_2$ − V$_3$ = R$_1$I = 25 (V) $\rightarrow$ V$_3$ = V$_2$ − U$_{23}$ = −10 − 25 = −35 (V)
	U$_{43}$ = V$_4$ − V$_3$ = E$_1$ = 25 (V) $\rightarrow$ V$_4$ = V$_3$ + U$_{43}$ = −35 + 25 = −10 (V)
	U$_{03}$ = V$_0$ − V$_3$ = −20 − (−35) = 15 $\rightarrow$ (V) U$_{03}$ = U$_{01}$ − U$_{21}$ + U$_{23}$ = −10 + 25 + 0 = 15 (V)
	U$_{41}$ = V$_4$ − V$_1$ = −10 − (−10) = 0 (V) $\rightarrow$ U$_{41}$ = U$_{21}$ − U$_{24}$ = 0 − 0 = 0 (V)