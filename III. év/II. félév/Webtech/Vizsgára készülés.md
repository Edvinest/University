# Első tétel
----
## 1. A. CSS Doboz Modell Felépítése

A CSS doboz modell (Box Model) négy fő részből áll:

```
┌─────────────────────────────────────────┐
│              MARGIN (Külső hézag)       │
│  ┌───────────────────────────────────┐  │
│  │         BORDER (Szegély)          │  │
│  │  ┌─────────────────────────────┐  │  │
│  │  │      PADDING (Belső hézag)  │  │  │
│  │  │  ┌───────────────────────┐  │  │  │
│  │  │  │    CONTENT (Tartalom) │  │  │  │
│  │  │  └───────────────────────┘  │  │  │
│  │  └─────────────────────────────┘  │  │
│  └───────────────────────────────────┘  │
└─────────────────────────────────────────┘
```

**Elemek:**

- **Content**: Az elem tényleges tartalmának mérete
- **Padding**: A tartalom és a szegély közötti belső tér
- **Border**: Az elem kerete, a padding körül
- **Margin**: Az elem külső tér, más elemektől való távolság

### 1.B. CSS Outline Szerepe

Az `outline` tulajdonság nem része a standard dobozmodell méretének. Ez egy vonal az `border` felett, amely:

- Nem veszi figyelembe a doboz méretét (`margin`, `padding`, `border` után kerül megjelenítésre)
- Általában fókuszáláshoz használják (pl. `:focus` állapotban)
- Transzparens lehet, de nem befolyásolja az elrendezést

---

## 2. Console.log() Eredmények

| Kifejezés                           | Kimenet    | Magyarázat                                             |
| ----------------------------------- | ---------- | ------------------------------------------------------ |
| a. `console.log(x-"1")`             | `0`        | `true` → 1, `"1"` → 1, így `1-1=0`                     |
| b. `console.log(typeof(5+"5"))`     | `"string"` | `5+"5"="55"` (string concatenation), typeof egy string |
| c. `console.log(false === null)`    | `false`    | Strict comparison: `false` ≠ `null`                    |
| d. `console.log((typeof 3).at(-1))` | `"r"`      | `typeof 3="number"`, utolsó karakter "r"               |
| e. `console.log((null ?? "")        |            | 13)`                                                   |

---

## 3. Értékek és Típusok

| Kifejezés                  | Érték   | Típus   | Magyarázat                                        |
| -------------------------- | ------- | ------- | ------------------------------------------------- |
| a. `undefined == null`     | `true`  | Boolean | `==` operátor specialitás: ezek egyenlők          |
| b. `(0 ?? 3) && 6`         | `0`     | Number  | `0 ?? 3=0`, `0 && 6=0` (az első hamis érték)      |
| c. `Number("3") + 3 + "3"` | `"63"`  | String  | `3+3=6`, majd `6+"3"="63"` (string concat)        |
| d. `9 < "10"`              | `true`  | Boolean | String számmá konvertálódik: `9 < 10`             |
| e. `o1 == o2`              | `false` | Boolean | Objektumok referencia-típusúak, külön referenciák |

---

## 4. Tömb Műveletek

Kiindulás: `let a = [1,2,3,4,5,6]`  
`let b = a.reverse().slice(0)` → `a=[6,5,4,3,2,1]`, `b=[6,5,4,3,2,1]`

| Kifejezés                                | Kimenet                 | Magyarázat                                                   |
| ---------------------------------------- | ----------------------- | ------------------------------------------------------------ |
| a. `a.map(x=>x*2).join('').slice(3)`     | `"08642"`               | `[12,10,8,6,4,2]` → `"12108642"` → slice(3)="08642"          |
| b. `b.slice(1,4).reduce((acc,x)=>acc+x)` | `12`                    | `[5,4,3].reduce()` → 5+4+3=12                                |
| c. `a.findIndex(x=>x/2==2)*2`            | `4`                     | `x=4` esetén igaz, index=2, így `2*2=4`                      |
| d. `b.splice(2,2,...a); console.log(b)`  | `[6,5,1,2,3,4,5,6,2,1]` | Index 2-től 2 elem eltávolítás, `a` elemeibe behelyettesítve |

---

## 5. HTML Elemek Keresése Böngésző API-ban

A böngészők több alapértelmezett módszert kínálnak elemek keresésére:

|Metódus|Leírás|
|---|---|
|`getElementById(id)`|Egyedi ID alapján egyetlen elemet keres|
|`getElementsByClassName(name)`|Osztálynevek alapján tömböt ad vissza|
|`getElementsByTagName(tag)`|Címke alapján elemeket keres (pl. div, p)|
|`querySelector(selector)`|CSS szelektorral egyetlen elemet (első találat)|
|`querySelectorAll(selector)`|CSS szelektorral NodeCollection-t ad vissza|
|`closest(selector)`|Közelítő elemet keres a parent hierarchiában|

