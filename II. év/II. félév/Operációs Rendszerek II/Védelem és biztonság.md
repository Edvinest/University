#### 1. **Alapfogalmak**
- **Védelem**: Rendszer, amely szabályozza a számítógépes erőforrások elérését programok, folyamatok és felhasználók által.
- **Rendszer biztonsága**: A rendszer és az adatok sérthetetlenségének biztosítása.
#### 2. **Védelmi tartományok**
- **Objektumok**: Egyedi névvel elérhető erőforrások (pl. fájlok, CPU, memória).
- **Jogosítványok**: Objektumokon végzett műveletekhez szükséges engedélyek.
- **Abszolút biztonság**: Minden folyamat csak a szükséges jogosítványokkal rendelkezik.
- **Elérési mátrix**: Tartományok és objektumok közötti jogosultságokat ábrázolja (pl. olvasás, írás).
#### 3. **Védelmi mechanizmusok**
- **Globális tábla**: Tartományok, objektumok és műveleti jogok nyilvántartása.
- **Objektumelérési lista**: Minden objektumhoz tartozó jogosultságok listája.
- **Zár-kulcs módszer**: Bitminták alapján ellenőrzi a hozzáférést.
#### 4. **Felhasználó azonosítása**
- **Módszerek**:
    - Személyes tulajdonságok (pl. ujjlenyomat).
    - Tárgyak (pl. azonosító kártya).
    - Információ (pl. jelszó).
- **Jelszóvédelem**:
    - Nehezen kitalálható jelszavak.
    - Gyakori csere.
    - Titkosított tárolás.
#### 5. **Támadások és védekezés**
- **Támadások típusai**:
    - **Megszakítás**: Rendszer elérhetetlenné tétele.
    - **Lehallgatás**: Illetéktelen adathozzáférés.
    - **Módosítás**: Adatok vagy programok megváltoztatása.
    - **Gyártás**: Hamis objektumok bejuttatása.
- **Védekezés**:
    - Fizikai és logikai védelmi rétegek.
    - Aktivítás naplózás.
    - Titkosítás (pl. nyilvános kulcsú titkosítás).
#### 6. **Rosszindulatú programok**
- **Típusok**:
    - Vírusok, férgek, trójai programok, logikai bombák, rootkit-ek.
- **Jellemzők**:
    - Önmásolás, rejtett működés, rendszer megbénítása.
- **Védelem**:
    - Frissítések telepítése.
    - Ismeretlen forrású fájlok mellőzése.
    - Rendszeres biztonsági ellenőrzések.
#### 7. **Biztonsági intézkedések szintjei**
- **Fizikai**: Hardver és környezet védelme.
- **Személyi**: Csak megfelelő személyek hozzáférése.
- **Operációs rendszer**: Jogosultságkezelés, patch management.
- **Hálózati**: Titkosított kommunikáció, tűzfalak.
#### 8. **Biztonsági tesztelés**
- **Típusok**:
    - Fizikai, hardver, szoftver, hálózati tesztelés.
- **Módszerek**:
    - Statikus (forráskód elemzése) és dinamikus (futásidőben történő tesztelés).
#### 9. **Sérülékenységek kezelése**
- **Szintek**:
    - Infrastruktúra, operációs rendszer, alkalmazás.
- **Intézkedések**:
    - Frissítések, konfigurációk felülvizsgálata, redundáns biztonsági mentések.
#### 10. **Kulcsfontosságú tanulságok**
- **Tökéletes biztonság nem létezik**, de a kockázatok csökkenthetők.
- **Az emberi tényező** gyakran a legnagyobb kockázati tényező.
- **Proaktív védelem** (pl. rendszeres képzések, frissítések) elengedhetetlen.