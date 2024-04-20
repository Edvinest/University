## Jelgenerálás (álvéletlen/pszeudó-véletlen)

Csak periódikusan ismétlődő jelek generálására alkalmas a módszer.
4 bites bináris számláló (74LS163).

| (Master Reset) Clear | (Parallel Enable) load | CEP & CET, En P&T |
| -------------------- | ---------------------- | ----------------- |
| 0                    | X                      | X                 |
| 1                    | 0                      | 0                 |
| 1                    | 1                      | 0                 |
| 1                    | 1                      | 1                 |
Reset (R$_D$=R$_C$=R$_B$=R$_A$=0)
Load (Q$_D$=D, Q$_C$=C, Q$_B$=B, Q$_A$ = A)
Hold (Q$_D$, Q$_C$, Q$_B$, Q$_A$ nem változik)
Count (Q$_D$, Q$_C$, Q$_B$, Q$_A$)$_2$ ++