---

## 6.A. Delegálás (Event Delegation)

**Meghatározás**: Az eseménydelegálás során nem minden egyes elemhez adunk hozzá eseményhallgatót, hanem a közös **szülő elemhez**. Az eseményeket a bubbling mechanizmus miatt a szülő elem fogja el, ahol a `event.target` segítségével meghatározzuk, melyik gyermek elemből eredt az esemény.

**Előnyök:**

- Kevesebb memória fogyasztás
- Dinamikus elemek kezelése is működik
- Teljesítmény-optimalizált

### 6.B. Példa Kóddal

```
// Rossz megközelítés (minden gombhoz hallgató) document.querySelectorAll('.btn').forEach(btn => {   btn.addEventListener('click', handleClick); }); 

// Jó megközelítés (delegálás szülőségen) document.querySelector('#buttonContainer').addEventListener('click', (event) => {   if (event.target.classList.contains('btn')) {    console.log('Gomb kattintva:', event.target.textContent);  } });`
```
---

## 7. HTTP/1.1 Protokoll

**Meghatározás**: A HTTP/1.1 (RFC 7230-7235) az alkalmazási rétegbeli protokoll, amelyet elsősorban webes dokumentumok átviteléhez használnak a kliens és a szerver között.

**Kérés felépítése:**

```
GET /index.html HTTP/1.1
Host: www.example.com
User-Agent: Mozilla/5.0
Accept: text/html
Connection: keep-alive
```

**Válasz felépítése:**

```
HTTP/1.1 200 OK
Date: Mon, 22 Jun 2026 10:00:00 GMT
Server: Apache/2.4
Content-Type: text/html; charset=UTF-8
Content-Length: 1234

[body tartalma...]
```

**Jellemzők:**

- Connection Keep-Alive támogatás
- Persistent connections
- Content Negotiation
- Chunked transfer encoding

---

## 8.A. HTTP Fejléc

**Meghatározás**: Az HTTP fejlécek kulcs-érték párok formájában adják át az információkat a kliens és szerver között minden kérésben és válaszban.

**Funkciók:**

- Meta-információk szállítása (tartalomtípus, hossz, kódolása)
- Autentikáció adatok
- Cookie-k kezelése
- Cache vezérlés
- Tartalomnegociáció

**Példák:**

|Fejléc|Példa Érték|Funkció|
|---|---|---|
|Host|`www.example.com`|Cél szervert határozza meg|
|User-Agent|`Mozilla/5.0...`|Kliens böngésző információ|
|Content-Type|`text/html`|Válasz tartalmának MIME típusa|
|Authorization|`Bearer xyz123`|Hitelesítési adatok|
|Set-Cookie|`session=abc`|Süti beállítása|
|Cache-Control|`no-cache`|Cache viselkedés|

### 8.B. HTTP státusz kódok

**Meghatározás**: Háromjegyű számok, amelyek jelzik a kérés végrehajtásának eredményét.

**Kategóriák:**

|Kategória|Kódok|Jelentés|
|---|---|---|
|1xx|100-199|Információs (Részleges sikerek)|
|2xx|200-299|Sikeres (OK, Created, No Content)|
|3xx|300-399|Átirányítás (Moved Permanently, Found)|
|4xx|400-499|Kliens hiba (Bad Request, Not Found, Forbidden)|
|5xx|500-599|Szerver hiba (Internal Server Error, Gateway Timeout)|

**Gyakori példák:**

- `200 OK`: Sikeres kérés
- `301 Moved Permanently`: URL átirányítás
- `404 Not Found`: Erőforrás nem található
- `500 Internal Server Error`: Szerver hiba

---

## 9.A. Promise Nyelvi Szerkezet

**Meghatározás**: A Promise (ígéret) egy JavaScript nyelvi konstrukció, amely aszinkron műveletek kezelésére szolgál. Olyan objektumot reprezentál, amelynek még nincs értéke, de a jövőben lesz (sikeres vagy sikertelen végrehajtás).

**Három állapot:**

1. **Pending**: Függesztve, folyamatban
2. **Fulfilled**: Teljesült (sikeres `resolve`)
3. **Rejected**: Elutasítva (hibás `reject`)

**Alapvető használat:**

`promise.then(successCallback).catch(errorCallback);`

---

## 9.B. Kódelemzés Soronként

`const promise = new Promise((resolve, reject) => {`

→ Új Promise objektum létrehozása. A callback függvény kapja a `resolve` és `reject` metódusokat.

`const x = Math.random();`

→ Véletlen szám generálása [0, 1) intervallumban.

`if (x < 0.5) {`

→ Ellenőrzi, hogy a véletlen szám kisebb-e 0.5-nél (50% esély).

`resolve(x.toFixed(1));`

→ Ha feltétel teljesül: a Promise sikeres (`fulfilled`) lesz. Az érték `x` kerekített változata (1 tizedesjegyre).

`} else {`

→ Ha `x >= 0.5`: a `else` ág fut.

`reject(new Error("hiba"));`

→ A Promise sikertelen (`rejected`) lesz. Hibaobjektummal, "hiba" üzenettel.

`}`

→ Else ág lezárása.

`});`

→ Promise factory függvény és a Promise létrehozás lezárása.

---

## 9.C. Kód Folytatása

```
const promise = new Promise((resolve, reject) => {   
	const x = Math.random();  
	if (x < 0.5) {    
		resolve(x.toFixed(1));  
		} 
	else {    
		reject(new Error("hiba"));  
	} 
}); 

