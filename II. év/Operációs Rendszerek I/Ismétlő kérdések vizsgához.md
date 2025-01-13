1. ==Mi a szerepe a UNIX standardizálásának, mit tartalmaznak a UNIX standardok (pl. POSIX)?==
   
   A UNIX standardizálás célja a hordozhatóság és az interoperabilitás biztosítása a különböző UNIX rendszerek között. Ezáltal az alkalmazások könnyebben futtathatók több UNIX-alapú rendszeren, csökkentve az inkompatibilitásból adódó problémákat.
   
   ### Az unix standard-ok (pl. POSIX szerepe):
   - **API-k (Application Programming Interfaces)**: Meghatározzák a rendszerhívásokat és könyvtári függvényeket (pl. fájlkezelés, folyamatkezelés).
   - **Shell és segédprogramok**: Szabványosítják a parancsértelmezőt és alapvető parancsokat (pl. `ls`, `cp`).
   - **Eszközkezelés**: Meghatározzák az eszközökhöz való hozzáférést.
   - **Folyamatok és szálak kezelése**: Tartalmazza a szinkronizációt és az ütemezést szabályozó interfészeket.
   - **I/O műveletek**: Szabványosítják a fájl- és eszközalapú adatbevitelt és -kivitelt.
   
2. ==Mit tud a Linux disztribúciók helyi gépen létrehozott felhasználóiról és csoportokról?==
   
	Linux rendszerek felhasználói és csoportjai a jogosultságkezelés alapjai.
    
    ### Felhasználók:
	- **Rendszerfelhasználók** (szolgáltatásokhoz) és **normál felhasználók** (embereknek).
	- Adatok:
	    - `/etc/passwd`: felhasználónév, UID, kezdőkönyvtár, shell.
	    - `/etc/shadow`: titkosított jelszavak.

   ### Csoportok:
	- A csoportok megosztott hozzáférést biztosítanak.
	- Adatok az `/etc/group` fájlban.
	- **Elsődleges csoport**: minden felhasználónak van egy.
	- **Kiegészítő csoportok**: további jogosultságok.

   ### Adminisztráció:
	- Felhasználók: `useradd`, `usermod`, `userdel`.
	- Csoportok: `groupadd`, `groupmod`, `groupdel`.
	- Jogosultságok módosítása: `chmod`, `chown`, `chgrp`.

3. ==Milyen adatokat kell megadni a rendszernek egy új felhasználó létrehozásakor? Helyi gép felhasználói esetén hol tárolja ezeket a rendszer és hogyan használja fel a felhasználó belépésekor?==
   
   ### Új felhasználó létrehozásakor megadandó adatok:
	- **Felhasználónév**, **UID**, **csoportok**, **kezdőkönyvtár**, **bejelentkezési shell**, **jelszó**.

   ### Tárolás helye:
	- **/etc/passwd**: Alapadatok (felhasználónév, UID, kezdőkönyvtár, shell).
	- **/etc/shadow**: Titkosított jelszavak.
	- **/etc/group**: Csoportadatok.

   ### Belépéskor:
	1. A rendszer az **/etc/passwd** és **/etc/shadow** fájlokban ellenőrzi a felhasználót és jelszót.
	2. Sikeres azonosítás után beállítja a kezdőkönyvtárat és a shellt, majd hozzáférést ad.
   
4. ==Mi a szerepe a sudo parancsnak?==
   
   A **sudo** parancs szerepe, hogy egy felhasználó ideiglenesen rendszergazdai (root) jogosultságokat szerezzen egy adott parancs végrehajtásához, anélkül hogy közvetlenül bejelentkezne rootként. Ez növeli a biztonságot és a rendszer védelmét.
   
5. ==Mit tud a szoftver csomagok kezeléséről Ubuntu rendszerek esetében? Hogyan telepítünk és frissítünk csomagokat.==
   
   Ubuntu rendszerek csomagkezelésére az **APT (Advanced Package Tool)** rendszert használják, amely a DEB csomagformátumot kezeli.
   
   ### Telepítés:
	- **Új csomag telepítése**:  
	    `sudo apt install csomagnev`
	- **Több csomag telepítése**:  
	    `sudo apt install csomag1 csomag2`

   ### Frissítés:
	- **Csomaglista frissítése**:  
	    `sudo apt update`
	- **Telepített csomagok frissítése**:  
	    `sudo apt upgrade`
	- **Rendszer teljes frissítése**:  
	    `sudo apt full-upgrade`

6. ==Melyek a fontosabb tulajdonságai a virtuális Unix fájlrendszernek?==
   
   - **Hierarchikus felépítés**: Fagyökérből (`/`) kiinduló, fa-alapú struktúra.
   - **Egységes nézet**: Az eszközök, fájlok és hálózati erőforrások ugyanabban a fájlrendszerben érhetők el.
   - **Mountolás**: Különböző fájlrendszerek (pl. ext4, NTFS) csatolhatók a hierarchiába.
   - **Eszközfüggetlenség**: A fájlkezelés egységes, függetlenül a tárolóeszköztől.
   - **Jogosultságkezelés**: Fájlokhoz és könyvtárakhoz olvasási, írási és végrehajtási jogok rendelhetők (felhasználó, csoport, mások).
  - **Speciális fájlok**: Eszközfájlok, szimbolikus linkek, FIFO-k és socketek támogatása.

7. ==Milyen állománytípusokat találunk a UNIX állományrendszerében? Soroljuk fel és határozzuk meg őket egy-egy mondatban.==
   
   - **Normál fájl**: Adatokat tartalmazó fájl, például szöveg- vagy bináris fájl.
   - **Könyvtár**: Más fájlokat vagy könyvtárakat tartalmazó speciális fájl, amely a fájlstruktúra szervezésére szolgál.
   - **Linkek**:
      - **Szimbolikus link**: Egy másik fájlra mutató fájl, amely elérési útvonallal hivatkozik a célra.
      - **Kemény link**: Ugyanazon fájl több névvel történő hivatkozása, amely a fájladatokat közvetlenül osztja meg.
  - **Eszközfájl**:
      - **Bemeneti/kimeneti eszközfájl**: A rendszer perifériáival (pl. lemez, terminál) való kommunikációra használt fájlok.
  - **FIFO (First In, First Out)**: Olyan fájl, amely a folyamatok közötti kommunikációra szolgál, adatokat tárolva, amelyeket sorban olvasnak.
  - **Socket**: Hálózati kommunikációra használt fájl, amely lehetővé teszi az alkalmazások közötti adatcserét.

8. ==Soroljunk fel néhány fontos könyvtárat a UNIX állományrendszeréből, és mutassuk be, hogy mit tartalmaznak.== 
   
   - **/ (root)**: A fájlrendszer gyökérkönyvtára, minden más könyvtár innen ágazik.
   - **/bin**: Alapvető, rendszerindításhoz és karbantartáshoz szükséges végrehajtható fájlok (pl. `ls`, `cp`).
  - **/etc**: Rendszerkonfigurációs fájlok (pl. `/etc/passwd`, `/etc/fstab`).
  - **/home**: Felhasználói könyvtárak, ahol a felhasználók saját fájljaikat tárolják.
  - **/lib**: A rendszer alapvető könyvtárai, amelyek a futtatható fájlokhoz szükségesek.
  - **/tmp**: Ideiglenes fájlok tárolására szolgáló könyvtár.
  - **/var**: Változó adatok, mint log fájlok, nyomtatási adatfájlok és egyéb rendszerfolyamatok.
  - **/usr**: Felhasználói alkalmazások és programok könyvtára, tartalmazza a legtöbb programot és könyvtárat.

9. ==Mit nevezünk i-node-nak, és milyen információkat tartalmaz ez a struktúra?==
   
   Az **i-node** (index node) egy adatstruktúra a UNIX fájlrendszerében, amely egy fájl vagy könyvtár metaadatait tárolja, de magát a fájl tartalmát nem.

   ### Az i-node tartalmazza:
	1. **Fájl típusa**: Például normál fájl, könyvtár vagy szimbolikus link.
	2. **Fájl mérete**: A fájl mérete bájtokban.
	3. **Hozzáférési jogok**: A fájl olvasási, írási és végrehajtási jogosultságai (felhasználó, csoport, mások).
	4. **Tulajdonos UID és csoport GID**: A fájl létrehozója és csoportja.
	5. **Időbélyegek**: Létrehozás, módosítás és elérési idő.
	6. **Adatblokkok helyei**: A fájl tartalmának tárolási helye a lemezen.

10. ==Mi jellemzi a Unix könyvtár típusú fájljait (mit tartalmaznak)?==
    
    A Unix könyvtár típusú fájljai speciális fájlok, amelyek más fájlokat vagy könyvtárakat tartalmaznak, és a fájlrendszer struktúráját szervezik.
    
    ### Jellemzők:
    1. Más fájlok hivatkozásai: A könyvtár fájlok neveket (fájlokat és könyvtárakat) és azok i-node azonosítóit tartalmazzák.
    2. Hierarchikus struktúra: A könyvtárak egymásba ágyazhatók, létrehozva a fájlrendszer fa-struktúráját.
    3. Speciális fájl típus: A könyvtárak nem tárolnak adatokat, csak hivatkozásokat és metaadatokat.

