## 1. Alapfogalmak
**Hordozhatóság** - újrakompilálható anélkül, hogy módosítanánk a forráskódot, a hardware specifikus programok általában nem hordozhatóak

C++ vs Java:
- Java: platform független (ameddig a platformra telepíthető JVM), standardizált bytecode, a kód ugyanúgy fut minden platformon, beépített könyvtárak, könnyen átírható más platfomra

- C++: platform függő, nincs standardizált objektum kód, compilertől függő viselkedés, kevés beépített könyvtár, nehezebb átírni más platformra

**Program készítésének lépései**:
- Forráskód (source code) - szövegszerkesztőben megírt kód ami el van mentve
- Tárgykód (object code) - gépi kódba átfordított forráskód
- Végrehajtható kód (executable code) - összeköti a tárgykódot más kódokkal (könyvtárakkal)

**Preprocessor, compiler, linker**
- Preprocessor:
		Preprocessor utasítások a `#`-gel ellátott sorok. Kompilálás előtt a meghívott osztály/könyvtár/fejléc függvényei, vagy makrók, kicserélődnek a már meghatározott kódra.
- Compiler:
		Átfordítja a kódunkat gépi kódra, amelyet egyből a számítógép processzora futtat
- Linker:
		Összeköti az objektumkódokat a szükséges könyvtárakkal és egy darab futtatható fált hoz létre

**Range-based for loop**
```cpp
int elements[] {1,2,3,4}

for(auto &e : elements){
	cout << e << endl;
}
```

Az iterátor felveszi a tároló elemeinek értékét.

#### Stack és Heap
- Compile Time Array
```cpp
int ctarray [3]; //allocated on stack 
```
- Run Time Array
```cpp
int * rtarray = new int[3]; // allocated on heap
```

#### Referencia típus, konstans referencia
- Referencia
	- Más elnevezés egy változóra
	- Muszáj inicializálni a referenciát
	- Amikor létrehozunk egy referenciát az kötődik a változóhoz
```cpp
int i = 10;
int &ri = i; // ha változtatjuk az i értékét (pl inkrementálás) a referencia is változik, ez fordítva is igaz

int &ri1; // ez hibát ad vissza
```
Ha hivatkozunk a referenciára nem kell az `&` jel
- Konstans referencia
	- Nem tudja módosítani az eredeti változót
	- Inkább összehasonlításhoz szokták használni őket

#### A `const` módosító
A változó értéke nem változtatható ha betesszük elé a módosítót. Ha megpróbáljuk, kompilálási hibát kapunk.

## 2. OOP
### Osztályok és objektumok
#### Osztály - class, deklaráció (.h) + definíció (.cpp)
- Osztályok típusa:
	- Polymorphic - bővítésre tervezett (pl. Shape, exception..)
	- Érték osztályok - értékek tárolására (pl. int..)
	- RAII (Resource Acquisition Is Initialization) - eltárolunk egy erőforrást az osztályban (pl. thread, unique_ptr..)
#### Objektum - Instance
- Objektum (instance): az osztály példányosított változata
- Egy objektumnak vannak:
	- Tulajdonságai (pl. firstname, lastname)
	- Viselkedései (pl. fire(), display(), get és set)
#### Konstruktor - constructor, taginicializáló lista; default constructor
- Konstruktor: ő felel az osztály kezdeti állapotáért
	- inicializálja az adattagokat minden egyes objektum létrehozásánál
	- ugyanaz a neve, mint az osztálynak
	- több konstruktort is létrehozhatunk (function overloading)
	- nem lehetnek konstansok
- Taginicializáló lista:
```cpp
Employee :: Employee() : mID(-1),mFirstName(""), ... {}
```
Csak az konstruktorok használhatják
- Default Constructor: ha nincs az osztályban konstruktor a kompilátor létrehoz egy alapértelmezettet, melynek nincsenek argumentumai
```cpp
class X{
	int i = 4;
	int j {5};
	
public:
	X(int a) : i{a} {} // i = a, j = 5
	X() = default; // i = 4, j = 5, explicit default konstruktor
};
```
#### Destruktor - destructor
- Minden osztálynak csak 1 destruktora van
- Ha nem hozunk létre egyet, a kompilátor megteszi helyettünk
- Felszabadítja az objektum által használt memóriát
- Szintaxis: T :: ~T();
#### Konstans tagfüggvények - constant member function
- Nem változtathatja meg az objektum állapotát
#### Objektum életciklusa - object’s lifecycle
- Az objektum addig "él" ameddig meg nem hívjuk a destruktort/nem töröljük az objektumot/nem ér véget a main függvény
#### Objektumok létrehozása másolással: copy és move konstruktorok
- Copy constructor:
	- ha nem hozunk létre egyet a kompilátor megteszi helyettünk
	- akkor használjuk ha másolatot akarunk készíteni egy osztályból
