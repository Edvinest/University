#### IPv4 
Hosztok száma: 32 - a megadott alhálózati maszk.
Pl. /23 -> 32 - 23 = 9 => 2$^9$ - 2 db hoszt

Alhálózatok száma: megnézzük, hogy az IP cím melyik csoportba esik és abból vonjuk ki a maszkot.
Pl. 192.168.0.112 /29 -> Itt C csoportban van tehát az alapértelmezett maszk /24, szóval 29-24 = 5 => 2$^5$ db alhálózat

Lépésszám: 256-ból kivonjuk a megadott maszk nem 255 és nem 0 oktett értékét, ugyanaz az oktett lesz az ami változni fog.

#### IPv6
Egyszerűsítés lépései:
- A csoportok elejéről a nullákat elhagyhatjuk (pl. 000b-ből b lesz, 00A1-ből A1 stb stb)
- Ha többször szerepel 0000 egymás után, kiegyszerűsíthető egy dupla kettőspont segítségével (pl. 1234:0000:0000:2314 -> 1234::2314)

#### Elméleti rész
##### Keretezés
Az alkalmazási réteg a TCP/IP modell legfelső rétege, amely hálózati szolgáltatásokat nyújt a felhasználói alkalmazások számára, és meghatározza az alkalmazások közötti adatkommunikáció protokolljait.
##### TCP és UDP
- TCP (Transmission Control Protocol)
	=> Kapcsolat orientált
	=> Megbízható átvitel
		- az adatok biztosan eljutnak a célhoz
	=> Az adatfolyam irányítása
		- az adatok a megfelelő sorrendben érkeznek a célhoz
	=> Torlódás irányítása
	=> Hibakezelés
	Pl: SSH, HTTP
- UDP (User Datagram Protocol)
	=> Nem kapcsolat orientált
	=> Nem megbízható átvitel
		 - elveszhetnek szegmensek
	=> Nincs adatfolyam irányítás
		 - a szegmensek nem sorrendben érkeznek
	Pl: IPTV, VoIP
##### Rétegek és feladataik

###### OSI Model
1. Fizikai réteg (Média, jelzések, bináris átvitel)
   => Feladata, hogy továbbítsa a biteket a kommunikációs csatornán
   => Hozzárendeli a logikai értékekhez a megfelelő feszültség szintet
   => Meghatározza a kábel, csatlakozók paramétereit
   => Az interfész, mechanikai és elektronikai kérdésekre összpontosít
   
2. Adatkapcsolati réteg (MAC és LLC, fizikai címzés)
   => Az átvitel a fizikai rétegnél nem tökéletes ezért megpróbálja kijavítani
   => Hibaérzékelő vagy hibajavító kódokat használ
   => Keretezés, nyugtázás a csomag vesztések kezelésére
   
   Közegelérési al-réteg
	   => Az osztott csatornán való hozzáféréssel foglalkozik
	   
3. Hálózati réteg (Útvonalkiválasztás és IP, logikai címzés)
   => Alhálózat működését irányítja
   => Útkeresés:
		- Statikus: táblázatokban
		- Dinamikus: minden csomag új útvonalat keres
	 => Torlódás (túl sok csomag van a hálózatban) kezelése
	 => Szolgáltatás minőségének a biztosítása sebesség ingadozás átviteli idő késleltetés
	 => Különböző hálózatok közti átmenet megoldása
	 => Adatszóró hálózatokban csökken a szerepe, vagy nem
	 létezik
	 
4. Szállítási réteg (Végpontok közötti kapcsolat, megbízhatóság)
   => Adatokat fogad a viszony rétegből feldarabolja, továbbítja a hálózati rétegnek
   => Feladata, hogy az adat hibátlanul megérkezzen a túlsó oldalra vagy jelezve a hibákat
   => Itt dől el a szolgáltatások típusa:
	   - kapcsolat orientált
	   - üzenetalapú
	   - Míg az alacsonyabb szintű protokollokat a közvetlen szomszédokkal való kommunikációra használjak a szállítási protokollt a célhoszt és a forráshoszt közötti adatátvitelt szabályozza függetlenül attól, hogy hány alhálózaton van közöttük.

5. Viszony réteg (Csomópontok közötti kommunikáció)
   => két hoszt közötti viszony felépítése a feladata párbeszéd kialakítása
   => vezérlőjel kereséskritikus műveletek végrehajtásához szinkronizáció

6. Megjelenítési réteg (Adat megjelenítés és kódolás/dekódolás)
   => adattípusok közti konverziót hajtja végre

7. Alkalmazási réteg (Alkalmazás szintű hálózati eljárások)
   => gyakran használt protokoll sokasága: HTTP
###### TCP/IP Model
1. Kapcsolati réteg
   => A modell legalsó rétege, a kapcsolati réteg (link layer) azt írja le, hogy milyen képességekkel kell rendelkeznie az olyan átviteli elemeknek, mint amilyenek a soros vonalak vagy a klasszikus Ethernet, hogy megfeleljenek ennek az összeköttetés nélküli internetréteg igényeinek. A kifejezés megszokott értelmében nem is valódi réteg, hanem egy csatlakozási felület a hosztok és az átviteli összeköttetések között.