11. ==Milyen parancsokat használunk a közönséges állományok kezeléséhez, mozgatásához?==
    
    A közönséges állományok kezelésére és mozgatására a következő parancsokat használjuk:
	1. **cp (másolás)**: Másolja a fájlokat vagy könyvtárakat.    
	    - Példa: `cp forras.txt cel.txt` (A `forras.txt` fájlt másolja `cel.txt` néven.)
	2. **mv (mozgatás, átnevezés)**: Áthelyezi vagy átnevezi a fájlokat/könyvtárakat.
	    - Példa: `mv dokumentum.txt /home/felhasznalo/` (A fájlt áthelyezi a megadott könyvtárba.)
	3. **rm (törlés)**: Eltávolítja a fájlokat vagy könyvtárakat.
	    - Példa: `rm felesleges.txt` (Eltávolítja a `felesleges.txt` fájlt.)

12. ==Milyen jogosultság információkkal rendelkezik az egyszerű Unix fájlrendszer?==
    
    Az egyszerű Unix fájlrendszer az alábbi **jogosultság információkat** kezeli minden fájlhoz és könyvtárhoz:

    1. **Három szintű jogosultság**:
	    - **Felhasználó (owner)**: A fájl tulajdonosának jogai.
	    - **Csoport (group)**: A fájlt megosztott csoport tagjainak jogai.
	    - **Mások (others)**: Mindenki más jogai.
	2. **Három típusú jogosultság**:
	    - **Olvasás (r)**: A fájl tartalmának olvasása vagy a könyvtár listázása.
	    - **Írás (w)**: A fájl módosítása vagy a könyvtár tartalmának megváltoztatása.
	    - **Végrehajtás (x)**: A fájl futtatása vagy a könyvtárba való belépés.
	3. **Hozzáférési módok (chmod)**: Ezek binárisan tárolt bitmintákban jelennek meg, például `-rw-r--r--`.

13. ==Mutassuk be a UNIX közönséges állományokra (fájlok) alkalmazott jogrendszerét.==
    (Lásd 12. feladat)
    
14. ==Mutassuk be a UNIX jogrendszerét könyvtárakra alkalmazva.==
	(Lásd 12. feladat, eltérés csak a chmod-ban van, a bitmintában az első bit d, ami könyvtárat jelöl)

15. ==Mi a szerepe a chmod parancsnak, mit tud használatáról?==
    A **chmod** parancs szerepe a fájlok és könyvtárak hozzáférési jogosultságainak módosítása.

    ### Használata:
	1. **Szimbólumos mód**:    
	    - Példa: `chmod u+r file.txt` (A tulajdonosnak olvasási jogot ad.)
	    - Szimbólumok:
	        - `u` (tulajdonos), `g` (csoport), `o` (mások), `a` (mindenki).
	        - `+` (hozzáadás), `-` (elvétel), `=` (beállítás).
	2. **Oktális mód**:
	    - Példa: `chmod 755 file.txt` (Jogosultságok: tulajdonos `rwx`, csoport `r-x`, mások `r-x`.)
	    - Oktális számok:
	        - `4` (olvasás), `2` (írás), `1` (végrehajtás), összeadva: pl. `7` = `rwx`.

16. ==Mi a /tmp könyvtár szerepe, és hogyan vannak rajta beállítva a jogosultságok?==
    A **/tmp** könyvtár szerepe ideiglenes fájlok tárolása, amelyeket a rendszer és az alkalmazások rövid ideig használnak.

    ### Jogosultságok:
	1. **Nyitott hozzáférés**: Minden felhasználó számára írható, olvasható és végrehajtható (`rwxrwxrwt`).
	2. **Sticky bit**: A `t` jogosultság biztosítja, hogy csak a fájl tulajdonosa vagy a root törölhet vagy módosíthat fájlokat a könyvtárban, még akkor is, ha más felhasználóknak van írási joguk.

17. ==Milyen jogosultságokkal jöhet létre egy felhasználó új állománya, mi a szerepe az umask parancsnak? Mi a jelentése pl. az umask 0022 értékének?==
    
    ### Új állomány jogosultságai:
	- Alapértelmezett jogosultság:
	    - Fájlok: **666** (írható és olvasható mindenki számára).
	    - Könyvtárak: **777** (írható, olvasható és végrehajtható mindenki számára).
    
    ### Az **umask** szerepe:
	- Meghatározza, hogy ezekből az alapértelmezett jogosultságokból melyeket kell **elvenni** az új állományok létrehozásakor.

    ### Példa: **umask 0022**
	- Az alapértelmezett jogosultságokból:
	    - Fájlok: `666 - 022 = 644` (tulajdonosnak olvasás és írás, másoknak csak olvasás).
	    - Könyvtárak: `777 - 022 = 755` (tulajdonosnak teljes hozzáférés, másoknak csak olvasás és belépés).

18. ==Mit értünk fájlrendszeri útvonal (path) alatt, hányféle módon használjuk?==
    
    A **fájlrendszeri útvonal (path)** egy fájl vagy könyvtár helyének leírása a fájlrendszerben.
    
    ### Típusai:
	1. **Abszolút útvonal**:
	    - A gyökérkönyvtárból (`/`) indul, pl. `/home/felhasznalo/dokumentum.txt`.
	    - Mindig egyértelműen meghatározza a fájl helyét.
	2. **Relatív útvonal**:
	    - Az aktuális munkakönyvtárból indul, pl. `dokumentumok/szamla.txt`.
	    - Az aktuális helytől függően értelmezhető.

19. ==Mit értünk időbélyeg alatt, milyen idővel kapcsolatos információkat tárol el a UNIX az állományokról és hogyan lehet azokat megjeleníteni? Milyen időreferenciával dolgozik a UNIX?==
    
    A UNIX időbélyegek egy fájl vagy könyvtár idővel kapcsolatos metaadatait tartalmazzák.

    ### Tárolt időinformációk:
	1. **Hozzáférési idő (atime)**: Utolsó olvasás időpontja.
	2. **Módosítási idő (mtime)**: A fájl tartalmának utolsó módosításának ideje.
	3. **Létrehozási idő (ctime)**: Az i-node metaadatainak (pl. jogosultságok) utolsó módosítása.

    ### Megjelenítés:
	- Parancs: `ls -l` (mtime), `ls -lu` (atime), `ls -lc` (ctime).

    ### Időreferencia:
	- **UNIX-epoch**: Az időszámítás kezdete 1970. január 1. 00:00:00 (UTC). Az időbélyegek másodpercekben mérik az eltelt időt azóta.

20. ==Mit értünk UNIX hivatkozásokon (link) az állományrendszerben? Hányféle link van, hogyan hozzuk őket létre és miért van szükség ezekre?==
    
    A fájlrendszerben a linkek olyan mutatók, amelyek fájlokra vagy könyvtárakra mutatnak.

    ### Linkek típusai:
	1. **Kemény hivatkozás (hard link)**:
	    - Közvetlenül az i-node-ot hivatkozza.
	    - Ugyanaz az adat elérhető több név alatt.
	    - Nem hozható létre különböző fájlrendszerek között vagy könyvtárakra.
	    - Létrehozás: `ln eredeti.txt link.txt`.
	2. **Szimbolikus hivatkozás (symbolic link)**:
	    - Egy fájl vagy könyvtár elérési útvonalára mutat.
	    - Más fájlrendszerekre és könyvtárakra is készíthető.
	    - Létrehozás: `ln -s eredeti.txt symlink.txt`.

    ### Miért van szükség rájuk?
	- **Kemény link**: Adatok megosztása ugyanazon fájlrendszeren belül.
	- **Szimbolikus link**: Rugalmas hivatkozás, különböző helyekről való eléréshez.

21. ==Mi a különbség az állományrendszerben a szimbolikus és kemény (hard) hivatkozás között?==
    1. **Kemény hivatkozás (hard link)**:
	    - Közvetlenül az i-node-ot hivatkozza.
	    - Ugyanaz az adat több név alatt elérhető.
	    - Csak ugyanazon fájlrendszeren belül működik.
	    - Nem hozható létre könyvtárakra.
	2. **Szimbolikus hivatkozás (symbolic link)**:
	    - Egy fájl vagy könyvtár elérési útvonalára mutat.
	    - Különböző fájlrendszerekre és könyvtárakra is készíthető.
	    - Ha az eredeti fájlt törlik, a link „törött” lesz.

	A fő különbség az, hogy a **kemény link** közvetlenül az i-node-ra mutat, míg a **szimbolikus link** csak egy útvonalat tárol.

22. ==Milyen karakterekből épülhetnek fel az állománynevek? Milyen karaktereket nem használhatunk állománynevekben?==
    
    Az állománynevek **betűkből** (kis- és nagybetűk), **számokból**, **pontból**, **aláhúzásból** (_), és **különböző írásjelekből** épülhetnek. Például: `file.txt`, `data_2025`, `my-file`.

    ### Tiltott karakterek:
	- **/ (perjel)**: Ez a könyvtárak elválasztója, ezért nem használható fájlnévben.
	- **null karakter (ASCII 0)**: A fájlrendszer nem tudja kezelni, és befejezi a fájlnév értelmezését.

	A fájlnév maximális hossza rendszerfüggő, de általában 255 karakter körül van.

23. ==Mit értünk shell minta (shell pattern) alatt? Milyen metakaraktereket használhatunk a shellben az állománynevek listázása során? Adjon példákat.==
    
    A **shell minta** egy olyan speciális szintaxis, amelyet a shell (parancsértelmező) használ fájlok és könyvtárak nevének keresésére vagy listázására.

    ### Metakarakterek a shellben:
	1. **`*` (csillag)**: Bármilyen karakterek (beleértve üres karaktereket) sorozata.
	    - Példa: `*.txt` (minden `.txt` kiterjesztésű fájl).
	2. **`?` (kérdőjel)**: Egyetlen karaktert helyettesít.
	    - Példa: `file?.txt` (pl. `file1.txt`, `fileA.txt`).
	3. **`[]` (szögletes zárójel)**: Egy adott karakterek közül bármelyik szerepelhet.
	    - Példa: `file[123].txt` (pl. `file1.txt`, `file2.txt`, `file3.txt`).
	4. **`{}` (kapcsos zárójel)**: Több lehetőség közül választ.
	    - Példa: `file{1,2,3}.txt` (pl. `file1.txt`, `file2.txt`, `file3.txt`).