Példa:
```cpp
Stack::Stack( const Stack& s ){
	mCapacity = s.mCapacity;
	mElements = new double[ mCapacity ];
	int nr = s.mTop - s.mElements;

	for( int i=0; i<nr; ++i ){
		mElements[ i ] = s.mElements[ i ];
	}

	mTop = mElements + nr;
}
```
- Move constructor:
	- sekély másolatot készítünk az objektumunkból
	- töröljük az eredeti példányt a másolás után
Példa:
```cpp
string :: string(string&& that){
	this->data = that.data;
	that.data = nullptr;
}
```
### Haladó fogalmak
#### Inline függvények: előnyök és hátrányok
- Előnyök: sebesség
- Hátrányok: code bloat (felfújt kód?)
- Programok felgyorsítására használjuk (mint a macro-kat)
#### Objektumtömb vs pointertömb
- Objektumtömb:
	- objektumok vannak eltárolva
	- fix méret és típus
	- a hozzáadás automatikusan van kezelve
	- gyorsabb
- Pointertömb:
	- pointereket tárol az objektumok helyett
	- polimorfikus
	- manuálisan kell hozzáadni és törölni (`new` és `delete`)
	- lassabb (mivel még át kell fordítani a pointert)
#### Statikus tagok: adat és függvény. Statikus adattagok inicializálása
- Ha egy függvény nem fér hozzá az osztály adataihoz, csak akkor lehet `static`
- Nem lehetne `const` függvények
- Statikus adattagokat csak az osztályon kívül tudunk inicializálni
#### Paraméterek átadása: érték-, referencia- és konstans referencia szerint
- Érték szerint:
	- Csak a változó másolatával dolgozik
- Referencia szerint:
	- Az eredeti változóval dolgozik, meg tudja változtatni az értékét
- Konstans referencia szerint:
	- Az eredeti változóval dolgozik, nem tudja megváltoztatni az értékét
#### Barát (friend) függvények és osztályok
- Függvényként:
	- Különálló az osztálytól amelyikben létrehoztuk
- Osztályként:
	- Hozzáfér a kapcsolódó osztály privát adattagjaihoz
#### Egyszeresen láncolt lista

#### Balérték (Lvalue) és jobbérték (Rvalue)
- Balérték:
	- Többször újrahasználható elemek a kódban (elnevezett objektumok)
	- (Ha jól értem, az egyenlőség bal oldalán lévő változónév)
- Jobbérték:
	- Egy olyan objektum ami csak egy adott pillanatban érhető el
	- (Itt pedig a változó értéke)
#### Operátorok túlterhelése
#### Inserter és extractor operátorok
```cpp
ostream& operator<<( ostream& os, const T& out) // inserter
istream& operator>>( istream& is, T& in) // extractor
```
#### Értékadó operátorok: copy és move assignments
```cpp
Stack& Stack::operator=(const Stack& rhs) // copy assignment
Stack& Stack::operator=(Stack&& rhs) // move assignment
```
#### Relációs operátorok
- Keresésre és rendezésre használják
```cpp
bool operator ==( const Point& p1, const Point& p2){
	return p1.getX() == p2.getX() && p1.getY() == p2.getY();
}

bool operator <( const Point& p1, const Point& p2){
	return p1.distance(Point(0,0)) < p2.distance(Point(0,0));
}
```
#### Függvényhívás operátor (függvényobjektum)
- Az osztályok példányai amik túltöltik ezt az operátort függvényként is működnek
```cpp
class CompareStrings {
	static int counter;
public:
	bool operator()(const string &s1, const string &s2) {
		++counter;
		return s1 < s2;
	}

	static int getCounter() {
		return counter;
	}
};
```
- Ha rendezel, meghívod az osztályt függvényként `CompareStrings()`
#### Lambdák
```cpp
auto strComp = [] (string x, string y){ return x > y; }
```
- [] külső változókat adunk meg
- () paramétereket meghíváshoz
- {} a függvény definíciója
### Származtatás és polimorfizmus
#### Publikus származtatás - bővítő kapcsolat (is-a)
- Származtatás: Először az ősosztály konstruktora hívódik
#### Tagok láthatósága (private, public, protected)
- Private: csak az osztályunk, a getter és setter fér hozzá a változóhoz
- Public: bárhonnan hozzáférünk a változóhoz, még az osztályon kívül is
- Protected: csak az öröklő osztály látja
### Osztályok közötti kapcsolatok
## 3. Generikus programozás
### Sablonok
## STL
#### Algoritmusok: sort, find, find_if,
- sort
```cpp
#include <algorithm>
...
vector<string> fruits;
...
sort(fruits.begin(),fruits.end());

//vagy ha valami attribútum alapján kell
sort(fruits.begin(), fruits.end(), cmp_by_whatev());
```
- find
```cpp
template<class InIt, class T>
InIt find( InIt first, InIt last, T what){
	for( ; first != last; ++first ){
		if( *first == what ){
			return first;
		}
	}
	return first;
}
```
- find_if
```cpp
bool isEven (int i) { return ((i%2)==0); }

int main () {
	vector<int> myvector={1,2,3,4,5};
	auto it= find_if (myvector.begin(), myvector.end(), isEven);
	cout << "The first even value is " << *it << '\n';

	return 0;
}
```
#### Konténerek: vector, deque,list, set, map, unordered_set, unordered_map. Alapvető műveletek (beszúrás, törlés, keresés komplexitása)

