B)

I. Másolja át n darab regiszter tartalmát az --H címtől kezdődően, az --H címen kezdődő memóriaterületre, majd töltse fel az eredeti memóriahely (regiszterek) tartalmát --H értékkel. A művelet végét jelezze -- Hz-es négyszögjelek generálásával a vezérlő A portjának az m-es/as lábán. Rajzolja meg a műveletek folyamatábráját és írja meg a szükséges gépi kódú programot (MOVDAT), assembler nyelven. A vezérlő oszcillátora -- MHz-en működik.

```asm
CNT1 EQU --H

MOVDAT:
	MOVL A, --H
	MOV CNT1, A
	MOVL A, --H
	MOV FSR1, A
	MOVL A, --H
	MOV FSR2, A
MB1:
	MOV A, IND1
	MOV IND2, A
	INC FSR1
	INC FSR2
	DESCZ CNT1
	JMP MB1
MB2:
	MOVL A, --H
	MOV CNT1, A
	MOVL A, --H
	MOV FSR1, A
	MOVL A, --H
MB3:
	MOV IND1, A
	INC FSR1
	DECSZ CNT1
	JMP MB3
NEGYSZOGJEL:
	BS PORTA, m
	CALL WAIT--MS
	BC PORTA, m
	CALL WAIT--MS
	JMP NEGYSZOGJEL
```

II. 
a.1 Definiálja az A port --. bitjét soros adatbemenetnek (SDAT)
```asm
MOVL A, --H
MOV DIRA, A
```
a.2 Vételezzen a kialakított soros porton keresztül -- bitet és helyezze el a --H regiszterbe (DATA), a mellékelt folyamatábra szerint. Írja meg a szükséges gépi kódú szubrutint (SERDAT), assembler nyelven. Használja a --H című regisztert, mint számlálót (CNT1)
```asm
DATA EQU --H
CNT1 EQU --H

// innentől pedig próbálod követni az ábrát
```
a.3 Írja meg a -- ms késleltető szubrutint (WAIT--MS), felhasználva a --H című regisztert (CNT2)
```asm
SETCNT:
	MOVL A, --H // kiszámítod ezt az értéket az oszcillátor értéke alapján
	MOV CNT2, A	
WAIT--MS:
	NOP
	NOP
	NOP
	DECSZ CNT2
	JMP WAIT--MS
	RETURN
```

Hogyan számold ki azt az értéket:
I. Utasítás frekvenciája
$$
\frac{\text{-- MHz}}{4} = \text{** MHz}
$$

II. Utasítás ideje egy ciklusban
$$
\frac{1}{\text{** MHz}} = \text{-- } μs\quad \text{ vagy }\quad \text{--} \times 10^{3} ns
$$

III. T idő kiszámítása
$T = 2 + n(3+a)-1$ ahol $T = \frac{\text{rutinba megadott idő}}{-- μs}$

a.4 Rajzolja meg a soros adatvételező program idődiagramját (SCLK és SDAT szerint)
```ascii
_______         _______         _______         _______
SCLK ___|       |_______|       |_______|       |_______|       |_______
        ^               ^               ^               ^
        | Mintavétel    | Mintavétel    | Mintavétel    | Mintavétel
        | (Bit 0)       | (Bit 1)       | (Bit 2)       | (Bit 3)
     
         _______________                 _______________________
SDAT ___|     Bit 0     |_______________|  Bit 2    |   Bit 3   |_______
                        |     Bit 1     |
                        ^               ^
                        | Adatváltozás  | Adatváltozás
```

Ez minden esetben így néz ki

b) A SERDAT szubrutint felhasználva írjon egy gépi kódú programot assembler nyelven (SERIN), amely -- byte-ot vételez a soros porton keresztül, és elmenti az adatmemóriába a --H című byte-tal kezdődően
```asm
SERIN:
	MOVL A, bájtok száma
	MOV DATA, A
	
SERIN_LOOP:
	CALL SERDAT
	MOV --H, A // ez a fent megadott hexadecimális érték
	DECSZ DATA
	JMP SERIN_LOOP
	RETURN
```