24. ==Hogyan tudunk keresni a fájlrendszerben? – mutassuk be röviden a find és locate parancsokat.==

    ### **find parancs**:
	A `find` parancs lehetővé teszi fájlok és könyvtárak keresését a fájlrendszerben a megadott feltételek alapján (pl. név, típus, módosítási idő).
	- **Példa**: `find /home -name "*.txt"` (Minden `.txt` fájl keresése a `/home` könyvtárban).
	- **Jellemzők**: Nagyon rugalmas, különböző keresési feltételeket támogat, de lassú lehet nagy fájlrendszerek esetén.
    
    ### **locate parancs**:
	A `locate` parancs a fájlrendszeren található fájlok gyors keresését teszi lehetővé, mivel egy előre épített adatbázist használ, amely tartalmazza az összes fájl helyét.
	- **Példa**: `locate file.txt` (Keresés a fájl adatbázisban a `file.txt` fájlra).
	- **Jellemzők**: Gyorsabb, mint a `find`, de az adatbázis nem mindig naprakész, ezért szükséges a frissítése (`updatedb`).

	A `find` rugalmasabb, míg a `locate` gyorsabb, de kevesebb friss információval rendelkezik.

25. ==Hogyan tudunk könyvtárakat összepakolni és tömöríteni a tar parancs segítségével (vagy más parancsokkal, pl. zip, unzip)?==

    ### **tar parancs**:
	 A `tar` parancs a könyvtárak és fájlok összepakolására és tömörítésére szolgál.
	
	1. **Könyvtár vagy fájl összepakolása**:
	    - **Parancs**: `tar -cvf archívum.tar könyvtár/`
	    - **Jelentés**:
	        - `c`: Csomagolás (create).
	        - `v`: Verbose, azaz részletes kimenet.
	        - `f`: Fájlnevet adunk meg.
	2. **Tömörítés hozzáadása**:
	    - **Tömörítés gzip-kel**: `tar -czvf archívum.tar.gz könyvtár/`
	        - `z`: Gzip tömörítés.
	    - **Tömörítés bzip2-vel**: `tar -cjvf archívum.tar.bz2 könyvtár/`
	        - `j`: Bzip2 tömörítés.
	3. **Tömörített fájl kicsomagolása**:
	    - **Gzip tömörítés**: `tar -xzvf archívum.tar.gz`
	    - **Bzip2 tömörítés**: `tar -xjvf archívum.tar.bz2`
	    - **Szimpla csomagolás**: `tar -xvf archívum.tar`

    ### **zip és unzip**:
	- **Zip fájl létrehozása**: `zip archívum.zip fájl1 fájl2`
	- **Zip fájl kicsomagolása**: `unzip archívum.zip`

	A **tar** és a **zip/unzip** parancsok is használhatók fájlok és könyvtárak tömörítésére és kicsomagolására, de a **tar** többféle tömörítési módszert is támogat.

26. ==Határozzuk meg mi a szerepe Unix alapú rendszerekben a shell-nek (burok, héj).==
    
    A **shell** (burok, héj) szerepe Unix alapú rendszerekben az, hogy egy parancsértelmezőt biztosít a felhasználók számára, amely lehetővé teszi számukra a rendszerrel való interakciót. A shell:

	1. **Parancsok végrehajtása**: A felhasználó által bevitt parancsokat értelmezi és végrehajtja.
	2. **Szkriptek futtatása**: Lehetővé teszi a parancssorok automatizálását szkriptek (pl. Bash, sh) segítségével.
	3. **Fájlkezelés**: Segít fájlok és könyvtárak kezelésében (pl. létrehozás, törlés, másolás).
	4. **Programok indítása**: Felhasználói programok és rendszerszolgáltatások indítása.

	A shell biztosítja a parancsok végrehajtásának környezetét és lehetővé teszi a rendszer erőforrásainak hatékony kezelését.

27. ==Milyen formátummal hívhatóak meg a Unix parancsok?==
    
    A Unix parancsok többféle formátumban hívhatók meg:
    - **Alap parancs:** A parancs egyszerűen a nevén keresztül, pl. ls, pwd.
    - **Parancs és argumentumok:** A parancs mellett opcionálisan argumentumok és opciók is megadhatók, pl. ls -l /home.
    - **Csővezeték és átirányítás:** A parancsok kimenete más parancsok bemeneteként használható (|), pl. ls | grep "file".
    - **Szkriptek:** Több parancs egymás után végrehajtható egy fájlban, pl. ./script.sh.
	- **Parancsok környezeti változókkal:** Környezeti változók beállítása előtt, pl. export VAR=value a parancs futtatása előtt.

	A Unix parancsok rugalmasan kombinálhatók a fenti formátumokban a különböző feladatok végrehajtására.

28. ==Mit tartalmaznak a Unix kézikönyvek (man)?==

    A **Unix kézikönyvek (man)** a parancsok, rendszerszolgáltatások és konfigurációk részletes leírásait tartalmazzák. Minden parancs vagy program egy **man oldal**-on keresztül érhető el, amely információkat nyújt a parancs használatáról, szintaxisáról, opcióiról, és gyakran példákat is tartalmaz.

	A man oldalakat általában szakaszokra bontják:

	1. **1**: Parancsok (pl. `ls`, `cp`).
	2. **2**: Rendszerrendszolgáltatások (pl. `open`, `read`).
	3. **3**: Könyvtárfunkciók.
	4. **4**: Fájlformátumok és eszközök.
	5. **5**: Konfigurációs fájlok.
	6. **6-8**: Különféle, specifikus parancsok és alkalmazások.

	A `man` parancs segítségével érhetjük el őket, például: `man ls`.
	
29. ==Shell parancsként megadott nevekkel milyen shell vagy rendszerbeli szerkezeteket futtathatunk?==
    
    A **shell parancsként megadott nevekkel** az alábbi **shell vagy rendszerbeli szerkezeteket** futtathatjuk:
	1. **Parancsok**: A rendszer telepített parancsait, pl. `ls`, `pwd`, `cp`.
	2. **Shell szkriptek**: Különböző shell szkriptek (.sh, .bash, stb.), pl. `./script.sh`.
	3. **Rendszerszolgáltatások**: Rendszerszintű programok és háttérszolgáltatások, pl. `systemctl start apache2`.
	4. **Funkciók**: A shell környezetben definiált függvények, pl. `my_function`.
	5. **Aliasok**: A parancsokhoz rendelt rövidítések, pl. `alias ll='ls -l'`.
	6. **Környezeti változók**: A shell környezeti változói, pl. `export PATH=/usr/local/bin:$PATH`.

30. ==Mit nevezünk alias-nak (vagy helyettesítő névnek), hogyan használjuk és miért hasznos?==
    
    Az **alias** (helyettesítő név) egy parancs vagy parancskombináció rövidítését jelenti, mit a felhasználó létrehozhat a shellben. Az alias segítségével egy hosszú parancsot egy rövidebb, könnyebben megjegyezhető névvel helyettesíthetünk.

    ### Használat:
	- Létrehozása: `alias rövid_név='hosszú_parancs'`
	    - Példa: `alias ll='ls -l'`
	- A létrehozott alias használata: `ll` (ez futtatja az `ls -l` parancsot).

    ### Előnyök:
	- **Időmegtakarítás**: Gyakran használt parancsok gyorsabb elérése.
	- **Kényelem**: Rövidebb és könnyebben megjegyezhető parancsok.
	- **Testreszabhatóság**: A shell parancsokat az egyéni igények szerint testreszabhatjuk.

31. ==Hogyan fut le a shell alatt egy parancsvégrehajtás? Mit jelent előtérben és háttérben futtatni egy parancsot?==
    
    ### Parancsvégrehajtás a shell alatt:
	1. **Parancs beírása**: A felhasználó beírja a parancsot a shellbe.
	2. **Shell értelmezi**: A shell értelmezi és végrehajtja a parancsot, lehetőséget adva argumentumok, paraméterek és környezeti változók kezelésére.
	3. **Kimenet**: A parancs végrehajtása után megjelenik a kimenet, ha van.

    ### Előtérben és háttérben való futtatás:
	1. **Előtérben futtatás**:
	    - A parancsot a shellben közvetlenül futtatjuk, és várunk a befejezésére.
	    - Példa: `ls -l` (a parancs befejezése előtt nem térhetünk vissza a promptba).
	2. **Háttérben futtatás**:
	    - A parancs futtatása után a shell azonnal visszaadja a promptot, miközben a parancs a háttérben fut.
	    - **Szintaxis**: A parancsot egy `&` jellel zárjuk le.
	    - Példa: `sleep 60 &` (a parancs 60 másodpercig fut a háttérben, miközben a prompt elérhető marad).

	A **háttérben futtatás** lehetővé teszi, hogy több parancsot párhuzamosan futtassunk anélkül, hogy blokkolná a shell-t.

