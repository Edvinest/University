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

