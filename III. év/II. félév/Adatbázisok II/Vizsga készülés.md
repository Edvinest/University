## MongoDB

1. Mi az a "Replica set" MongoDB-ben?
   Olyan adatbázis-szervercsoport (mongodb példányok), amelyek ugyanazt az adathalmazt tartják karban és szinkronizálják egymást közt. Bizonsági másolatként és magas elérhetősége miatt használják, ha egy szerver meghibásodna az adatok ugyanúgy elérhetőek.
2. Mi a primary key és miből áll (MongoDB)
   A primary key egy egyedi kulcs minden dokumentumban. `_id` néven található meg, alapból indexelt. Ha nem mi adunk neki értéket akkor egy ObjectID struktúra jön létre, aminek az első 4 bájtja az időbélyeg, a következő 5 bájt egy random érték és az utolsó 3 egy ikrementális számláló, ami minden létrehozott dokumentumnál növekedik.
3. Sorold fel a MongoDB előnyeit!
   Rugalmas: A gyűjteményekben található dokumentumok szerkezete nem kell megegyezzen, nem kell visszamenőleg mezőket megadni a dokumentumoknak ha bővítünk
   Skálázható: az adatokat szét tudjuk öszteni több szerver között, ezzel növelve a sebességet és elérhetőséget (sharding)
   Gyorsaság: ha akármelyik mezőt indexeljük már azzal is gyorsabbá válnak a lekérdezések
   Multi-platform
   Komplex adattípusok támogatása: egy dokumentumon belül létrehozhatunk egy komplex mezőt több információ tárolására
4. Milyen adatstruktúrát használ a MongoDB index?
   Bináris fa
5. Add meg a beszúrás szintaxisát MongoDB-ben.
   db.collection.insertOne({dokumentum}) vagy db.collection.insertMany({dokumentum1}, {dokumentum2})
6. Mi a BSON?
   Binary Javascript Object Notation, a JSON-nal ellentétben precízebb adattípusokat támogat viszont emberi szemmel kevésbé olvasható. Az adatokat binárisan tároljuk el, ezzel felgyorsítva a kezelésüket és csökkentve a fájl méretet.
7. Mi a Sharding?
   Az adatokat feldaraboljuk és több szerveren tároljuk. Nagy mennyiségű adat esetén ez növeli a hozzáférést és kezelhetőbbé teszi a nagy forgalmat
8. Feladatmegoldás
   ```mongodb
   [
	   {
		   "Id": 100,
		   "Name": "John",
		   "TransactionId": "tran1",
		   "Transaction":[
			   {
				   "itemId": "a100",
				   "price": 200,
				},
				{
					"itemId": "a110",
					"price": 200
				}
		   ]
		   "Subscriber": true,
		   "Payment":{
			   "Type": "Credit-Card".
			   "Total": 400,
			   "Success": true
		   },
		   "Note" : "1st complete record"
	   },
	   	{
		   "Id": 100,
		   "Name": "Tom",
		   "TransactionId": "tran2",
		   "Transaction":[
			   {
				   "itemId": "a100",
				   "price": 200,
				},
				{
					"itemId": "a110",
					"price": 200
				}
		   ]
		   "Subscriber": true,
		   "Payment":{
			   "Type": "Debit-Card".
			   "Total": 400,
			   "Success": true
		   },
		   "Note" : null
	   },
   ]
   ```
   
   a) Írj MongoDB lekérdezést, amelyben kiírod azokat a rekordokat, ahol a Name Tom
   `db.Transactions.find({"Name":"Tom"})`
   b) Írj MongoDB lekérdezést, amelyben kiírod azokat a rekordokat ahol, a Total Payment 400
   `db.Transcations.find({"Payment.Total":400}`
   c) Írj MongoDB lekérdezést, amelyben kiírod a Total Payment-ek összértékét az összes rekordokra.
   ```
   db.Transactions.aggregate([
	   {
		   $group: {
			   _id: null,
			   "allTotalPayment": {$sum: "$Payment.Total"}
		   }
	   }
   ])
   ```