32. ==Határozzuk meg a shell változóit, mi jellemzi őket?==
    
    A **shell változók** olyan nevek, amelyek értékeket tárolnak, és a shell környezetében elérhetők a parancsok és szkriptek számára.

    ### Jellemzőik:
	1. **Környezeti változók**: A rendszer és a shell környezetében elérhetők, és befolyásolják a shell működését. Pl. `PATH`, `HOME`, `USER`.
	2. **Helyi változók**: A shellben ideiglenesen, egy adott session-ben léteznek. Pl. `var=value`.
	3. **Változók értékadás**: Értéket a `=` jellel rendelhetünk hozzá, pl. `MY_VAR=123`.
	4. **Olvasás**: A változók értékét a `$` jellel érhetjük el, pl. `$MY_VAR`.
	5. **Állandóság**: A környezeti változók megmaradnak más folyamatok számára is, míg a helyi változók csak a shell session idejére érvényesek.

	A shell változók lehetővé teszik a dinamikus konfigurációt és a környezeti beállításokat.

33. ==Miért van szükség a shell alatt a változók {} szerkezettel való elérésére. Adjunk példákat, és ismertessük milyen műveleteket biztosít ez a jelölés az elérésen kívül, ha ismerünk ilyeneket.==
    
    A **`{}`** szerkezetet a **shell** használja a változók egyértelmű elérésére, különösen akkor, ha a változó neve közvetlenül más karakterekkel van összekapcsolva.

    ### Miért szükséges?
	- Ha a változó neve közvetlenül más karakterekkel van összekapcsolva, a `{}` segít elválasztani a változó nevét a környező szövegtől, így a shell helyesen értelmezi a változót.

    ### Példák:
	1. **Alapértelmezett változó elérése**:
	    - `echo $USER` (a `$USER` változó kiíratása).
	2. **Változó és szöveg egyesítése**:
	    - `echo ${USER}_home` (a `USER` változó értékét a `_home` szöveggel összekapcsolja, pl. `john_home`).

    ### További műveletek:
	- **Alapértelmezett érték beállítása**:
	    - `echo ${VAR:-default}` (ha a `VAR` változó nincs beállítva, a "default" értéket adja vissza).
	- **Változó érték módosítása**:
	    - `echo ${VAR:=new_value}` (ha `VAR` nincs beállítva, beállítja `new_value`-ra).

	A **`{}`** lehetővé teszi a változók pontosabb kezelését és manipulálását, elkerülve a félreértéseket.

34. ==Mit értünk környezeti változón, miért van rá szükség, hogyan használjuk? Adjunk példát környezeti változó használatára.==
    
    A **környezeti változó** egy olyan változó, amely a rendszer és a shell működését befolyásolja, és elérhető minden folyamat számára a shell session-ban vagy egy program futtatásakor. A környezeti változók általában a rendszer konfigurálására szolgálnak, például a parancsok elérési útvonalának beállítására.

    ### Miért van rá szükség?
	- **Rendszer konfigurálása**: A környezeti változók tárolják a rendszer szintű beállításokat, mint például a felhasználó neve vagy az elérési útvonalak.
	- **Programok és parancsok működését befolyásolják**: A programok és parancsok környezeti változók segítségével kommunikálnak a rendszerrel.
    
    ### Hogyan használjuk?
	- **Létrehozás**: A változót `export` parancs segítségével hozhatjuk létre, pl. `export PATH=/usr/local/bin:$PATH`.
	- **Elérés**: A változók értékét a `$` jellel érhetjük el, pl. `echo $PATH`.

### Példa:
```bash
export HOME=/home/user 
echo $HOME # Kiírja: /home/user
```

A **környezeti változók** segítenek a shell és a programok működésének finomhangolásában.

35. ==Mit tartalmaz a shell PATH környezeti változója, és hogyan befolyásolja ez a programok futtatását?==
    
    A **`PATH`** környezeti változó egy lista a rendszer könyvtárairól, amelyekben a shell keresni fogja a futtatni kívánt programokat. A **`PATH`** értéke egy sor könyvtár elérési útvonalat tartalmaz, amelyeket kettősponttal (:) választunk el egymástól.

    ### Hogyan befolyásolja a programok futtatását?
	- **Program keresése**: Amikor a felhasználó parancsot ad meg, a shell először a `PATH` változóban szereplő könyvtárakban keresi meg a futtatandó programot.
	- **Rövid parancsok használata**: Ha a parancsot nem tartalmazza teljes elérési úttal, a shell a `PATH` könyvtáraiban próbálja megkeresni.
### Példa:
Ha a `PATH` tartalmazza a `/usr/local/bin` könyvtárat, akkor a `ls` parancsot ezen a helyen keresheti meg a shell:
```bash
echo $PATH # Kimenet: /usr/local/bin:/usr/bin:/bin 
ls # A shell először a /usr/local/bin könyvtárban keres ls parancsot
```

36. ==Mit tartalmaznak a shell LANG, illetve LC_ALL, LC_TIME, stb. környezeti változói, adjon példát. beállításukra és adja meg, hogy értékük hogyan befolyásolja a programok végrehajtását.==
    
    A **`LANG`** és **`LC_*`** környezeti változók a rendszer lokalizációs beállításait tárolják, amelyek meghatározzák, hogyan jelenjenek meg a programok kimenetei (pl. nyelv, időformátum, pénznem).

    ### Fő változók:
	- **`LANG`**: Az alapértelmezett lokalizációs beállítást határozza meg, például a nyelvet és a karakterkészletet. Pl. `en_US.UTF-8`.
	- **`LC_ALL`**: Az összes lokalizációs beállítást felülírja, ha be van állítva.
	- **`LC_TIME`**: Az időformátumot szabályozza (pl. dátum és idő megjelenítése).
	- **`LC_NUMERIC`, `LC_MONETARY`, `LC_CTYPE`** stb.: A különböző típusú adatokat szabályozzák, mint a számok, pénznemek, és karakterek kezelése.

### Példák:

**`LANG` beállítása**:
```bash
export LANG=en_US.UTF-8
```
Ez beállítja az angol nyelvű, UTF-8 karakterkódolású környezetet.

**`LC_TIME` beállítása**:
```bash
export LC_TIME=fr_FR.UTF-8
```
Ez francia formátumban jeleníti meg a dátumot és időt (pl. `jj/mm/aaaa`).
### Hatás a programokra:
- **Nyelvi beállítások**: A programok, például a `date` parancs, a `LANG` és `LC_TIME` változók alapján jelenítik meg a kimenetet (pl. dátum formátum, üzenetek nyelve).
- **Pénznem, számformátumok**: A `LC_NUMERIC` befolyásolja, hogy a számokat hogyan formázzák, például a tizedes elválasztó karaktert.

A **`LANG`** és **`LC_*`** változók segítenek a rendszer nyelvi és regionális beállításainak testreszabásában.

37. ==Mit értünk shell konfigurációs állományokon, mit tartalmaznak ezek? Pl. Mi a szerepe a ~/.bashrc állománynak, és mire használhatjuk egyszerű felhasználóként?==
    
    A **shell konfigurációs állományok** azok az állományok, amelyek a shell környezetének beállításait és testreszabásait tartalmazzák. Ezek az állományok automatikusan betöltődnek, amikor a felhasználó shell session-t indít, és beállítják a környezetet, például a változókat, aliasokat, parancsokat.

    ### Példa: `~/.bashrc`
	- A **`~/.bashrc`** fájl a Bash shell konfigurációs fájlja, amely minden interaktív (nem-login) shell indításakor betöltődik.
	- **Tartalmazhat**:
	    - Aliasok (pl. `alias ll='ls -l'`)
	    - Környezeti változók (pl. `export PATH=$PATH:/usr/local/bin`)
	    - Parancsok, amelyek minden shell indításakor végrehajtódnak.
	    - Egyéb shell beállítások, mint prompt formázás vagy színes kimenet.

    ### Használat egyszerű felhasználóként:
	- **Testreszabás**: Az egyszerű felhasználó a `~/.bashrc` fájlban beállíthatja a saját aliasait, környezeti változóit, vagy módosíthatja a parancsok viselkedését.
	- **Példa**: Ha szeretnénk minden shell session indításakor elérni egy adott könyvtárat, hozzáadhatjuk a `cd ~/my_directory` parancsot a `~/.bashrc`-hoz.

	A **shell konfigurációs állományok** tehát lehetővé teszik a shell környezet személyre szabását, automatizálását és kényelmesebbé tételét.