// async/await megközelítés 
async function handlePromise() {   
	try {    
		const result = await promise;    
		console.log('Siker:', result);  
		} 
	catch (error) {    
		console.error('Hiba:', error.message);  
		} 
	} 
	
// Vagy hagyományos .then/.catch láncolás 
promise   
	.then(result => console.log('Siker:', result))  
	.catch(error => console.error('Hiba:', error.message)); 
	
handlePromise(); // Függvény meghívása
```

**Magyarázat:**

- `try/catch` blokkban `await promise` várja az ígéret eredményét
- Ha `resolve` történik: a `result` változóba kerül az érték
- Ha `reject` történik: a `catch` blokk fut le, az `error` objektum a hibaüzenetet tartalmazza
# 10. CSS Specifikusság és Színkísérlet Megoldása

## 10.A. CSS Szelektor Specifikusság (Súly)

**Definíció:** A specifikusság (vagy súly) egy algoritmus, amelyet a böngésző használ annak meghatározására, hogy több szabály is vonatkozik-e ugyanarra az elemre, melyik szigorúbban alkalmazandó. Minél "specifikusabb" (konkrétabb) egy szelektor, annál nagyobb súlya van, és ezért felülírja a kevésbé specifikus szabályokat.

**A számítási formula:** A specifikusságot egy négyjegyű számként kezeljük `(a, b, c, d)`, ahol:

- **a**: Inline stílusok (`style="..."`) → +1, ha van.
- **b**: ID szelektorok (`#id`) száma.
- **c**: Osztályszelektorok (`class`), attribútumszelektorok (`[type="text"]`) és pszeudo-osztályok (`:hover`) száma.
- **d**: Címke (element) szelektorok (`div`, `p`) és pszeudo-elemek (`::before`) száma.

_(Megjegyzés: A `*`, kombinatorok (`>`, `+`, `~`) nem növelik a súlyt)._

**Összehasonlítás szabályai:**

1. Jobbról balra hasonlítjuk össze a számokat (`d`, `c`, `b`, `a`).
2. Az első különböző értéknél a nagyobb szám győz.
3. Ha a súlyok megegyeznek, a **legutoljára definiált** szabály érvényesül (a forráskód sorrendje).

**Példa súlyokra:**

- `inline style`: **(1, 0, 0, 0)** – A legmagasabb prioritás.
- `#header .nav`: **(0, 1, 1, 0)**
- `div p`: **(0, 0, 0, 2)**
- `.foo`: **(0, 0, 1, 0)**

---

## 10.B. Színmeghatározás Elemzése

### A HTML struktúra és a vonatkozó szabályok

```
<style> 
/* Szabályok specifikussága */ 
#elso #para { color: red; }      /* Súly: (0, 2, 0, 0) -> 200 pontos (ID + ID) */ span { color: green; }           /* Súly: (0, 0, 0, 1) -> 1 pont */ #para .kis { color: gray; }      /* Súly: (0, 1, 1, 0) -> 110 pontos (ID + osztály) */ i { color: orange; }             /* Súly: (0, 0, 0, 1) -> 1 pont */ 
#elso p { color: yellow; }       /* Súly: (0, 1, 0, 1) -> 110 pontos (ID + címke) */ #elso, i { color: blue; }        /* Súly: (0, 1, 0, 0) -> 100 pontos (ID vagy címkék) - LEGALÁBBI SÚLY EZEK KÖZÜL */ 
</style> 

<body> 
	<div id="elso">   
		<p id="para"><span class="kis">alma</span></p>  
		<p class="szines"><i>szilva</i></p>  
		<p><i>cseresznye</i></p> 
	</div> 
</body>
```
### Részletes elemzés szó szerint:

1. "alma" szó (`<span>`)

**Elem típusa**: `<span class="kis">`    
**Szülői lánc**: `<p id="para">` <- `<div id="elso">`

**Vonatkozó szabályok**:
    
    1. `span { color: green }` → Súly: `(0, 0, 0, 1)` = **1**
    2. `#para .kis { color: gray }` → Súly: `(0, 1, 1, 0)` = **110** (Mivel a szülő `#para` és az elem saját osztálya `.kis` is teljesül).
    3. `#elso #para` (nem közvetlenül ez az elem, de a `color` öröklődhetne, ha semmi más nem lenne, de itt explicit szabály van).