2. Internet réteg
   => A feladata az, hogy lehetővé tegye a hosztok számára, hogy bármely hálózatba csomagokat tudjanak küldeni, illetve a csomagok egymástól függetlenül célba jussanak (akár más hálózatokba is). Az sem gond, ha a csomagok nem az elküldés sorrendjében érkeznek meg, ugyanis, ha erre van szükség, akkor a magasabb rétegek visszarendezik őket a megfelelő sorrendbe. Ne felejtsük el, hogy itt az „internet” szót most általános értelemben használjuk annak ellenére, hogy ez a réteg az internetben is jelen van.

3. Szállítási réteg
   => Feladata az OSI-modell szállítási rétegéhez hasonlóan az, hogy lehetővé tegye a küldő és címzett hosztokban található társentitások közötti párbeszédet. Két különböző szállítási protokollt definiálunk a következőkben.
   
   ● Az egyik az átvitelvezérlő protokoll (Transmission Control Protocol, TCP), amely egy megbízható összeköttetés-alapú protokoll. Feladata az, hogy hibamentes bájtos átvitelt biztosítson bármely két gép között az interneten. A beérkező bájtos adatfolyamot diszkrét méretű üzenetekre osztja, majd azokat egyesével továbbítja az internetrétegnek. A címzett hoszt TCP-folyamata összegyűjti a beérkezett üzeneteket, és egyetlen kimeneti adatfolyamként továbbítja azokat. A TCP forgalomszabályozást is végez annak érdekében, hogy egy gyors forráshoszt csak annyi üzenetet küldjön egy lassabb címzett hosztnak, amennyit az fogadni képes.
   
   ● A másik protokoll ebben a rétegben a felhasználói datagram protokoll (User Datagram Protocol, UDP), amely egy nem megbízható, összeköttetés nélküli protokoll. Jelentősége akkor van, amikor nem szükséges sem az üzenetek TCP-féle sorba rendezése, sem a forgalomszabályozás. Elsősorban olyan egylövetű, kliens–szerver típusú kérés-válasz alkalmazásokban terjedt el, ahol a gyors válasz sokkal fontosabb, mint a pontos. Ilyen alkalmazás például a beszéd- vagy videoátvitel.
   
4. Alkalmazási réteg
   => Az alkalmazási réteg a TCP/IP modell legfelső rétege, amely hálózati szolgáltatásokat nyújt a felhasználói alkalmazások számára, és meghatározza az alkalmazások közötti adatkommunikáció protokolljait.

##### DNS lekérdezés lépései
0. Lekérdezés megkezdése
1. A böngésző ellenőrzi, hogy a korábban meglátogatott domainhez tartozó IP-cím szerepel-e még a saját gyorsítótárában. Ha igen, azt használja. (Browser Cache)
2. Ha a böngésző nem találja, az operációs rendszer ellenőrzi a helyi DNS cache-t és a `hosts` fájlt. Ha itt van bejegyzés, a folyamat megáll. (OS/Local Cache)
3. Ha nincs helyi találat, a kliens DNS kérést küld egy **rekurzív DNS szervernek** (általában az internetszolgáltató vagy egy publikus DNS, pl. 8.8.8.8). Ez a szerver végzi el a teljes feloldási folyamatot a kliens helyett. (Rekurzív DNS Resolver)
4. Ha a rekurzív resolver nem tudja a választ a saját cache-éből, megkérdez egy **root névszervert**, hogy mely névszerverek felelősek a domain végződéséért (pl. `.hu`, `.com`). A root szerver nem ad IP-címet, csak a megfelelő TLD szerverek címét. (Root névszerver)
5. A rekurzív resolver ezután a TLD szervert kérdezi meg, hogy melyik névszerver felel az adott domainért (pl. `pelda.hu`). Válaszként megkapja az authoritative névszerverek címét. (TLD névszerver)
6. A resolver végül a domain hivatalos (authoritative) névszerverét kérdezi meg a konkrét rekordról (pl. `www.pelda.hu` A rekord). Ez a szerver adja vissza a keresett IP-címet. (Authoritative névszerver)
7. A rekurzív resolver eltárolja a választ a TTL idejére, majd visszaküldi az IP-címet a kliensnek, amely szintén cache-eli azt. (IP visszaküldése a kliensnek)

##### Különbség NAT és PAT között
##### VPN típusok
- Site-to-Site (Vállalati egységek közti)
	=> Két autonóm hálózatot köt össze
	=> Az összeköttetés titkosított
	=> A kliensek szempontjából rejtett
	=> IKEv2 - IPsec

- Kliens-Szerver felépítés
	=> A felhasználó gépe és egy privát hálózat közt létesít titkosított kapcsolatot
	=> A Cisco ASA eszközei által biztosít ilyen szolgáltatást
	=> Nyílt forráskódú elterjedt megoldás az OpenVPN
##### CSMA/CSD
##### IPv6