38. ==Soroljuk fel a shell speciális változóit ($1, ..., $#, stb.), és adjunk példát használatukra!==
    
    ### Fontosabb speciális változók:
	1. **`$0`**: A futó script vagy parancs neve.
	    - Példa: Ha a script neve `myscript.sh`, akkor `$0` értéke: `myscript.sh`.
	2. **`$1`, `$2`, ..., `$N`**: A parancssori argumentumok.
	    - Példa: `./script.sh arg1 arg2`
	        - `$1` = `arg1`, `$2` = `arg2`.
	3. **`$#`**: Az argumentumok száma.
	    - Példa: Ha `./script.sh arg1 arg2` van, akkor `$#` értéke `2`.
	4. **`$@`**: Az összes argumentum, mint egy különálló lista.
	    - Példa: `./script.sh arg1 arg2`, `$@` értéke: `arg1 arg2`.
	5. **`$*`**: Az összes argumentum egyetlen sztringként.
	    - Példa: `./script.sh arg1 arg2`, `$*` értéke: `arg1 arg2` (a sztringben nem lesznek különválasztva az argumentumok).
	6. **`$$`**: A futó shell folyamat azonosítója (PID).
	    - Példa: `echo $$` kiírja a shell PID-jét.
	7. **`$?`**: Az utolsó végrehajtott parancs visszatérési értéke (exit status).
	    - Példa: Ha egy parancs sikeresen lefutott, `$?` értéke `0`, ha nem, akkor valamilyen hibakód.

### Példa a szkript használatára:
```bash
#!/bin/bash 
echo "A script neve: $0" 
echo "Első argumentum: $1" 
echo "Argumentumok száma: $#" 
echo "Minden argumentum: $@"
```
Ha a szkriptet így futtatjuk: `./script.sh arg1 arg2`, a kimenet:
```bash
A script neve: ./script.sh 
Első argumentum: arg1 
Argumentumok száma: 2 
Minden argumentum: arg1 arg2
```

39. ==Mit értünk standard állományokon és parancssori átirányítás alatt? Példák.==
    
    A **standard állományok** azok az alapértelmezett adatfolyamok, amelyeket a shell és a programok használnak a bemenet és kimenet kezelésére. Három fő típusuk van:
	1. **Standard input (stdin)**: A bemeneti adatfolyam, ahonnan a program adatokat olvas. Alapértelmezés szerint a billentyűzetről.
	2. **Standard output (stdout)**: A kimeneti adatfolyam, ahová a program eredményeket ír. Alapértelmezés szerint a képernyőre.
	3. **Standard error (stderr)**: A hibák kimeneti adatfolyama, amely a hibaüzeneteket tartalmazza. Alapértelmezés szerint szintén a képernyőre.
	   
		
    ### Parancssori átirányítás:
	A parancssori átirányítás lehetővé teszi, hogy az adatokat az alapértelmezett állományok helyett fájlokba írjuk, vagy fájlokból olvassuk be.
    
    #### Példák:
	1. **Kimenet átirányítása fájlba (`>`)**:    
	    - `echo "Hello World" > output.txt`  
	        A "Hello World" szöveget az `output.txt` fájlba írja ki.
	2. **Hibaüzenetek átirányítása fájlba (`2>`)**:
	    - `ls non_existing_file 2> error.log`  
	        A hibaüzenetet az `error.log` fájlba irányítja.
	3. **Kimenet és hibaüzenet egyesítése (`&>` vagy `2>&1`)**:
	    - `ls non_existing_file &> output_and_error.log`  
	        A standard kimenetet és hibaüzenetet egy fájlba irányítja.
	4. **Bemenet átirányítása fájlból (`<`)**:
	    - `sort < input.txt`  
	        Az `input.txt` fájl tartalmát olvassa be a `sort` parancs.
	        
40. ==Miért fontos az a mód, ahogyan a UNIX a standard kimenet és bemenet fogalmát használja?==
    
    A **standard kimenet (stdout)** és **standard bemenet (stdin)** fogalmai a UNIX rendszeren alapvetően fontosak, mert lehetővé teszik a programok közötti rugalmas adatáramlást és a parancsok láncolását. Ahelyett, hogy a programok közvetlenül fájlokkal dolgoznának, a bemenetek és kimenetek segítségével adatokat olvashatnak és írhatnak, ami növeli a rendszer rugalmasságát és hatékonyságát.

    ### Miért fontos?
	1. **Modularitás és összekapcsolhatóság**: A programok könnyen kombinálhatók úgy, hogy egy program kimenete egy másik program bemeneteként szolgál, például a csővezetékek (pipe) használatával (`|`).
	2. **Fájlokkal való egyszerű kezelés**: Az adatokat fájlokba lehet irányítani, anélkül hogy módosítani kellene a programok kódját (pl. `>` a kimenet átirányítására, `<` a bemenet átirányítására).
	3. **Hibakezelés**: A standard hiba kimenet (stderr) elkülönítése segít a hibák külön kezelésében a kimenettől.

41. ==Mit értünk parancssori csővezeték alatt? (mire jó, példák).==
    
    A **parancssori csővezeték (pipe)** lehetővé teszi több parancs összekapcsolását úgy,  hogy az egyik parancs kimenete a következő parancs bemeneteként szolgál. Ez hatékony adatfolyam-kezelést tesz lehetővé anélkül, hogy közbenső fájlokat kellene létrehozni.

    ### Mire jó?
	- **Adatok átadása parancsok között**: Lehetővé teszi, hogy az egyik parancs eredménye közvetlenül a következő parancs bemeneteként szolgáljon.
	- **Rugalmas parancsok láncolása**: Egyszerűsíti az összetett műveletek végrehajtását, miközben csökkenti a szükséges fájlok számát.

    ### Példák:
	1. **Keresés és rendezés**:
	    - `ls | sort`  
	        Az `ls` parancs kimenetét a `sort` parancsnak adja át, amely rendezi az állományokat.
	2. **Szűrés**:
	    - `ps aux | grep firefox`  
	        A `ps aux` parancs kimenetét a `grep` szűri, és csak a `firefox`-ra vonatkozó sorokat jeleníti meg.
	        
42. ==Mit értünk parancs helyettesítés alatt (mire jó, példák)?==
    
    A **parancs helyettesítés** (command substitution) lehetővé teszi, hogy egy parancs kimenetét egy másik parancsban vagy változóban használjuk, így dinamikusan beilleszthetjük a parancsok eredményét.

    ### Mire jó?
	- **Dinamikus értékek beszúrása**: Segít a parancsok kimenetének felhasználásában más parancsokban vagy változókban.
	- **Automatizálás és egyszerűsítés**: Használható olyan helyeken, ahol a parancs eredménye szükséges további műveletekhez.
    
    ### Példák:
	1. **Parancs kimenetének változóba helyettesítése**:
	    - `current_dir=$(pwd)`  
	        A `pwd` parancs kimenetét (a jelenlegi könyvtár) eltárolja a `current_dir` változóban.
	2. **Parancs kimenete közvetlenül más parancsban**:
	    - `echo "A jelenlegi könyvtár: $(pwd)"`  
	        A `pwd` parancs eredményét (aktuális könyvtár) beilleszti az `echo` parancsba.

43. ==Milyen szöveg szűröket ismer Linux alatt?==
    
    Linux alatt több szövegszűrő parancs is létezik, amelyek segítségével szöveges fájlokat vagy adatfolyamokat kereshetünk, szűrhetünk, rendezhetünk és módosíthatunk. Néhány fontosabb:
	1. **`grep`**: Szöveg keresésére, minták egyezésére.
	    - Példa: `grep "minta" fájl.txt` – Keresés a "minta" szóra.
	2. **`sed`**: Szövegek módosítása (szerkesztés) szabályok alapján.
	    - Példa: `sed 's/keresett/helyettesitett/' fájl.txt` – Cserél "keresett" szót "helyettesitett"-re.
	3. **`awk`**: Szöveges fájlok elemzésére és adatok kiválasztására (oszlopok, mezők kezelése).
	    - Példa: `awk '{print $1}' fájl.txt` – Az első oszlop kiírása.
	4. **`cut`**: Szöveges fájlok oszlopainak levágására.
	    - Példa: `cut -d' ' -f1 fájl.txt` – Az első oszlop levágása szóköz alapján.
	5. **`sort`**: Szöveg rendezésére.
	    - Példa: `sort fájl.txt` – Szöveg fájl rendezése.
	6. **`uniq`**: Ismétlődő sorok eltávolítása.
	    - Példa: `uniq fájl.txt` – Csak egyedi sorok megjelenítése.

44. ==Ismertessük a sort és uniq parancsokat: mit végeznek el, hogyan használjuk, adjunk példát használatukra.==
    
    ### **`sort` parancs**:
	A **`sort`** parancs szöveges fájlok vagy adatfolyamok sorainak rendezésére szolgál. Alapértelmezés szerint növekvő sorrendbe rendezi a sorokat.
	
    #### Használat:
	- **Szintaxis**: `sort [opciók] [fájl]`
    #### Példa:
	- `sort fájl.txt` – A `fájl.txt` sorait rendezi növekvő sorrendbe.
	- `sort -r fájl.txt` – Csökkenő sorrendbe rendezi a sorokat.
    
    ### **`uniq` parancs**:
	A **`uniq`** parancs a szöveges fájlokban vagy adatfolyamban ismétlődő sorokat távolítja el, és csak az egyedi sorokat jeleníti meg.

    #### Használat:
	- **Szintaxis**: `uniq [opciók] [fájl]`
    #### Példa:
	- `uniq fájl.txt` – Eltávolítja a `fájl.txt` ismétlődő sorait, és csak az egyedi sorokat jeleníti meg.
	- `sort fájl.txt | uniq` – A sorokat először rendezi, majd eltávolítja az ismétlődéseket.

45. ==Mit nevezünk metakarakternek a shell mintában vagy reguláris kifejezésekben?==
    
    A **metakarakterek** a shell mintákban és reguláris kifejezésekben speciális karakterek, amelyek nem a szó szerinti értelmet, hanem valamilyen speciális funkciót képviselnek.

46. ==Mit nevezünk egy C program kilépési kódjának (exit code), és hogyan használjuk ezt fel a shell alatt? Mi a szerepe a ? változónak.==
    
    A **kilépési kód** (exit code) a C programok (és más rendszerszintű programok) futása után visszaadott érték, amely a program végrehajtásának sikerességét vagy hibáját jelzi. A sikeres végrehajtás általában `0` értéket jelent, míg a nem sikeres végrehajtás egy pozitív egész számot (hiba kódot) ad vissza.

    ### Shell használata:
	A shell az utolsó végrehajtott parancs kilépési kódját a speciális **`$?`** változóban tárolja.
    #### Példák:
```bash
echo $? # Kiírja: 0, ha az előző parancs sikeresen futott

non_existent_command # Hibát okoz 
echo $? # Kiírja: 127 (hiba kód)
```

47. ==Ismertessük példákkal a || , && , ! vezérlő szerkezeteket.==

	A **`||`**, **`&&`**, és **`!`** vezérlő szerkezetek a shell-ben logikai operátorok, amelyek segítségével több parancsot lehet összekapcsolni és feltételekhez kötni.

	### 1. **`&&` (logikai ÉS)**:
	Ha az első parancs sikeresen lefut (kilépési kódja 0), akkor a második parancs is végrehajtódik.
	
	### 2. **`||` (logikai VAGY)**:
	Ha az első parancs hibát jelez (nem nulla kilépési kóddal), akkor a második parancs végrehajtódik.
	
	### 3. **`!` (logikai negáció)**:
	A parancs eredményét negálja, tehát ha a parancs sikeres, akkor `false` értéket ad vissza, ha pedig hibás, akkor `true` értéket.

48. ==Ismertessük a test ([]) vagy [[]] parancsot (állományokra és sztringekre)!==
    
    ### 1. **`test` vagy `[]`** (egyszerű feltételes vizsgálat):
	Használható fájlok és sztringek vizsgálatára.

    #### Fájlok:
	- **`-e`**: Fájl létezésének ellenőrzése.
	    - Példa: `test -e fájl.txt` vagy `[ -e fájl.txt ]` – Igaz, ha létezik a `fájl.txt`.
	- **`-d`**: Könyvtár létezése.
	    - Példa: `test -d /home/user` vagy `[ -d /home/user ]` – Igaz, ha a könyvtár létezik.
	- **`-f`**: Fájl létezése és rendes fájl.
	    - Példa: `test -f fájl.txt` vagy `[ -f fájl.txt ]` – Igaz, ha `fájl.txt` egy rendes fájl.

    #### Sztringek:
	- **`=`**: Sztringek összehasonlítása.
	    - Példa: `test "$str1" = "$str2"` vagy `[ "$str1" = "$str2" ]` – Igaz, ha `str1` és `str2` megegyeznek.
	- **`-z`**: Üres sztring vizsgálata.
	    - Példa: `test -z "$str"` vagy `[ -z "$str" ]` – Igaz, ha a sztring üres.

    ### 2. **`[[]]`** (kiterjesztett teszt):
	A **`[[]]`** egy kiterjesztett teszt, amely az alap `test` vagy `[]` parancsokhoz képest fejlettebb, és támogatja a sztringek bonyolultabb összehasonlítását, valamint a logikai operátorokat.

	- **`==`**: Sztringek összehasonlítása (jobban kezel bizonyos karaktereket, mint a `test`).
	    - Példa: `[[ "$str1" == "$str2" ]]` – Igaz, ha `str1` és `str2` megegyeznek.
	- **`&&`**, **`||`**: Logikai operátorok.
	    - Példa: `[[ -e fájl.txt && -f fájl.txt ]]` – Igaz, ha létezik a fájl és rendes fájl.

49. ==Hogyan kezelhetjük shell szkriptekben a parancssori paramétereket?==
50. ==Ismertessük, hogyan használjuk az if vezérlési szerkezetet!==
    
```bash
#!/bin/bash 
if [ -e fájl.txt ]; then 
    echo "A fájl létezik." 
elif [ -e másik_fájl.txt ]; then 
	echo "A másik fájl létezik." 
else 
	echo "Egyik fájl sem létezik." 
fi
```

51. ==Hogyan használjuk a while, case, select szerkezeteket?==
    
    #### while
```bash
#!/bin/bash
count=1
while [ $count -le 5 ]; do
    echo "Szám: $count"
    ((count++))
done
```

#### case
```bash
#!/bin/bash 
echo "Adj meg egy számot (1-3):" 
read num 

case $num in 
	1) echo "Egy" ;; 
	2) echo "Kettő" ;; 
	3) echo "Három" ;; 
	*) echo "Érvénytelen szám" ;; 
esac
```

#### select
```bash
#!/bin/bash 
select option in "Opció 1" "Opció 2" "Kilépés"; do 
	case $option in 
		"Opció 1") echo "Kiválasztottad az Opció 1-et" ;; 
		"Opció 2") echo "Kiválasztottad az Opció 2-t" ;; 
		"Kilépés") echo "Kilépés..." ; break ;; 
		*) echo "Érvénytelen választás" ;; 
	esac 
done
```


52. ==Tudjunk egyszerű aritmetikai műveleteket elvégezni shell változókkal. Ismertessük a shell (( )) szerkezetét, használati módját és az elvégezhető műveleteket.==
    
    A **`(( ))`** szerkezet a shell-ben aritmetikai műveletek elvégzésére szolgál változókkal.
    
    ### Használat:
	- Az **`(( ))`** belsejében végezhetünk egyszerű aritmetikai műveleteket, és az eredményt változóba tárolhatjuk.
	- A műveletek előtt nem szükséges `$` a változók használatához.

53. ==Tudjuk használni a read parancsot.==
    
    A **`read`** parancs lehetővé teszi a felhasználói bemenet beolvasását a shell-ben. ### Használat: 
    
   1. **Egyszerű bemenet beolvasása**: 
```bash 
read változó 
echo "Beírtad: $változó"
```
   2.  Több bemenet beolvasása:
```bash
read nev kor 
echo "Név: $nev, Kor: $kor"
```
  3. Bemenet alapértelmezett értékkel:
```bash
read -p "Add meg a neved: " nev
echo "Név: $nev"
```
  4. Titkos bemenet
```bash
read -s -p "Jelszó: " jelszo 
echo "A jelszó be lett olvasva."
```


54. ==Tudjuk kezelni a parancssor paramétereit mint opciókat is case szerkezettel vagy a getopts függvénnyel.==

#### case
```bash
#!/bin/bash 
while [ "$1" != "" ]; do 
	case $1 in 
		-a) echo "Option A" ;; 
		-b) echo "Option B" ;; 
		-h) echo "Help" ;; 
		*) echo "Unknown option: $1" ;; 
	esac 
	shift 
done
```

#### getopts
```bash
#!/bin/bash
while getopts "ab:h" option; do
    case $option in
        a) echo "Option A" ;;
        b) echo "Option B, argumentum: $OPTARG" ;;
        h) echo "Help" ;;
        *) echo "Invalid option" ;;
    esac
done
```

55. ==Ismertessük a bővített reguláris kifejezéseket (működési elv, metakarakterek ismerete)==

    ### a) **Csoportosító operátor `()`**:
	- A **`()`** segítségével csoportosíthatunk kifejezéseket, hogy azok együtt legyenek kezelve egy kvantorral vagy más operátorral. Példa: `(ab|cd)` találja meg az "ab" vagy "cd" mintákat.
	
    ### b) **Karakterhalmazok**:
	- A **`[ ]`** karakterhalmazokat jelöl. Bármely karakter, amely szerepel a szögletes zárójelek között, illeszkedni fog. Példa: `[a-z]` minden kisbetűt illeszt.
    
    ### c) **Kvantorok**:
	- **`*`**: 0 vagy több ismétlés.
	- **`+`**: 1 vagy több ismétlés.
	- **`?`**: 0 vagy 1 ismétlés.
	- **`{n,m}`**: Legalább n, legfeljebb m ismétlés.  
	    Példa: `a{2,4}` találja meg az "aa", "aaa", vagy "aaaa" mintákat.
    
    ### d) **És/Vagy szekvenciák**:
	- **`|`**: Vagy (alternatíva) operátor. Példa: `a|b` illeszkedik "a"-ra vagy "b"-re.
    
    ### e) **Horgonyok**:
	- A **`^`** és **`$`** a horgonyok, amelyek a szöveg elejére (**`^`**) és végére (**`$`**) vonatkoznak. Példa: `^abc` csak akkor illeszkedik, ha a "abc" a szöveg elején van.
    
    ### f) **Visszautalások**:
	- A **`\n`** (ahol n a csoport száma) lehetőséget biztosít a csoportosított minták újrahasználására. Példa: `(ab)\1` illeszkedik az "abab"-ra, mivel a `\1` visszautal az első csoportot jelölő "ab"-ra.

56. ==Ismertessük a ... parancsot! formában bármely parancsról amelyet használtunk illik tudni működési elvét (opciókat nem, de díjazzuk azt, ha arra is emlékeznek)==
    
    **a) Ismertessük az `egrep` parancsot!**  
		Az **`egrep`** (extended grep) parancs az **`grep`** bővített változata, amely bővített reguláris kifejezéseket (ERE) használ a kereséshez. Alapvetően a **`grep -E`** parancs rövidítése.

	**b) Ismertessük a `sed` szerkesztő működési elvét!**  
		A **`sed`** (stream editor) egy szövegszerkesztő eszköz, amely adatfolyamon végez szövegmódosításokat. Kereshetünk, cserélhetünk, törölhetünk sorokat, illetve más műveleteket végezhetünk anélkül, hogy a fájlt manuálisan szerkesztenénk.

	**c) Ismertessük a `sort` parancsot!**  
		A **`sort`** parancs a szöveges fájlokat vagy bemenetet rendezi sorba. Alapértelmezés szerint növekvő sorrendbe rendezi, de több opcióval (pl. fordított sorrend, számérték szerinti rendezés) is testre szabható.