**Győztes**: A `#para .kis` szabály a legsúlyosabb (110 > 1).

**Szín**: **Gray (Szürke)**.    

### 2. "szilva" szó (`<i>`)

- **Elem típusa**: `<i>` (a `<p class="szines">` belül)
    
- **Szülői lánc**: `<p class="szines">` <- `<div id="elso">` (nincs ID a p-n)
    
- **Vonatkozó szabályok**:
    
    1. `i { color: orange }` → Súly: `(0, 0, 0, 1)` = **1**.
    2. `#elso, i { color: blue }` → Ez két szelektor.
        - `#elso`: Nem vonatkozik erre az elemre (ID hiányzik).
        - `i`: Igen, ez egyenlő. Súly: `(0, 0, 0, 1)` = **1**.
    3. Egyéb szabályok (`#elso p`, `#elso #para`): Ezek magasabbak, de **nem illeszkednek** erre az elemre, mert az `i`-nek nincs közvetlen szülője `#para` ID-val, és a `p` nincsenek ID-val sem ebben az ágban.
- **Konfliktus megoldás**:
    
    - `i { color: orange }` definíciósorrendben előbb jön.
    - `#elso, i { color: blue }` definíciósorrendben utóbb jön. Mivel a súlyuk azonos (mindkettő csak címkére hivatkozik: 1), a **későbbi** szabály érvényesül.
- **Szín**: **Blue (Kék)**.
    

#### 3. "cseresznye" szó (`<i>`)

- **Elem típusa**: `<i>` (a sima `<p>` belül)
    
- **Szülői lánc**: `<p>` <- `<div id="elso">`
    
- **Vonatkozó szabályok**:
    
    - Hasonlóan a "szilvához": Nincs rá vonatkozó `#para` vagy speciális osztály-szabály.
    - Csak az alap `i` és a kombinator `#elso, i` szabályok léteznek.
    - `i { color: orange }` (Súly 1).
    - `#elso, i { color: blue }` (Súly 1, de később definiálva).
- **Győztes**: A `#elso, i` rész miatt a `blue` szín érvényesül a sorrend miatt.
    
- **Szín**: **Blue (Kék)**.
    

---

### Összefoglaló táblázat

|Szó|Element|Győztes Szabály|Specifikusság|Végleges Szín|
|---|---|---|---|---|
|**alma**|`span.kis`|`#para .kis`|(0, 1, 1, 0)|**Szürke (Gray)**|
|**szilva**|`i`|`#elso, i` (későbbi)|(0, 0, 0, 1)|**Kék (Blue)**|
|**cseresznye**|`i`|`#elso, i` (későbbi)|(0, 0, 0, 1)|**Kék (Blue)**|

### Fontos megjegyzés a logikához:

- Az `alma` esetén a `#para .kis` (súly 110) sokkal erősebb, mint a sima `span` (súly 1) vagy a `#elso` (súly 10). Ezért szürke lesz, nem zöld.
- A `szilva` és `cseresznye` esetén mindkét érvényes szabály (`i` és az `i` a `,` után) ugyanolyan súlyú (1). Itt döntő a **forráskód sorrendje**: mivel a `#elso, i { color: blue }` a fájl végén szerepel, felülírja a korábbi `i { color: orange }`-t.


# Második tétel
---

## 1. B. Szelektor Specifikussági Sorrend

A specifikusságot a `(a, b, c, d)` négyes alakú súly alapján határozzuk meg:

- **b**: ID-k száma (`#id`)
- **c**: Osztályok/attribútumok száma (`.class`, `[attr]`)
- **d**: Címkek száma (`tag`)

**Számítás:**

1. `#elso .harmadik`: **(0, 1, 1, 0)** = 110 pont (1 ID, 1 osztály).
2. `#elso p.masodik`: **(0, 1, 1, 1)** = 111 pont (1 ID, 1 osztály, 1 címke). _Megjegyzés: Itt a `p` és `.masodik` ugyanazon elemre vonatkoznak, így összeadódnak._
    - _Még pontosabb ellenőrzés:_ A `#elso` egy ID, a `p.masodik` egy címkével kombinált osztály. Súly: `(0, 1, 1, 1)`. Ez erősebb, mint a `#elso .harmadik` (ami `(0, 1, 1, 0)`), mert van plusz egy címkéje.
3. `.szines .kiemelt p`: **(0, 0, 2, 1)** = 21 pont (2 osztály, 1 címke).
4. `.kiemelt p`: **(0, 0, 1, 1)** = 11 pont (1 osztály, 1 címke).
5. `p`: **(0, 0, 0, 1)** = 1 pont.
6. `*`: **(0, 0, 0, 0)** = 0 pont.

**Helyes sorrend (legrövidebből legnagyobbra):**

1. `*` (0 pont)
2. `p` (1 pont)
3. `.kiemelt p` (11 pont)
4. `.szines .kiemelt p` (21 pont)
5. `#elso .harmadik` (110 pont)
6. `#elso p.masodik` (111 pont)

_(Megjegyzés: Ha a `#elso p.masodik` úgy értelmezzük, hogy a `p` és `.masodik` külön elemek lennének, de a feladat szerkezete alapján `p` tag osztállyal rendelkezik, tehát a fenti súly helyes.)_

**Végső lista (legfelül a legerősebb):**

1. `#elso p.masodik`
2. `#elso .harmadik`
3. `.szines .kiemelt p`
4. `.kiemelt p`
5. `p`
6. `*`

---

## 2. A. Süti (Cookie) Definíciója és Tulajdonságai

**Definíció:** A cookie (süti) egy kis méretű szöveges adatfájl, amelyet a webkiszolgáló küld a kliens (böngésző) számára, és amelyet a böngésző tárol. Minden alkalommal, amikor a kliens ismét kér egy oldalt a kiszolgálótól, elküldi a tárolt cookie-t. Ez teszi lehetővé az állapottalan HTTP protokollnál az állapot (session) megőrzését.

**Tulajdonságok:**

- **Név (Name)**: Az azonosító kulcs.
- **Érték (Value)**: Az adattartalom.
- **Domain**: Milyen tartományra érvényes (pl. `.example.com`).
- **Path**: Milyen útvonalra érvényes a domain-en belül (pl. `/admin`).
- **Expires / Max-Age**: Lejárat dátuma vagy időtartoma másodpercben.
- **Secure**: Csak HTTPS kapcsolaton át szállítva küldődik vissza.
- **HttpOnly**: JavaScript-ből (`document.cookie`) nem érhető el, csak HTTP kérésekben (XSS védelem).
- **SameSite**: Korlátozza a cookie-k küldését keresztezett kérelmeknél (CSRF védelem).

## 2. B. Használati mód (Példa)

**Cél:** Felhasználói bejelentkezés állapotának megőrzése. **Esmenet:**

1. A felhasználó belép. A szerver létrehoz egy session-azonosítót (SessionID).
2. A szerver beállítja a `Set-Cookie` fejlécet: `Set-Cookie: session_id=abc123; HttpOnly; Secure; Path=/`.
3. A böngésző tárolja ezt a cookie-t.
4. Minden következő kérésnél a browser automatikusan elküldi ezt a cookie-t.
5. A szerver a cookie alapján felismeri a felhasználót anélkül, hogy újra be kellene jelentkeznie.

## 2. C. Kódelemzés (Express Middleware)

`function setMyCookie (res) { // Definiál egy függvényt, ami paraméterként kap egy Express Response objektumot (res).   const gmtTime = Date.now(); // Lekéri a jelenlegi időpontot Unix timestamp formátumban (milliszekundumok száma 1970. január 1-jétől).     // Beállít egy 'visit' nevű cookie-t a res objektumon keresztül.  res.cookie("visit", gmtTime, {    httpOnly: true, // A cookie nem olvasható JavaScriptből (security), csak HTTP kérésekkel.    maxAge: 365 * 3600 * 24 * 1000, // Élettartam: 365 nap x 24 óra x 60 perc x 60 másodperc x 1000 milliszekundum.    domain: "ms.sapientia.ro", // A cookie csak erre a tartományra lesz érvényes.  });  }`

_Megjegyzés: A kód feltételezi, hogy a `Date.now()` eredménye (Unix timestamp) közvetlenül használható értékül, bár általában emberi olvasatú dátum vagy ISO string szokott lenni, de technikai szempontból működik._

---

## 3. A. Alapértelmezett Esemény (Default Behavior)

**Meghatározás:** Az alapértelmezett esemény (default behavior) az a beépített funkció, amit a böngésző automatikusan végrehajt, ha egy felhasználó egy adott típusú eseményt indít el (pl. kattintás egy linkre -> navigáció, kattintás egy gombra -> űrlap beküldése). Ezt nevezzük „implicit" viselkedésnek, mivel nem kell hozzá semmilyen JavaScript kód.

## 3. B. Példa Elem

- **Elem:** `<a href="https://google.com">Kattints ide</a>`
- **Alapértelmezett esemény:** Kattintásra a böngésző átirányítja (navigál) a `href` által megadott URL-re.
- **Alternatív példa:** `<button type="submit">Küldés</button>` (űrlapon belül). Alapértelmezett: az űrlap elküldése a szerverre és az oldal újratöltése.

## 3. C. Megakadályozása

**Módszer:** Az `event.preventDefault()` metódus hívása az eseménykezelő függvényen belül. **Indoklás:** Gyakran szükséges, ha:

