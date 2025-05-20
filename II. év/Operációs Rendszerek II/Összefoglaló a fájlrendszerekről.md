## Bevezetés
A fájlrendszerek az operációs rendszerek alrendszerei, amelyek a háttértárakon lévő információk (állományok) tárolását, szervezését és kezelését biztosítják. A fájlrendszerek lehetőséget nyújtanak az állományokhoz való hozzáférésre, valamint alapvető műveletek (olvasás, írás, törlés) végrehajtására.
## Főbb Fájlrendszer Típusok
### 1. FAT (File Allocation Table)
- **FAT12, FAT16, FAT32**: A FAT család tagjai, amelyek a lemezterületet klaszterekbe (cluster) szervezik.
    - **FAT12**: Floppy lemezekhez, max. 16 MB méretű kötetek.
    - **FAT16**: Kis-nagy merevlemezekhez, max. 2 GB méretű kötetek.
    - **FAT32**: Nagy merevlemezekhez, max. 2 TB méretű kötetek, jobb hatékonyság.
- **Jellemzők**:
    - Egyszerű szerkezet, de korlátozott biztonsági és méretbeli lehetőségek.
    - LFN (Long File Name) támogatás hosszú fájlnevek kezelésére.
### 2. NTFS (New Technology File System)
- **Windows NT rendszerekhez fejlesztett fájlrendszer**.
- **Jellemzők**:
    - Nagyobb méretű állományok és kötetek támogatása (max. 256 TB/állomány).
    - Fejlett biztonsági lehetőségek (jogosultságok, titkosítás).
    - Naplózás (journaling), amely segít a rendszerállapot helyreállításában hibák esetén.
    - További funkciók: adattömörítés, ritkított állományok (sparse files).
### 3. Ext2/Ext3/Ext4 (Extended File System)
- **Linux rendszerek alapértelmezett fájlrendszerei**.
- **Jellemzők**:
    - **Ext2**: Egyszerű, naplózás nélküli fájlrendszer.
    - **Ext3**: Naplózást (journaling) vezet be, javítva a hibakezelést.
    - **Ext4**: Nagyobb méretű állományok és kötetek támogatása (max. 16 TB/állomány, 1 EB kötetméret).
    - Inode alapú szerkezet, amely minden állományhoz metaadatokat tárol (tulajdonos, jogosultságok, időbélyegek).
### 4. ISO9660
- **Optikai lemezek (CD/DVD) fájlrendszere**.
- **Jellemzők**:
    - Csak olvasható, folytonos adattárolás.
    - Rövid fájlnevek és korlátozott könyvtárszerkezet támogatása.
    - Kibővítések (pl. Joliet) hosszú fájlnevek és Unicode karakterek kezelésére.
### 5. HPFS (High Performance File System)
- **IBM OS/2 rendszerekhez fejlesztett fájlrendszer**.
- **Jellemzők**:
    - Nagyobb fájlméret (max. 2 GB) és hosszú fájlnevek támogatása.
    - Kevesebb fragmentáció és gyorsabb hozzáférés a gyökérkönyvtárhoz.
### 6. SGS (Scalable, Global, Secure) és Lustre
- **Osztott fájlrendszerek nagy teljesítményű számításhoz**.
- **Jellemzők**:
    - Platformfüggetlen, nagy méretezhetőség (akár több ezer kliens és lemez).
    - POSIX és Windows NT kompatibilitás.
    - Hibafaékony és biztonságos működés.
## Fájlrendszerek Szerkezete és Működése
### 1. FAT Szerkezet
- **Boot Sector (BS)**: A lemez indítási információit tárolja.
- **FAT (File Allocation Table)**: A klaszterek állapotát és láncolását tárolja.
- **Gyökérkönyvtár (Root Directory)**: A könyvtárstruktúra kiindulópontja.
- **Adatterület (Data Region)**: Az állományok tényleges adatait tárolja.
### 2. NTFS Szerkezet
- **Master File Table (MFT)**: Az összes állomány metaadatait tárolja.
- **Rendszerállományok**: Naplófájlok, klaszterbittérkép stb.
- **Logolás**: Tranzakciók nyomon követése a rendszerállapot helyreállításához.
### 3. Ext2/Ext3/Ext4 Szerkezet
- **Inode tábla**: Minden állományhoz egy inode tartozik, amely a metaadatokat tárolja.
- **Blokkok**: Az adatokat egyenlő méretű blokkokban tárolja.
- **Naplózás (Ext3/Ext4)**: A fájlrendszer változásainak nyomon követése.
## Keresztkapcsolatok (Links)
- **Hard Link**: Közvetlen hivatkozás egy inode-ra, csak ugyanazon a partíción belül működik.
- **Szimbolikus Link (Soft Link)**: Útvonalat tárol, amely egy másik állományra mutat, akár más partíción is.
## Összehasonlítás és Alkalmazási Területek
- **FAT**: Egyszerű eszközök (pendrive, régebbi rendszerek).
- **NTFS**: Windows rendszerek, nagyobb biztonság és méretek igénye esetén.
- **Ext2/Ext3/Ext4**: Linux rendszerek, ahol fontos a stabilitás és a naplózás.
- **ISO9660**: Optikai lemezek, csak olvasható adattárolás.
- **Osztott fájlrendszerek**: Nagy teljesítményű számítási környezetek, adatközpontok.
## Redundáns Tárolás (RAID)
- **RAID 0**: Striping (sávozás), nincs redundancia, gyors írás/olvasás.
- **RAID 1**: Mirroring (tükrözés), teljes redundancia, lassú írás.
- **RAID 5**: Striping + elosztott paritás, egy lemez hibáját tolerálja.
- **RAID 6**: Striping + dupla paritás, két lemez hibáját tolerálja.
## Modern Tárolóeszközök
- **SSD (Solid State Drive)**: Gyorsabb, megbízhatóbb, kevesebb energiafogyasztás.
- **Pendrive, memóriakártyák**: Kis méretű, hordozható adattárolás.
## Összegzés
A fájlrendszerek kulcsszerepet játszanak az adatok hatékony tárolásában és kezelésében. A választás a felhasználási területtől, a teljesítményigénytől és a biztonsági követelményektől függ. A modern fájlrendszerek, mint az NTFS és az Ext4, fejlett funkciókat kínálnak, míg az osztott fájlrendszerek lehetővé teszik a nagyméretű adatmennyiségek kezelését.