57. ==Mit nevezünk UNIX feladatnak (job), és milyen lehetőségeink vannak a parancssoron a kezelésükre ()?==
    
    A **UNIX feladat (job)** egy futó folyamat, amelyet a shell indított. A feladatok lehetnek előtérben vagy háttérben futó folyamatok.

    ### Feladatkezelési lehetőségek:
	- **`fg`**: Előtérbe helyezi a háttérben futó feladatot.
	- **`bg`**: Háttérbe küldi az előtérben futó feladatot.
	- **`jobs`**: Kilistázza az összes futó feladatot.
	- **`kill`**: Leállítja a feladatot, jelet küldve neki.

	Példa:
	- **`jobs`**: megmutatja a háttérben futó feladatokat.
	- **`fg %1`**: előtérbe hozza az első háttérben futó feladatot.

58. ==Melyek egy folyamat állapotai, amit követni, illetve befolyásolni tudunk a parancssorról?==
    
    A folyamatoknak az alábbi állapotai lehetnek:
	1. **Futó (Running)**: A folyamat éppen végrehajtás alatt van.
	2. **Várakozó (Waiting)**: A folyamat blokkolva van, pl. I/O műveletre vár.
	3. **Háttérben futó (Background)**: A folyamat nem blokkolja a parancssort, és háttérben fut.
	4. **Leállított (Stopped)**: A folyamat végrehajtása szünetel, pl. a felhasználó leállította.
	5. **Befejezett (Terminated)**: A folyamat befejeződött.

    ### Parancssori lehetőségek:
	- **`fg`**: Előtérbe hozza a háttérben futó folyamatot.
	- **`bg`**: Háttérbe küldi az előtérben futó folyamatot.
	- **`kill`**: Leállítja vagy jelet küld a folyamatnak.
	- **`jobs`**: Kilistázza a folyamatokat és azok állapotát.