1. Egyedi logikát akarunk futtatni az alapértelmezett helyett (pl. AJAX űrlap küldés, hogy ne töltődjön be az oldal).
2. Validációt akarunk végezni, és hiba esetén akadályozni akarjuk az űrlap küldését.
3. Egyszerű navigációt akarunk blokkolni és dinamikusan tartalmat betölteni.

**Péda kód:**

`<a href="/veszélyes-oldal" id="link">Veszélyes Link</a> <script>   document.getElementById('link').addEventListener('click', function(event) {    // Megakadályozza a linkre kattintás utáni navigációt    event.preventDefault();    console.log("Navigáció letiltva! Most valami mást csinálunk...");    alert("Nem fogod látni az oldalt!");  }); </script>`

---

## 4. Értékek és Típusok

| Kifejezés                         | Érték        | Típus  | Magyarázat                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| --------------------------------- | ------------ | ------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| a. `+3+"3"`                       | `"33"`       | String | `+3` szám marad, `"3"` string. `3 + "3"` → `33` (string konkatenciáció).                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| b. `typeof (x=>x+1)`              | `"function"` | String | A nyílfüggvény típusa mindig `"function"`.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| c. `10.3333.toFixed(3)`           | `"10.333"`   | String | A `toFixed` mindig stringet ad vissza, kerekítve 3 tizedesjegyre.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| d. `false                         |              | 0      |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| e. `(3 == "3") + 1 + (3 === "3")` | `11`         | Number | `3 == "3"` → `true` (1). `3 === "3"` → `false` (0). Számítás: `1 + 1 + 0 = 2`? **Várjunk!**  <br>`3 == "3"` → `true` (numeric contextben 1).  <br>`3 === "3"` → `false` (0).  <br>`1 + 1 + 0`? Nem.  <br>`true + 1` → `2`. `2 + false` → `2`.  <br>**Hibás volt a gondolatmenet?**  <br>`true` számolva: 1. `false`: 0.  <br>`(1) + 1 + (0)` = `2`.  <br>**Ellenőrizzük újra:**  <br>`(3 == "3")` → `true` (boolean).  <br>`(3 === "3")` → `false` (boolean).  <br>`true + 1` → `2` (number).  <br>`2 + false` → `2`.  <br>**Eredmény:** `2`.  <br>_Korrigálás:_ A táblázatban írtam 11-et, de ez rossz. A helyes válasz: **2**.  <br>_(Elvileg: `true + 1 = 2`, majd `2 + false = 2`)_. |

**Javított táblázat:**

| Kifejezés                         | Érték | Típus  |
| --------------------------------- | ----- | ------ |
| e. `(3 == "3") + 1 + (3 === "3")` | `2`   | Number |

---

## 5. A. Aszinkron Függvények

**I. Aszinkron függvény:** Olyan függvény, amelynek futása nem blokkolja a fő szálat. Előfordulhat, hogy az eredmény később áll rendelkezésre (pl. hálózat, fájlolvasás), de a program a többi feladatot addig is folytatja.

**II. Async függvény:** A `async` kulcsszóval jelölt függvény, amely _automatikusan_ Promise-t ad vissza. Ha a függvény visszatérési értékének nincs `return` parancsa vagy undefined-ot ad vissza, a Promise `resolve(undefined)`-del teljesül. Ha hibát dob, a Promise `reject`-elődik. Lehetővé teszi az `await` kulcsszó használatát a függvény belsejében.

## 5. B. Jellemzők és Cél

**Fő jellemzők:**

1. Visszatérési érték: Mindig `Promise` objektum.
2. `await` támogatás: Belsőleg szinkronnak tűnő kódot írhatunk aszinkron műveletekhez (`await promise`).
3. Hibakezelés: A `try/catch` blokkal kezelhetők a Promise reject esetei (ellentétben a `.catch()` lánccal).

**Miért vezették be őket?** A hagyományos Callback-heurisztika („callback hell") elkerülésére és az aszinkron kód olvasatosságának növelésére. Lehetővé teszik, hogy az aszinkron kódot úgy írjuk meg, mint egy sima, lépésről-lépésre végrehajtott procedurális kódot, miközben a háttérben Promise-okat használnak.

## 5. C. `getPchar()` Függvény Implementáció

``async function getPchar(str, n) {   // Ellenőrzi a típusokat  if (typeof str !== 'string' || typeof n !== 'number') {    return Promise.reject(new Error("notOK"));  }     // Ha a típusok jók, megoldja a Promise-t  // .at() metódus használata a N-edik karakterért (0-indexelt)  // Ha n kívül esik a határokon, az at() üres stringet ad vagy undefinit (de a feladat szerint ""-t várunk)  // Fontos: ha n < 0 vagy n >= str.length, az "abc".at(n) undefinitet adhat, de a standard spec szerint -1 index a vége.  // A feladat konkrétan azt mondja: "ha nincs ilyen akkor egy üres sztringet".  // A .at() viselkedése: ha túl nagy, undefined. Átalakítani ""-re.     const char = str.at(n);     // Ellenőrizzük, hogy létezik-e a karakter (undefined esetén "")  return Promise.resolve(char === undefined ? "" : char);     /*     Rövidített async/await verzió (a return automatikusan Promise-t csinál):     return char === undefined ? "" : char;  */ } // Tesztelés a példák szerint: console.log(await getPchar("abc", 1)); // Kiírja: "b" (Index 1 a 'b', mert 0='a', 1='b') // *Megjegyzés*: A feladat példája: `getPchar("abc",1)` kiírja "a".  // Ha a feladat 1-es indexelést feltételez (humán), akkor: str.at(n-1).  // De a JS-ben .at(0)='a'. Ha a példa "a"-t vár 1-gyel, akkor 1-es indexet kell használni. // Ha a példa hivatkozik a "abc".at(2)='c' részre (ami 0-indexelt), akkor a függvénynek 0-indexeltnek kell lennie. // A feladat szövegében: `getPchar("abc",1)` -> "a". Ez ellentmondás, ha .at() 0-indexelt. // Feltételezem, hogy a feladat 1-es indexelést szeretne (emberi számlálás). // Módosítás a 1-based indexinghez: const getChar = (str, n) => str.at(n - 1);  // De a feladat kódban expliciten: `"abc".at(2) -> 'c'`. Ez 0-index. // Ha `getPchar("abc", 1)` -> "a", akkor az input `n` 1-based. // Írjuk át a függvényt 1-based indexelésre, hogy illeszkedjen a példához. /*     FINÁLIS VERZIÓ (1-based indexezés a példák miatt): */ async function getPchar(str, n) {   if (typeof str !== 'string' || typeof n !== 'number') {    return Promise.reject(new Error("notOK"));  }     // Konvertálás 0-indexre, ha a felhasználó 1-től számol (példa: 1 -> 'a')  const index = n - 1;     const char = str.at(index);  return char === undefined ? "" : char; }``

---

## 6. Console.log() Kimenetek

Adott: `const a = [1,2,3,4,5,6,7,8,9,10];`

**a.** `console.log(a.slice(2,-2).length);`

- `slice(2, -2)` kivágja a tömböt index 2-től (beleértve) a végtől kezdve -2-ig (kizárva).
- Elemek: `[3, 4, 5, 6, 7, 8]`. (A 3-tól 8-ig).
- Hossz: 6.
- **Kimenet:** `6`

**b.** `console.log(a.map( (e,i,ar) => ar[(i+2) % ar.length] ));`

- `map` minden elemből új elemet hoz létre.
- Logika: Az aktuális index `i`. A célindex `(i+2) % 10`.
- i=0 (érték 1) -> cél 2 -> ar[2]=3.
- i=1 (érték 2) -> cél 3 -> ar[3]=4.
- ... ciklikus eltolás balra 2 hellyel.
- **Kimenet:** `[3, 4, 5, 6, 7, 8, 9, 10, 1, 2]`

**c.** `const d = a.reduceRight((acc,x)=> acc + x , ''); console.log(d);`

- `reduceRight` jobbról balra halad, kezdeti érték `''` (string).
- Mivel az akkumulátor string, a hozzáadás concatenation (összefűzés).
- Sorrend: `10 + 9 + 8 ... + 1` stringként.
- **Kimenet:** `"10987654321"`

**d.** `const b = a.splice(1,4,9,9,9,9); console.log(a);`

- `splice(1, 4, 9, 9, 9, 9)`:
    - Kezdés: index 1.
    - Távolít: 4 elemet (2, 3, 4, 5).
    - Behelyettesít: `9, 9, 9, 9`.
- Eredmény tömb `a`: `[1, 9, 9, 9, 9, 6, 7, 8, 9, 10]`.
- **Kimenet:** `[1, 9, 9, 9, 9, 6, 7, 8, 9, 10]`

**f.** `console.log(b.map((e,ix,arr)=>arr[(ix+1)%arr.length]));`

- `b` a `splice` visszatérési értéke: a távolított elemek `[2, 3, 4, 5]`.
- A map eltolja az elemeket ciklikusan jobbra 1-gyel.
- i=0 (2) -> index 1 (3).
- i=1 (3) -> index 2 (4).
- i=2 (4) -> index 3 (5).
- i=3 (5) -> index 0 (2).
- **Kimenet:** `[3, 4, 5, 2]`

---

## 7. Hibakezelés Expressz alkalmazásban

A hibakezelés hatékony módszere egy **központi hibakezelő middleware** definiálása, amit a `app.use()` legvégén hívunk meg (minden útvonal után).

**Megvalósítás lépései:**

1. **Standardizált hibaobjektumok**: A route-okon belül `next(err)` hívással adjuk tovább a hibát.
2. **Aszinkron hibafogás**: Mivel az `async/await` route handlerjeiben a `throw` automatikusan `next(error)`-t hív, nem kell mindenhol try/catch-et írni, ha van egy segédmiddleware.
3. **Központi middleware**:

`// 1. Segéd middleware (opcionális, de javasolt) const asyncHandler = (fn) => (req, res, next) => {   Promise.resolve(fn(req, res, next)).catch(next); }; // Route példa app.get('/users/:id', asyncHandler(async (req, res) => {   const user = await User.findById(req.params.id);  if (!user) throw new Error('User not found');  res.json(user); })); // 2. Központi hiba kezelés (a fájl végén) app.use((err, req, res, next) => {   console.error(err.stack);     // Státusz kód meghatározása  const statusCode = err.statusCode || 500;  const message = err.message || 'Internal Server Error';   // Hiba válasz küldése JSON-ban  res.status(statusCode).json({    error: {      message: message,      stack: process.env.NODE_ENV === 'production' ? null : err.stack    }  }); });`

