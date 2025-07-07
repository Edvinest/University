## SELECT

**Önmagában**
```sql
SELECT * FROM <table_name>
```

**Feltétellel**
```sql
SELECT * FROM <table_name>
WHERE <condition>
```

## SQL kijelentések
### Adat Manipulációs Nyelv (DML)
INSERT, UPDATE, DELETE vagy MERGE utasításokkal kezdődik. Arra használjuk, hogy módosítsuk a táblázat sorait.

### Adat Definíciós Nyelv (DDL)
Megváltoztatja az adatbázis struktúráját. Hozzáad, módosít vagy töröl belőle.
CREATE, ALTER, DROP, RENAME és TRUNCATE a kulcsszavak.

### Tranzakció Vezérlő Nyelv (TCL)
Felügyeli a DML által végzett folyamatokat.
Kulcsszavai: COMMIT, ROLLBACK és SAVEPOINT.

### Adat Vezérlő Nyelv (DCL)
GRANT és REVOKE segítségével módosíthatjuk a hozzáférést.

## DESCRIBE
```sql
DESCRIBE <table_name>
```
A DESCRIBE segítségével megtudhatunk minden információt az adott táblázatról.

## CONCATENATION
```sql
string1 || string2 || string3
```
A || jellel kapcsolatban összeköthetünk oszlopokat.
ALIAS-okkel elnevezhetjük bárminek az eredményt.
Pl:
```sql
(string1 || string2 || string3) as Result
```
Zárójelek nélkül az eredményhez csatolódik a || jobboldalán lévő string.

## DISTINCT
A DISTINCT segítségével csak az egyedi sorokat iratjuk ki.
```sql
SELECT DISTINCT <column> FROM <table_name>
```

## WHERE
A WHERE kulcsszó segítségével megadhatunk egy feltételt és csak az annak megfelelő sorok kerülnek kiírásra.
### Összehasonlító operátorok:			
- = (egyenlő)
- > (nagyobb, mint)
- < (kisebb, mint)
- >= (nagyobb vagy egyenlő, mint)
- <= (kisebb vagy egyenlő, mint)
- <> (nem egyenlő, != vagy ^= is lehet)

**BETWEEN**
```sql
WHERE <column> BETWEEN <condition1> AND <condition2>
```

**IN**
Egy olyan összehasonlító operátor ami egy lista elemeihez hasonlítja az oszlopot
```sql
WHERE <column> IN (<condition1>, <condition2>)
```

**LIKE**
Az oszlop meg kell feleljen egy adott string feltételnek
```sql
WHERE <column> LIKE '<string>'
```
Regex karakterek amik használhatóak:
						- _ (egy karakternek felel meg)
						- % (0 vagy több karakternek felel meg)

ESCAPE segítségével az első találat után megállítható a program
```sql
WHERE <column> LIKE '\_R' ESCAPE '\'
```
A \ lesz az ESCAPE karakter, más is használható

## ORDER BY
Rendezhetjük oszlopok alapján növekvő(`asc`) vagy csökkenő (`desc`) sorrendben.

## Futtatási sorrend
1. FROM - megtalálja a táblát amivel dolgozunk
2. WHERE - korlátozza a sorokat
3. SELECT - kiválasztja a szükséges oszlopokat
4. ORDER BY - rendezi a sorokat