| **Konténer**        | **Beszúrás**                           | **Törlés**                             | **Keresés**                        |
| ------------------- | -------------------------------------- | -------------------------------------- | ---------------------------------- |
| **`vector`**        | O(1) (vége), O(n) (elején/közepén)     | O(1) (vége), O(n) (máshol)             | O(n)                               |
| **`deque`**         | O(1) (elején és végén), O(n) (középen) | O(1) (elején és végén), O(n) (középen) | O(n)                               |
| **`list`**          | O(1) (bárhol, ha van iterátor)         | O(1) (bárhol, ha van iterátor)         | O(n)                               |
| **`set`**           | O(log n)                               | O(log n)                               | O(log n)                           |
| **`map`**           | O(log n)                               | O(log n)                               | O(log n)                           |
| **`unordered_set`** | O(1) átlagosan, O(n) rossz esetben     | O(1) átlagosan, O(n) rossz esetben     | O(1) átlagosan, O(n) rossz esetben |
| **`unordered_map`** | O(1) átlagosan, O(n) rossz esetben     | O(1) átlagosan, O(n) rossz esetben     | O(1) átlagosan, O(n) rossz esetben |
##### Megjegyzések:
- **`vector`** gyors, ha a végére illesztünk, de lassú, ha középre.
- **`deque`** mindkét végére gyors, középen lassabb.
- **`list`** esetén az iterátorokkal gyors műveletek, de lineáris keresés.
- **`set`** és **`map`** rendezett, így logaritmikus idővel dolgozik.
- **`unordered_set`** és **`unordered_map`** hash-alapú, így gyors, ha a hash eloszlás jó.

Ha gyors keresés és beszúrás kell **sorrend nélkül**, akkor **`unordered_*`** konténereket érdemes használni. Ha **rendezett** kell, akkor **`set`** vagy **`map`** a megfelelő.
### Iterátorok
- Egy adatstruktúra elemein történő iterálásra szolgálnak, végigjárhatjuk vele
#### map: insert vs [ ] operátor

| Művelet         | `map::insert`  | `operator[]` |
|----------------|---------------|-------------|
| **Használat** | `myMap.insert({key, value})` | `myMap[key] = value` |
| **Beszúrás** | Csak akkor ad hozzá elemet, ha a kulcs még nem létezik | Ha a kulcs nem létezik, létrehoz egy alapértelmezett értéket |
| **Módosítás** | Ha a kulcs létezik, NEM módosítja az értéket | Ha a kulcs létezik, felülírja az értéket |
| **Visszatérési érték** | `pair<iterator, bool>` (bool jelzi, hogy történt-e beszúrás) | Referencia az értékre |
| **Hatékonyság** | O(log n) | O(log n) |
| **Alapértelmezett inicializáció** | Nem hoz létre új elemet, ha nem létezik | Ha a kulcs nem létezik, egy default-értéket hoz létre |
##### **Mikor melyiket használjuk?** 
- **`insert`**, ha csak akkor akarunk beszúrni egy új kulcs-érték párt, ha az még nem létezik.
- **`operator[]`**, ha biztosak vagyunk benne, hogy az elem létezik, vagy ha nem gond az alapértelmezett érték létrehozása.
## 4. Tervezési minták és princípiumok
### Design Principles - SOLID:
### Design Patterns: