## I. lépés: ISA szint meghatározása
- Utasítások felépítése
- Utasítás készlete

### ENIAC
Neumann János processzor architektúra

Utasítás kódmező | Operandus 1. cím | Operandus 2. cím | Eredmény cím | A következő utasítás címe

A kódmező x bit, a címek y bit-esek.
x + 4y bit / utasítás

Manapság:
Utasítás kódmező | Operandus cím

x + y bit / utasítás

### Az ISA szint

1. **Az utasítás felépítése**

	Utasítás kód | Operandus cím
		5 bit      |           11 bit

2^5 = 32 féle utasítás
2^11 = 2048 megcímezhető memória lokáció

2. **Utasítás-készlet**
- Adatmozgató (CPU <-> MEM, CPU <-> I/O)
- ALU műveletek (ADD, SUB, XOR, AND, SHL..)
- Elágazás képző utasítások
		- Feltételes/Feltétel nélküli ugrások
		- Függvényhívások


# Harvard CPU tervezés

1. Az utasítások felépítése: 18 bit/utasítás
				- Utasítás kód: (17/12): 5 bit -> 2^5 : 32 féle utasítás a készletben
				- Regiszter címek: $$\begin{rcases}SX(11:8)\\ SY(7:4)\end{rcases} \qquad \text{4 bit} \rightarrow \text{16 db. regiszter}$$
				- Konstans érték: 8 bit
				- Port ID: 8 bit (7:0) -> Periféria cím
				- AL kód ext: (3:0)
				- Adatmemória cóm (5:0) -> 6 bit: 64 elem az adatmemóriában
				- Ugrási cím (11:0) -> 12 bit -> 4K utasítás a program memóriában
				- int: interrupt enable

2. Az utasítás készlet meghatározása