59. ==Mi jellemzi a folyamat felfüggesztett állapotát (stopped vagy traced). Hogyan jut oda, és hogyan hagyhatja el azt?==
    
    A **felfüggesztett (stopped)** vagy **nyomon követett (traced)** folyamatok a végrehajtásuk közben szünetelnek. Ezt akkor érhetjük el, ha egy folyamatot **`Ctrl+Z`** billentyűkombinációval állítunk meg, vagy jelet küldünk neki **`kill -SIGSTOP`** parancs segítségével.

	A folyamatot a következőképpen folytathatjuk:
	- **`fg`**: Előtérbe hozza és folytatja a folyamatot.
	- **`bg`**: Háttérben folytatja a folyamatot.

60. ==Mi jellemzi a folyamat várakozó állapotát (sleep)?==
    
    A **várakozó (sleep)** állapotú folyamatok nem végeznek aktív munkát, hanem egy külső eseményre (pl. I/O művelet befejezésére) várnak. A folyamat **`sleep`** parancs segítségével vagy más blokkoló műveletekkel kerülhet ebbe az állapotba.

	A **`sleep`** parancs például egy meghatározott ideig tartó várakozást indít el (pl. `sleep 5` 5 másodpercig). A folyamat addig inaktív, majd a várakozási idő leteltével folytatódik.
	
61.  ==Mi a folyamatazonosító, hogyan kérhetjük le egy folyamat azonosítóját parancssorról és mire használhatjuk (példák)?==
    
		A **folyamatazonosító (PID)** egy egyedi szám, amely azonosít egy futó folyamatot a rendszerben.

     ### Hogyan kérhetjük le:
		- **`$$`**: A shell aktuális folyamatának PID-jét adja vissza.
		- **`pidof <program>`**: Egy program PID-ját adja vissza.
		- **`ps`**: Listázza a folyamatokat és azok PID-ját.

     ### Felhasználás:
		- **`kill <PID>`**: Leállítja a megadott PID-jű folyamatot.
		- **`top`**: Megjeleníti a folyamatokat és azok PID-jait valós időben.

62. ==Mit jelent az apa-fiú kapcsolat két folyamat közt, hogyan befolyásolja ez a folyamatok futását?==
    
    Az **apa-fiú kapcsolat** két folyamat között azt jelenti, hogy egy **szülő (apa)** folyamat elindít egy **gyermek (fiú)** folyamatot. A szülő és a gyermek közötti kapcsolat hatással van a folyamatok futására, például:

	- A gyermek folyamat befejezésével a szülő értesülhet róla, és megkaphatja a kilépési kódját.
	- A szülő folyamat általában képes irányítani a gyermek folyamatokat (pl. jeleket küldeni nekik).
	- Ha a szülő meghal, a gyermek "árva" lesz, és más folyamat veszi át a felügyeletét (általában a **`init`**).

63. ==Tudjuk használni a ps, pstree, kill, pgrep, pkill parancsokat. Ismertessük a shell terminálról kiadható folyamatkezelő parancsait.==
    
    - **`ps`**: A folyamatokat listázza. Példák:
	    - `ps` – Az aktuális shell folyamatok listája.
	    - `ps aux` – Minden folyamat listázása.
	- **`pstree`**: A folyamatokat fastruktúrában, hierarchikusan jeleníti meg.
	- **`kill`**: Jelet küld egy folyamatnak, általában a leállítására. Példa: `kill <PID>`.
	- **`pgrep`**: Folyamatok keresése név alapján, visszaadja a PID-t. Példa: `pgrep firefox`.
	- **`pkill`**: Folyamatok leállítása név alapján. Példa: `pkill firefox`.

64. ==Mit nevezünk jelzésnek? Hogyan küldhetünk jelzést egy folyamatnak?==
    
    A **jelzés** (signal) egy aszinkron üzenet, amelyet a rendszer vagy más folyamat küld egy futó folyamatnak valamilyen esemény jelzésére, például leállításra, szüneteltetésre vagy újraindításra.

    ### Jelzés küldése:
	- **`kill <PID>`**: Jelet küld a megadott PID-jű folyamatnak (alapértelmezett a **`SIGTERM`**, ami kérés a folyamat leállítására).
	- **`kill -SIGKILL <PID>`**: Erőszakos leállítás (nem hagy lehetőséget a folyamat számára a tisztításra).
	- **`kill -SIGSTOP <PID>`**: A folyamat szüneteltetése.
	- **`kill -SIGCONT <PID>`**: A szüneteltetett folyamat folytatása.

65. ==Hogyan kezelünk jelzéseket a shell programokban? Mutassuk be részletesen hogy fut le egy jelzés kezelés!==
    
    A shell programokban a jelzések kezelése a **trap** parancs segítségével történik. A **trap** lehetővé teszi, hogy a shell figyelje a jelzéseket, és meghatározott műveletet hajtson végre, ha egy jelzést kap.

    ### Jelzés kezelés lépései:
	1. **`trap` parancs használata**: Beállítjuk a jelzés kezelésére szolgáló parancsot.
	    - Példa: `trap 'echo "SIGINT jelzés érkezett!"' SIGINT`
	2. **Jelzés küldése**: Ha a folyamat SIGINT jelet kap (pl. `Ctrl+C`), a `trap` által meghatározott parancs hajtódik végre.
	3. **Működés**: A fenti példa esetében, ha a felhasználó megszakítja a programot **`Ctrl+C`**-val, a shell a kijelölt üzenetet (`SIGINT jelzés érkezett!`) jeleníti meg.

	A **trap** használatával más jelzéseket is kezelhetünk, mint például **`SIGTERM`**, **`SIGQUIT`**, stb.

66. ==Háttérben indított folyamatok kezelése: fg, bg, Ctrl-Z, nohup, disown, exec használata.==
    
    A háttérben indított folyamatok kezelése a következő parancsokkal történik:
	- **`fg`**: Előtérbe hozza és folytatja a háttérben futó folyamatot.
	- **`bg`**: A háttérben folytatja egy felfüggesztett folyamatot.
	- **`Ctrl+Z`**: Felfüggeszti a folyamatot és háttérbe helyezi.
	- **`nohup`**: A folyamatot úgy indítja el, hogy az ne álljon le a shell bezárásakor. Példa: `nohup command &`.
	- **`disown`**: Eltávolítja a folyamatot a shell folyamatkezeléséből, így a shell bezárása nem befolyásolja.
	- **`exec`**: A shell folyamatot egy másik programmal helyettesíti, a shell nem tér vissza a parancs után. Példa: `exec command`.

67. ==Hogyan küldünk billentyűzetről vagy folyamatból jelzéseket?==
    
    - **Billentyűzetről jelzés küldése**:
	    - **`Ctrl+C`**: **SIGINT** jelzést küld a folyamatnak, megszakítja.
	    - **`Ctrl+Z`**: **SIGSTOP** jelzést küld a folyamatnak, felfüggeszti.
	    - **`Ctrl+D`**: **EOF** (End of File) jelzést küld, jelezve a bemeneti adat véget.
	- **Folyamatból jelzés küldése**:
	    - **`kill <PID>`**: Jelzést küld a megadott PID-jű folyamatnak (pl. `kill -SIGTERM <PID>`).
	    - **`kill -SIGKILL <PID>`**: Erőszakos leállítás.

68. ==Hogyan követi az idő múlását egy Unix alapú rendszer. Idővel kapcsolatos fogalmak, idő referencia (UTC), időbélyeg fogalma?==
    
    A Unix alapú rendszerek **UTC** (Coordinated Universal Time) referenciaidőt használnak, amely az idő mérésének alapja. Az időt másodpercekben számolják az **epoch** kezdete (1970. január 1., 00:00:00 UTC) óta.

    ### Idővel kapcsolatos fogalmak:
	- **Időbélyeg (timestamp)**: Az idő egy adott pillanatra vonatkozó másodpercben kifejezett értéke (pl. 1609459200 másodperc az epoch óta).
	- **UTC**: A globálisan elfogadott időreferencia, amelyet a rendszer használ az idő nyilvántartásához.

	A rendszer az aktuális időt a **`date`** parancs segítségével jeleníti meg, az időbélyegek pedig fájlok metaadataiként tárolódnak.

