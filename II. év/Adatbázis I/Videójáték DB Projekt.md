![Adatbázis diagram](Images/diagram.png)
# Dokumentáció
Az adatbázisom egy online webáruházhoz lett tervezve. A felhasználó tud fiókot létrehozni, játékokat vásárolni, barátokat szerezni és technikai részleteket megnézni az általa vásárolt játékokról. 
## Users tábla
Található benne egy ID oszlop, elsődleges kulcsként. Utána egy nickname mező ami a felhasználóneveket tartalmazza és végül egy account_creation_date, hogy a felhasználó megnézhesse mikor készítette el a fiókját.
## Wishlist tábla
Itt szerepel a felhasználók kívánságlistája. Ha esetleg nincs lehetősége megvásárolni az adott játékot, berakhatja ebbe a táblába és később megvásárolja.
## Friends tábla
Szerepel benne a felhasználó ID-ja, a barát ID-ja aki szintén egy User és a dátum amikor barátokká váltak.
## UserOwnedGames tábla
Eltárolja a felhasználót, az adott játékot, hogy befejezte-e az adott játékot és, hogy mennyit játszott vele.
## Employee tábla
Eltárolja a dolgozókat és az információkat róluk. Megnézhetjük melyik cégnél dolgozik az illető, milyen pozícióban és mennyi ideje dolgoznak az adott játékon.
## Developer tábla
## Publisher tábla
## Game tábla
## Soundtrack tábla
## Reviews tábla
## Genre tábla

PUsers(<u>userID</u>, uNickname, account_creation_date)
WishList()