Ha a felhasználó olyan útvonalra megy, ami nem létezik, egy 404 middleware-t is érdemes definiálni a hiba middleware előtt.

---

## 8. A. Útvonalválasztás (Routing)

**Definíció:** A routing (útvonalválasztás) a folyamat, amely során a webalkalmazás meghatározza, hogy egy bizonyos HTTP kérés (URL és metódus páros) esetén melyik funkció (handler) kerüljön végrehajtásra. Például: `GET /users` -> `getUsers()`, `POST /users` -> `createUser()`.

## 8. B. Router() Szerepe

Az `express.Router()` egy moduláris route-kezelőt hoz létre.

- **Cél:** A nagy alkalmazások route-definícióinak kicsomagolása külön fájlokba (pl. `routes/users.js`, `routes/auth.js`).
- **Használat:** Létrehoz egy `router` objektumot, amelyen belül definiáljuk az útvonalakat. Ezt a router-t aztán behelyettesítjük a fő `app.js`-be (`app.use('/api', router)`).
- Előny: Jobb karbantarthatóság és strukturáltság.

## 8. C. Next() Szerepe

**Funkció:** A `next()` egy függvény, ami meghívásával a middleware a vezérlést továbbadja a _következő_ middleware-nek vagy route handler-nek a láncban.