69. ==Tudjuk használni a date parancsot (dátum, idő alakok kiírása, időbélyegekkel való számítás).==
    
    A **`date`** parancs segítségével megjeleníthetjük és formázhatjuk az aktuális dátumot és időt.

	- **Dátum megjelenítése**: `date`
	- **Formázott dátum**: `date "+%Y-%m-%d %H:%M:%S"`
	- **Időbélyeg (timestamp) megjelenítése**: `date +%s`
	- **Dátum hozzáadása/levonása**: `date -d "2 days ago"` (két nappal ezelőtti dátum) `date -d "next Friday"` (jövő péntek dátuma)

	A **`date`** parancs segítségével a dátumot és időt különböző formátumokban is megjeleníthetjük.

70. ==Hogyan tudunk idő intervallumokat mérni egy shell szkriptben?==
    
    Idő intervallumokat mérhetünk a **`time`** parancs használatával vagy a **`date`** parancs segítségével.

	1. **`time` parancs**: Egy parancs végrehajtásának idejét méri.
	    - Példa: `time <parancs>`
	2. **`date` parancs**: Kezdeti és befejező időpontokat rögzítünk.
	    - Kezdés: `start=$(date +%s)`
	    - Befejezés: `end=$(date +%s)`
	    - Idő eltelt: `elapsed=$((end - start))`

	A **`$SECONDS`** változó is használható futásidő mérésére:
	- Példa: `SECONDS=0; <parancs>; echo $SECONDS` (a parancs futásának ideje másodpercekben).

71. ==Ismertessük a terminálról küldhető jelzéseket, és magyarázzuk el részletesen kezelésüket!==
   
	A terminálról küldhető jelzések (signal) az alábbiak:
	1. **`Ctrl+C`** – **SIGINT** jelzés: Megszakítja a futó folyamatot (Interrupt).
	2. **`Ctrl+Z`** – **SIGSTOP** jelzés: Felfüggeszti a folyamatot (Stop).
	3. **`Ctrl+D`** – **EOF** (End of File): Befejezi a bemeneti adatot.

	A folyamatok jelzéseit a **`kill`** parancs segítségével is küldhetjük:
	- **`kill -SIGTERM <PID>`**: Normál leállítás.
	- **`kill -SIGKILL <PID>`**: Erőszakos leállítás.

	Jelzés kezelés shellben: A **trap** parancs segítségével jeleket kezelhetünk szkriptekben:
	- **`trap 'echo "SIGINT received"' SIGINT`**: A **SIGINT** jelzés fogadása után végrehajtott művelet.

72. ==Ismertessük a folyamatokat leállító fontosabb jelzéseket (mit oldanak meg, mi az implicit viselkedés, melyik kezelhető jelzéssel és melyik nem?)==
    
    A folyamatokat leállító fontosabb jelzések a következők:
	1. **SIGTERM (Terminate)**:    
	    - Cél: Finom módon leállítja a folyamatot.
	    - Implicit viselkedés: A folyamatnak van ideje tisztán befejezni, és erőforrásokat felszabadítani.
	    - Kezelhető: A folyamat reagálhat rá, pl. fájlok lezárásával.
	2. **SIGKILL (Kill)**:
	    - Cél: Azonnali és erőszakos leállítás.
	    - Implicit viselkedés: A folyamat azonnal leáll, nincs lehetőség tisztulásra.
	    - Kezelhető: Nem kezelhető, a folyamat nem reagálhat rá.
	3. **SIGSTOP (Stop)**:
	    - Cél: A folyamat felfüggesztése.
	    - Implicit viselkedés: A folyamat állapota "stopped", később visszaállítható.
	    - Kezelhető: Nem kezelhető, de később folytatható **fg** vagy **bg** parancsokkal.
	4. **SIGINT (Interrupt)**:
	    - Cél: A folyamat megszakítása (pl. Ctrl+C).
	    - Implicit viselkedés: A folyamat megszakad.
	    - Kezelhető: Kezelhető, de alapértelmezetten leállítja a folyamatot.
	      
	A legfontosabb különbség, hogy **SIGKILL** és **SIGSTOP** nem kezelhetők, míg a **SIGTERM** és **SIGINT** általában választható módon kezelhetők a folyamatok által.
	
73. ==Ismerni az INT, QUIT, TSTP, TERM, STOP, CONT, HUP, USR1, stb. jelzések implicit kezelését, és tudni jelzéskezelőket írni kis feladatokhoz.==
    
    A következő UNIX jelzések és azok implicit kezelése:
	1. **SIGINT (Interrupt)**:
	    - Hatás: Ctrl+C, a folyamat megszakítása.
	    - Implicit kezelés: A folyamat leáll.
	1. **SIGQUIT (Quit)**:
	    - Hatás: A folyamat leáll és generál egy core dump-ot.
	    - Implicit kezelés: A folyamat leáll és hibát jelent.
	1. **SIGTSTP (Terminal Stop)**:
	    - Hatás: A folyamat felfüggesztése (Ctrl+Z).
	    - Implicit kezelés: A folyamat "stopped" állapotba kerül.
	1. **SIGTERM (Terminate)**:
	    - Hatás: A folyamat leállítása.
	    - Implicit kezelés: A folyamat leáll, lehetőséget adva tisztulásra.
	1. **SIGSTOP (Stop)**:
	    - Hatás: Azonnali felfüggesztés.
	    - Implicit kezelés: A folyamat azonnal felfüggesztésre kerül, nem kezelhető.
	1. **SIGCONT (Continue)**:
	    - Hatás: A felfüggesztett folyamat folytatása.
	    - Implicit kezelés: A folyamat folytatódik a felfüggesztés után.
	1. **SIGHUP (Hangup)**:
	    - Hatás: A terminálról való leválasztás (gyakran háttérfolyamatokhoz használják).
	    - Implicit kezelés: A folyamat leállhat, de sok esetben újraindulhat.
	1. **SIGUSR1, SIGUSR2 (User-defined signals)**:
	    - Hatás: Felhasználó által definiált jelzések, specifikus célokra.
	    - Implicit kezelés: Nincs alapértelmezett kezelés, de a folyamat reagálhat rájuk egyedi módon.

	**Jelzéskezelő írása**: A jelzéseket a `signal` vagy `sigaction` rendszerhívással lehet kezelni. Példa:
	
```bash
#!/bin/bash
trap "echo 'SIGINT signal received!'" SIGINT
while true; do
  sleep 1
done
```
    
74. ==Mi jellemzi a shell alatti függvényeket? Tudjunk egyszerű kis függvényeket írni.==
    
    A shell alatti függvények jellemzői:
	- **Definíció**: A függvényeket a `function` kulcsszóval vagy egyszerűen név és zárójelek használatával definiáljuk.
	- **Paraméterek**: A függvények paramétereket fogadhatnak, ezek a `$1`, `$2`, ... stb. változókon keresztül elérhetők.
	- **Visszatérés**: A függvények visszatérhetnek értékkel a `return` kulcsszóval (általában az utolsó végrehajtott parancs kimenetét adja).
	- **Elérhetőség**: A függvények csak a szkriptben vagy a shell session-ben elérhetők, amelyben létre lettek hozva.

	Példa egyszerű függvényre:
```bash
#!/bin/bash
my_function() {
  echo "Hello, $1!"
}

my_function "World"  # Kimenet: Hello, World!

```
    
75. ==Tudjunk jelzéseket kezelni a trap parancs és függvények segítségével.==
    
    A `trap` parancs segítségével kezelhetjük a jelzéseket a shell-ben. A `trap` lehetővé teszi, hogy egy függvényt vagy parancsot hajtsunk végre, ha egy adott jelzés (pl. SIGINT) érkezik.

```bash
#!/bin/bash
trap "echo 'SIGINT received!'" SIGINT

while true; do
  sleep 1
done

```

```bash
#!/bin/bash
my_function() {
  echo "Cleaning up..."
}

trap my_function SIGINT

while true; do
  sleep 1
done

```
    
76. ==Tudjunk megvárni szkriptekben háttér folyamatokat a wait parancs segítségével.==
    
    A `wait` parancs lehetővé teszi, hogy megvárjuk egy háttérben futó folyamat befejeződését a shell szkriptekben. A parancs a háttérfolyamatok befejezését blokkolja, és visszaadja annak kilépési kódját.

	Példa:
```bash
#!/bin/bash

# Háttérben futó folyamat
sleep 5 &

# Várakozás a háttérfolyamat befejezésére
wait

echo "A háttérfolyamat befejeződött"

```
77. ==Tudjunk folyamatot indítani, leállítani, futó példányszámokat megnézni a pgrep, pkill, kill, exec, disown, nohup parancsok segítségével==
    
**`pgrep`**: Folyamatok keresése név alapján.
```bash
pgrep firefox  # Minden futó firefox folyamat PID-jét listázza
```
	
**`pkill`**: Folyamatok leállítása név alapján.	
```bash
pkill firefox  # Leállítja az összes futó firefox folyamatot
```

**`kill`**: Folyamatok leállítása PID alapján.
```bash
kill 1234  # Leállítja a PID 1234-es folyamatot
```

**`exec`**: A folyamatot egy új programmal helyettesíti a jelenlegi shell-ben.
```bash
exec ls  # A shell-t felváltja az ls parancs
```

**`disown`**: A folyamatot eltávolítja a shell folyamat listájából, hogy ne legyen hatással rá.
```bash
sleep 100 &  # Háttérben futtatott folyamat
disown  # Eltávolítja a háttérfolyamatot a shell-ből
```

**`nohup`**: A folyamatot úgy indítja, hogy az ne függjön a shell-től, akkor is folytatódik, ha a shell bezárul.
```bash
nohup sleep 100 &  # A sleep folyamat akkor is fut, ha a shell bezárul
```