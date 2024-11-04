## String típusok:

**String** - nem lehet változtatni az értékét, a string-ek a SCP-ben vannak tárolva, míg a string objektumok a Heap-ben és módosíthatóak
```
String strLiteral = "Hello World!";
String strObject = new String("Hello World!");
```
(String Constant Pool - string-ek tárolásáért felelős)

**StringBuffer** - több magon futtatható és változtatható az értéke
```
public static String concatenateStringBuffer(int n){
StringBuffer result = new StringBuffer();
for (int i = 0; i < n ; i++) {
	result.append('a');
}

return result.toString();
}
```

**StringBuilder** - nem futtatható több magon és változtatható az értéke
```
public static String concatenateStringBuilder(int n){
StringBuilder result = new StringBuilder();
for (int i = 0; i < n ; i++) {
	result.append('a');
}

return result.toString();
}
```

## Tömbök

`int t1[], t2` - int típusú tömb és egy primitív deklarációja
`int [] t1, t2` - két int típusú tömb deklaráció

Tömb elemek iterálása: `for (típus név : tömbNeveAminVégigAkarunkMenni)`, főként kiíratáshoz hasznos

## Listák

`ArrayList<típus> változónév = new ArrayList<típus>()` dinamikus méretű tömb