### MongoDB aggregate
```mongo
db.collection.aggregate([
{$stage1 : ...},
{$stage2 : ...},
{$stage3 : ...}
])
```

Csővezeték mechanizmus, hasonló a bash-ben használt csővezetékhez. Az eredményeket átadjuk az egyik csőből a másikba.
#### Gyakori stage-ek
`$match` - hasonló a find-hoz, érdemesebb minél hamarabb használni az aggregációban
`$group` - dokumentumok csoportísá valami alapján + számításokat végezhetünk ($sum, $avg, $min, $max, $push..)
`$project` - átformázza a dokumentumot/megváltoztathatjuk a kimenetet
`$sort` - 1 ASC, -1 DESC
`$limit/skip` - az előbbi csak az első N dokumentumot tartja meg, az utóbbi eldobja az első N dokumentumot
`$lookup` - left outer join egy másik gyűjteménnyel
`$unwind` - tömbök szétszedése
## Relációs/PLSQL
1. Mire használjuk a triggereket?
   A triggerek olyan utasítások melyek az adatbázis módosítása előtt vagy után futnak le. Használhatjuk az adatok helyességének ellenőrzésére, mezők automatikus feltöltésére, táblák frissítésére vagy akár naplózásra.
2. Írhatunk-e commit-ot triggerbe? Miért?
   Nem, mivel megsértené az atomiság elvét azzal, hogy elveszi az irányítást a főprogramtól. Autonóm triggerek esetén viszont használható 
3. Tárolt eljárások előnyei?
   Gyorsaság: hamarabb lefut, mint egy szimpla lekérés. Egy lekérést minden futtatásnál értelmeznie kell az adatbázis kezelőnek (jogok, szintaxis etc), míg tárolt eljárásnál csak a létrehozás idejekor. 
   Újrafelhasználhatóság
4. Magyarázd el az autonomous transaction fogalmát.
   Egy fő tranzakción belül induló független, önálló tranzakció, melynek van saját commit és rollback része. Általában naplózásra használjuk
5. Írj tárolt eljárást, amely megnézi, hogy aktuálisan bejelentkezett felhasználónak hány táblája van. Ha több van, mint 15, akkor kiírja, hogy SOK, ellenkező esetben kiírja, hogy KEVÉS.
   ```sql
   CREATE OR REPLACE PROCEDURE ellenoriz_tabla_szam AS 
   v_tabla_count NUMBER; 
   
   BEGIN 
	   SELECT COUNT(*) INTO v_tabla_count FROM user_tables; 
		IF v_tabla_count > 15 THEN 
			DBMS_OUTPUT.PUT_LINE('SOK'); 
		ELSE 
			DBMS_OUTPUT.PUT_LINE('KEVÉS'); 
		END IF; 
	END; 
	/
   ```


### Tárolt eljárás felépítése
```SQL
CREATE OR REPLACE PROCEDURE procedure_name ( 
	-- Parameter declarations go here 
	param_name IN DATA_TYPE, 
	param_name OUT DATA_TYPE, 
	param_name IN OUT DATA_TYPE ) 
IS 

-- Section for local variable declarations 
my_variable NUMBER; 
my_text VARCHAR2(100);
my_variable_with_default_value NUMBER := 0;

BEGIN 
-- Executable statements (Logic) 
-- e.g., SELECT, INSERT, UPDATE, DELETE, IF/THEN, loops 

EXCEPTION 
-- Optional: Error handling block 
	WHEN OTHERS THEN 
	-- Handle errors here (e.g., log error, rollback) 
	NULL; -- Or raise_application_error(...); 
END procedure_name; 
/
```

Futtatása:
```SQL
DECLARE 
	v_name VARCHAR2(100); 
	v_sal NUMBER; 
BEGIN 
	-- Call the procedure passing the IN value and placeholders for OUT values
	get_employee_info(p_emp_id => 101, p_full_name => v_name, p_salary => v_sal);
	-- The arrow notation (=>) is not necessary, but recommended

	-- Use the returned OUT values 
	DBMS_OUTPUT.PUT_LINE('Name: ' || v_name); 
	DBMS_OUTPUT.PUT_LINE('Salary: ' || v_sal); 
END; /`
```