**Speciális esetek:**

1. **Normál áramlás:** `next()` hívás nélkül a request leáll (pl. válasz küldése után).
2. **Hiba átirányítás:** `next(error)` hívással átugorja a középső middleware-eket, és a hiba middleware-höz ugrik.
3. **Route váltás:** Ha egy middleware úgy dönt, hogy nem felel meg az igényeknek, `next()` hívásával a következő hasonló útvonalat próbálja meg (ritkább, de lehetséges).
4. **Árnyalat:** Ha `next()`-et hívunk paraméter nélkül, a `app.use('/api', apiRouter)` után lévő `app.use`-ök közül a következő kerül sorra.

---

## 9. A. Szesszió Kezelés

**Definíció:** A szesszió (munkamenet) egy mechanizmus, amely lehetővé teszi az állapot megőrzését aHTTP protokoll állapottalansága mellett. A szerver egy egyedi azonosítót (SessionID) hoz létre, és a klienst arra kéri, hogy ezt minden kérésben elküldje (általában cookie-ban).

**Megvalósítás `express-session`-nel:**

- Bekapcsolás: `app.use(session({ secret: '...', saveUninitialized: false, resave: false }));`
- Ez automatikusan inicializálja `req.session` objektumot.
- Adatok tárolása: `req.session.user = { id: 1, name: 'András' };`
- Automatikus mentés: Ha a session objektum megváltozik, a szerver menteti az adatot a backend tárolóban.

**Biztosított lehetőségek:**

- Bejelentkezési állapot fenntartása.
- Kosár tartalmának megjegyzése.
- Testreszabás (language, theme).
- Biztonsági tokenek tárolása.

## 9. B. Szessziók Tárolási Lehetőségei

Az alapértelmezett tároló az **Memory Store** (memória), ami fejlesztési környezetben jó, de termelésben nem ajánlott (memóriaszivárgás, vesztes server restartkor, nem osztható több szerver között).

**Ajánlott alternatívák (külső adapterekkel):**

1. **Redis**: A legnépszerűbb, gyors, key-value alapú, támogatja a TTL-t (lejáratot). (`connect-redis`)
2. **MongoDB**: Ha már használják az appban, a szessziók dokumentumokként tárolhatók. (`connect-mongo`)
3. **PostgreSQL/MySQL**: Relációs adatbázisok is használhatók.
4. **Memcached**: Gyors, egyszerű cache-rendszer.