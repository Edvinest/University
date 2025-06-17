**Érzékelők általános jellemzése**
- **Fogalom:** Az érzékelő (szenzor) olyan eszköz, amely egy fizikai mennyiséget (pl. hőmérséklet, nyomás, fény, mozgás, kémiai összetétel) valamilyen könnyen feldolgozható jellé, tipikusan elektromos jellé alakít. Ez a jel aztán mérhető, feldolgozható, vagy vezérlésre használható. Az érzékelő az ipari automatizálás, méréstechnika, orvosi diagnosztika, környezetvédelem és a modern technológia alapvető építőköve.
    
- **Alapvető működési elv:**
    
    - **Bemenet:** A mérendő fizikai mennyiség (pl. hőmérséklet, nyomás, elmozdulás).
    - **Érzékelő elem:** Az a rész, amely közvetlenül érintkezik a mért mennyiséggel és valamilyen fizikai változást (pl. ellenállás, kapacitás, feszültség) hoz létre.
    - **Jelátalakító (transducer):** Átalakítja a fizikai változást elektromos jellé. Gyakran az érzékelő elem maga a jelátalakító.
    - **Jelfeldolgozó áramkör (kondicionáló áramkör):** A nyers érzékelő jelet erősíti, szűri, linearizálja, esetleg digitálisra alakítja, hogy felhasználható legyen.
    - **Kimenet:** A feldolgozott elektromos jel (analóg feszültség/áram, digitális adat).
- **Jelentőség:** Az érzékelők kulcsszerepet játszanak:
    
    - **Adatgyűjtésben és monitorozásban:** Folyamatosan gyűjtenek adatokat a környezetről és a rendszerekről.
    - **Automatizálásban és vezérlésben:** Visszacsatoló rendszerekben a mért adatok alapján hoznak döntéseket a vezérlők.
    - **Diagnosztikában és hibafeltárásban:** Segítenek azonosítani a problémákat és előre jelezni a meghibásodásokat.
    - **Környezetvédelemben és biztonságban:** Monitorozzák a levegő- és vízszennyezést, figyelmeztetnek veszélyes körülményekre.
    - **Innovációban:** Lehetővé teszik az okos eszközök, IoT (Internet of Things) rendszerek, robotika és mesterséges intelligencia fejlődését.
- **Főbb jellemzők és paraméterek (ezek részletesebben az 1.3 pontban is szerepeltek, de itt újra összefoglaljuk az általános jellemzés keretében):**
    
    - **Mérési tartomány (Range):** Az a bemeneti fizikai mennyiség tartomány, amelyen belül az érzékelő a specifikációknak megfelelően működik.
    - **Érzékenység (Sensitivity):** A kimeneti jel változása a bemeneti fizikai mennyiség egységnyi változására (pl. mV/°C, V/bar). Meghatározza, hogy milyen kis változásokra képes reagálni az érzékelő.
    - **Pontosság (Accuracy):** A mért érték és a valós érték közötti maximális eltérés. Gyakran hibaszázalékban vagy abszolút értékben adják meg.
    - **Felbontás (Resolution):** A legkisebb érzékelhető és megkülönböztethető változás a bemeneti mennyiségben.
    - **Linearitás (Linearity):** A kimeneti jel és a bemeneti mennyiség közötti kapcsolat mennyire közelít egy egyeneshez. Ideális esetben lineáris. A nemlinearitást gyakran korrekciós algoritmusokkal vagy áramkörökkel kezelik.
    - **Ismételhetőség (Repeatability):** Azt fejezi ki, hogy az érzékelő egymás utáni, azonos körülmények között végzett mérések során mennyire adja ugyanazt az eredményt.
    - **Hiszterézis (Hysteresis):** Az a jelenség, amikor a kimeneti jel értéke eltér, attól függően, hogy a bemeneti érték növekszik vagy csökken.
    - **Válaszidő (Response Time):** Az az idő, ami alatt az érzékelő kimenete eléri a bemeneti változás utáni új stabil érték egy bizonyos százalékát (pl. 63,2% vagy 90%).
    - **Zaj (Noise):** A kimeneti jel nem kívánt, véletlenszerű ingadozása, amely elfedheti a hasznos jelet.
    - **Szennyezettség és stabilitás:** Az érzékelők hajlamosak az elöregedésre, driftre, és a környezeti hatások (pl. hőmérséklet, páratartalom, vegyi anyagok) befolyásolhatják stabilitásukat és pontosságukat hosszú távon.
      
**2.1.1.1. Ellenállás fémhőérzékelők (RTD – Resistance Temperature Detector)**

- **Elv:** Az ellenállás fémhőérzékelők működése azon alapul, hogy a fémek elektromos ellenállása hőmérsékletfüggő. A hőmérséklet emelkedésével a fémek ellenállása növekszik (pozitív hőmérsékleti együttható). A hőmérséklet-érzékelésre használt fémek ellenállás-hőmérséklet jelleggörbéje ismert és viszonylag lineáris.
    
- **Szerkezet:**
    
    - **Érzékelő anyag:** Leggyakrabban platina (Pt), de használatos nikkel (Ni) és réz (Cu) is.
    - **Felépítés:** A platinahuzalt tekercsbe (spirálba) rendezik, kerámia vagy üvegtestre tekercselve, majd védőtokba (pl. rozsdamentes acél) zárják a mechanikai védelem és a környezeti hatások elleni szigetelés érdekében. Léteznek vékonyrétegű RTD-k is, ahol a platina filmet hordozzák egy szubsztrátra.
- **Anyagok és jellemzőik:**
    
    - **Platina (Pt):**
        - **Előnyök:** Nagyon stabil, nagy pontosságú, széles hőmérséklet-tartományban (-200 °C és +850 °C között) használható, jó linearitású. Kémiailag inert.
        - **Típusok:** Pt100 (0 °C-on 100 Ω ellenállás), Pt1000 (0 °C-on 1000 Ω ellenállás). A nagyobb ellenállású típusok előnyösek alacsonyabb mérőáramok esetén.
        - **Jelleggörbe:** Az ellenállás (RT​) és a hőmérséklet (T) közötti összefüggés: RT​=R0​(1+AT+BT2) ahol R0​ az ellenállás 0 °C-on, A és B pedig anyagi konstansok (Pt100 esetén A≈3.9×10−3 ∘C−1, B≈−5.8×10−7 ∘C−2 pozitív hőmérsékleteknél).
    - **Nikkel (Ni):** Olcsóbb, mint a platina, de kevésbé stabil, kevésbé lineáris és szűkebb a hőmérséklet-tartománya (kb. -60 °C és +180 °C között).
    - **Réz (Cu):** Jó linearitású egy viszonylag szűk tartományban (kb. -50 °C és +150 °C között), de hajlamos az oxidációra magasabb hőmérsékleten.
- **Mérés:** Az RTD ellenállását mérik. Ez történhet:
    
    - **Wheatstone-híddal:** A híd kiegyenlítésével (nulla indikálással) vagy feszültségméréssel (kiegyenlítetlen híddal) határozzák meg az ellenállás-változást.
    - **Áramforrással és feszültségméréssel:** Egy ismert, stabil áramot vezetnek át az RTD-n, és a rajta eső feszültséget mérik. Az Ohm-törvény alapján az ellenállás kiszámítható.
- **Vezeték-ellenállás kompenzáció:** Az érzékelőt a mérőeszközzel összekötő vezetékek ellenállása hozzáadódik az érzékelő ellenállásához, és hibát okoz. Ennek kompenzálására többféle bekötést alkalmaznak:
    
    - **2 vezetékes:** Egyszerű, de a vezetékek ellenállása teljes mértékben beleszámít a mérésbe. Csak rövid vezetékek vagy alacsony pontosságú mérések esetén alkalmazható.
    - **3 vezetékes:** Egyik leggyakoribb. A mérőhíd két oldalán egy-egy azonos vezetékpár van, így a vezetékellenállás hatása nagyrészt kiküszöbölhető. Feltételezi, hogy a három vezeték ellenállása közel azonos.
    - **4 vezetékes (Kelvin bekötés):** A legpontosabb. Két vezeték a mérőáramot vezeti, két másik vezeték pedig közvetlenül az érzékelőn eső feszültséget méri, elkerülve a vezetékek ellenállását. Nagy pontosságú és/vagy hosszú vezetékek esetén ideális.
- **Előnyök:**
    
    - Nagy pontosság és kiváló stabilitás hosszú távon.
    - Széles mérési tartomány.
    - Jó linearitás.
    - Viszonylag immunis az elektromos zajra.
- **Hátrányok:**
    
    - Viszonylag magas költség (főleg platina esetén).
    - Lassabb válaszidő, mint a hőelemeknél.
    - Külső áramforrásra és ellenállásmérésre van szükség, ami bonyolíthatja a mérőáramkört.
    - A mérőáram okozta önhőmérséklet-emelkedés (self-heating) hibát okozhat, különösen kis méretű érzékelőknél vagy alacsony hővezetésű környezetben.
- **Alkalmazások:** Ipari folyamatvezérlés, laboratóriumi mérések, precíziós hőmérséklet-szabályozás, gyógyszeripar, élelmiszeripar.
    

---

**2.1.1.2. Termisztorok (Thermistor)**

- **Elv:** A termisztorok kerámia vagy polimer alapú félvezető anyagokból készülnek, amelyek ellenállása rendkívül érzékenyen, de jellemzően erősen nemlineárisan függ a hőmérséklettől. Az ellenállás változása általában nagyságrendekkel nagyobb, mint a fémhőérzékelők esetén.
    
- **Szerkezet:** Kis méretű gyöngy, tárcsa vagy rúd formájú, gyakran epoxigyantába vagy üvegbe ágyazva a mechanikai védelem és a nedvesség elleni szigetelés érdekében.
    
- **Típusok:**
    
    - **NTC (Negative Temperature Coefficient) termisztorok:**
        - **Működés:** Ellenállásuk a hőmérséklet emelkedésével exponenciálisan csökken. Ez a legelterjedtebb típus.
        - **Anyagok:** Fém-oxidok (pl. mangán, nikkel, kobalt, réz oxidjai).
        - **Jelleggörbe:** Az ellenállás (RT​) és a hőmérséklet (T) közötti összefüggést gyakran a Steinhart-Hart egyenlet írja le a legpontosabban: 1/T=A+Bln(R)+C(ln(R))3 ahol A,B,C konstansok. Egy egyszerűbb, de kevésbé pontos közelítés az exponenciális összefüggés: RT​=R0​⋅eβ(1/T−1/T0​) ahol R0​ az ellenállás T0​ referenciahőmérsékleten, és β az anyagra jellemző konstans.
        - **Előnyök:** Nagyon nagy érzékenység (akár 10x-100x nagyobb, mint az RTD-ké), gyors válaszidő (főleg kis méretűek esetén), alacsony költség.
        - **Hátrányok:** Erős nemlinearitás, korlátozott hőmérséklet-tartomány (általában -50 °C és +250 °C között), kevésbé stabil, mint az RTD-k.
        - **Alkalmazások:** Orvosi hőmérők, háztartási gépek, autóipari hőmérséklet-ellenőrzés, elektronikai áramkörök hőmérséklet-kompenzációja.
    - **PTC (Positive Temperature Coefficient) termisztorok:**
        - **Működés:** Ellenállásuk a hőmérséklet emelkedésével növekszik. Jellemzően egy kritikus hőmérséklet (Curie-pont) felett az ellenállás drasztikusan, exponenciálisan megnő.
        - **Anyagok:** Bárium-titanát (BaTiO3) kerámiák.
        - **Alkalmazások:** Túláram- és túlmelegedés-védelem (biztosítékként működnek, ha a hőmérséklet eléri a kritikus szintet, ellenállásuk hirtelen megnő, korlátozva az áramot), motorok és transzformátorok hőmérséklet-figyelése.
- **Mérés:** Hasonlóan az RTD-khez, az ellenállás változását mérik Wheatstone-híddal vagy áram-feszültség átalakítással. A nemlinearitás miatt gyakran szükség van linearizáló áramkörökre vagy szoftveres korrekcióra.
    
- **Előnyök:**
    
    - Magas érzékenység (kisebb hőmérséklet-változások is nagy ellenállás-változást okoznak).
    - Kisméretűek, gyors válaszidő.
    - Alacsony költség.
    - Pontszerű mérésekhez ideális.
- **Hátrányok:**
    
    - Erős nemlinearitás, ami bonyolítja a jelfeldolgozást.
    - Korlátozott hőmérséklet-tartomány.
    - Hosszútávú stabilitás problémái lehetnek.
    - Önhőmérséklet-emelkedésre érzékeny.

---

**2.1.1.3. Félvezető p-n átmeneten alapuló hőérzékelő (Dióda és tranzisztor alapú érzékelők)**

- **Elv:** A félvezető diódák és tranzisztorok (különösen a bipoláris tranzisztorok) p-n átmenetének nyitóirányú feszültségesése szisztematikusan és viszonylag lineárisan függ a hőmérséklettől. A feszültségesés csökken, ahogy a hőmérséklet növekszik (negatív hőmérsékleti együttható, jellemzően kb. -2 mV/°C).
    
- **Működés (Dióda):**
    
    - Egy előfeszített (nyitóirányú árammal átjárt) dióda feszültségesése, VF​, függ a hőmérséklettől.
    - A kapcsolat leírható: VF​=VGO​−qkT​ln(T0​T​)−qkT​ln(IS​(T0​)IF​​) Ahol VGO​ a szilícium sávhézag feszültsége 0 Kelvin fokon, k a Boltzmann-állandó, T az abszolút hőmérséklet, q az elektron töltése, IF​ az átfolyó áram, IS​ a telítési áram.
    - Egy adott konstans áramot átvezetve a diódán, a rajta eső feszültség arányos lesz a hőmérséklettel (vagy annak közelítőleg lineáris függvénye).
- **Működés (Tranzisztor):**
    
    - A bipoláris tranzisztorok bázis-emitter átmenetének (VBE​) feszültségesése hőmérsékletfüggő, hasonlóan a diódához.
    - Két tranzisztorral (vagy egy tranzisztor két különböző árammal hajtva) létrehozható olyan áramkör, amelynek kimenete arányos az abszolút hőmérséklettel (PTAT - Proportional To Absolute Temperature). Erről a következő pontban lesz szó részletesebben.
- **Előnyök:**
    
    - Jó linearitás (különösen az IC-kben).
    - Kisméretűek, könnyen integrálhatók más áramkörökbe.
    - Olcsó gyártás (tömeggyártásban).
    - Egyszerűbb mérőáramkörök.
    - Beépített kalibráció (IC-knél).
- **Hátrányok:**
    
    - Korlátozott hőmérséklet-tartomány (általában -55 °C és +150 °C között). Magasabb hőmérsékleten a félvezető jellemzői romlanak.
    - Önhőmérséklet-emelkedésre érzékeny.
    - Környezeti zajra érzékenyebbek lehetnek, mint az RTD-k.
- **Alkalmazások:** Elektronikus berendezések hőmérséklet-figyelése (pl. processzorok, akkumulátorok), háztartási elektronika, orvosi eszközök (pl. digitális lázmérő), HVAC (fűtés, szellőzés, légkondicionálás) rendszerek.
    

---

**2.1.1.4. PTAT hőérzékelő (Proportional To Absolute Temperature)**

- **Elv:** A PTAT (Proportional To Absolute Temperature) hőérzékelők olyan áramkörök, amelyek kimeneti feszültsége vagy árama közvetlenül arányos az abszolút hőmérséklettel (Kelvinben). Ezek tipikusan félvezető technológiával, integrált áramkörként valósulnak meg. Alapvetően a tranzisztorok bázis-emitter feszültségének hőmérsékletfüggését használják ki, de az áramkör úgy van kialakítva, hogy a kimenet lineárisan arányos legyen az abszolút hőmérséklettel, nem pedig a nemlineáris feszültségcsökkenéssel.
    
- **Működés alapja:**
    
    - Két azonos típusú, de eltérő méretű (vagy eltérő kollektorárammal hajtott) bipoláris tranzisztor bázis-emitter feszültségei (VBE1​ és VBE2​) közötti különbség.
    - A VBE​ feszültség a következőképpen függ a kollektoráramtól (IC​) és a telítési áramtól (IS​): VBE​=qkT​ln(IS​IC​​) Ahol k a Boltzmann-állandó, T az abszolút hőmérséklet, q az elektron töltése.
    - Ha van két tranzisztor, azonos hőmérsékleten, de eltérő IC​ áramokkal (vagy eltérő IS​ telítési áramokkal, ami eltérő emitterfelületet jelent), akkor a VBE​ feszültségek különbsége: ΔVBE​=VBE1​−VBE2​=qkT​ln(IS1​IC1​​)−qkT​ln(IS2​IC2​​) ΔVBE​=qkT​ln(IC2​/IS2​IC1​/IS1​​)=qkT​ln(IC2​IC1​​⋅IS1​IS2​​)
    - Ha az IS​ arányt (az emitterfelület arányát) például N-szeresre állítják be, és az áramokat azonosra (vagy valamilyen fix arányra), akkor a ΔVBE​ arányos lesz a hőmérséklettel: ΔVBE​=qkT​ln(N) Mivel k, q és N konstansok, a ΔVBE​ arányos az abszolút hőmérséklettel (T).
- **Jellemzők:**
    
    - **Kimenet:** A kimeneti jel általában feszültség vagy áram, amely közvetlenül arányos az abszolút hőmérséklettel (pl. 10 mV/K vagy 1 μA/K).
    - **Linearitás:** Kiváló linearitás a működési tartományban.
    - **Pontosság és kalibráció:** Gyárilag kalibráltak, gyakran magas pontosságúak.
    - **Beépített kiegészítő áramkörök:** Sok PTAT érzékelő tartalmaz feszültségreferenciát, erősítőt, és digitális interfészt (pl. I2C, SPI, One-Wire), mint például az LM35, TMP36, DS18B20 típusok.
    - **Hőmérséklet-tartomány:** Általában a diódás/tranzisztoros érzékelőkre jellemző tartományban (kb. -55 °C és +150 °C).
- **Előnyök:**
    
    - Közvetlen abszolút hőmérséklet kimenet.
    - Kiváló linearitás.
    - Kisméretűek és olcsók (tömeggyártásban).
    - Egyszerűen illeszthetők mikrokontrollerekhez (különösen a digitális kimenetűek).
    - Nincs szükség referenciapontra, mint a hőelemeknél.
- **Hátrányok:**
    
    - Korlátozott hőmérséklet-tartomány.
    - Önhőmérséklet-emelkedésre érzékeny.
    - A külső környezeti zajok befolyásolhatják, ha nincs megfelelő árnyékolás és szűrés.
- **Alkalmazások:** Széleskörűen használják elektronikai eszközökben, számítógépekben, mobiltelefonokban, háztartási gépekben, autóipari rendszerekben, orvosi műszerekben, környezeti hőmérséklet-mérésre, adatgyűjtő rendszerekben.
    

---

**2.1.2. Nyúlásmérő ellenállás-érzékelők (Strain Gauges)**

- **Elv:** A nyúlásmérő ellenállás-érzékelők a mérendő anyag felületére ragasztott vékony, fémhuzalból vagy fóliából készült ellenállás elvén működnek. Ha a testet mechanikai terhelés éri, deformálódik (nyúlik vagy zsugorodik). Ez a deformáció megváltoztatja az érzékelő ellenállását, mivel változik a vezető hossza és keresztmetszete.
    
- **Fizikai alap:** Az ellenállás (R) egy vezető esetén: R=ρAL​ ahol ρ az anyag fajlagos ellenállása, L a vezető hossza, A a keresztmetszete. Amikor a vezető nyúlik (hosszabbodik), L növekszik, és A csökken, ami az ellenállás növekedését eredményezi. Zsugorodás esetén fordítva.
    
- **Érzékenységi tényező (Gauge Factor, GF):** Az érzékelő érzékenységét jellemzi, dimenzió nélküli mennyiség. Meghatározza, hogy az ellenállás relatív változása milyen a nyúlás relatív változásához képest: GF=ΔL/LΔR/R​=ϵΔR/R​ Ahol ΔR az ellenállás változása, R az eredeti ellenállás, ΔL a hosszváltozás, L az eredeti hossz, és ϵ a relatív nyúlás (mértékegysége m/m vagy mikronyúlás, μϵ). A fém nyúlásmérő bélyegek GF értéke általában 2 és 5 között van (pl. nikkel-réz ötvözet, konstantán, karma).
    
- **Szerkezet:**
    
    - Vékony, gyakran cikkcakk alakú, huzalból vagy fóliából készült ellenálláshálózat.
    - Rugalmas hordozóanyagra (pl. poliimid) laminálva.
    - Védőréteggel borítva.
    - Kivezetések forrasztási pontokkal.
- **Mérés:** A nyúlásmérő bélyeg ellenállás-változása nagyon kicsi (tipikusan ezreléknyi, ezrelék ezreléke), ezért speciális mérőáramkörökre van szükség.
    
    - **Wheatstone-híd:** Ez a legáltalánosabb módszer. A nyúlásmérő bélyeget egy Wheatstone-hídba kötik, gyakran egy vagy több, kompenzációs célra használt bélyeggel együtt.
        - **Egynegyedes híd:** Egy aktív nyúlásmérő bélyeg, a másik három ellenállás fix. Egyszerű, de érzékeny a hőmérsékletre és a kimenet nemlinearitása nagyobb.
        - **Félhíd:** Két aktív bélyeg (egy nyúló, egy zsugorodó) vagy egy aktív és egy hőmérséklet-kompenzációs (dummy) bélyeg. Jobb linearitás, hőmérséklet-kompenzáció.
        - **Teljes híd:** Négy aktív bélyeg, párokba rendezve (kettő nyúlik, kettő zsugorodik, pl. nyomaték mérésekor). Legnagyobb érzékenység és kiváló hőmérséklet-kompenzáció.
    - A híd kimeneti feszültsége arányos a nyúlással (és így a mechanikai feszültséggel vagy erővel). Ezt a kis feszültséget nagy pontosságú, alacsony zajszintű műszererősítővel erősítik.
- **Hőmérséklet-kompenzáció:** A fémek ellenállása hőmérsékletfüggő, ezért a nyúlásmérő bélyeg is hőmérséklet-érzékeny. A hőmérséklet okozta ellenállás-változás sokszor nagyobb lehet, mint a mechanikai nyúlás okozta. Ennek kiküszöbölésére:
    
    - **Dummy gauge:** Egy passzív (nem terhelt) bélyeget is elhelyeznek a mérendő tárgy közelében, azonos hőmérsékleten, és ezt is bekötik a Wheatstone-hídba, kompenzálva a hőmérsékleti hatást.
    - **Fél- és teljes híd elrendezések:** Ezek már eleve tartalmazzák a hőmérséklet-kompenzációt, mivel az egymással szemben lévő bélyegek hőmérsékleti hatása kioltja egymást.
- **Alkalmazások:**
    
    - **Erőmérés:** Terheléscellák (load cells) – súly, nyomás, húzóerő mérésére.
    - **Nyomatékmérés:** Nyomatékérzékelőkben.
    - **Nyomásmérés:** Nyomásérzékelőkben, ahol a nyomás deformálja a membránt, és a membránra ragasztott nyúlásmérő bélyegek érzékelik a nyúlást.
    - **Deformáció (nyúlás) mérés:** Szerkezeti anyagok és komponensek vizsgálata, stressz-analízis.
    - **Gyorsulásmérés:** Bizonyos típusú gyorsulásmérőkben.
- **Előnyök:**
    
    - Nagy pontosság és megbízhatóság.
    - Kis méretűek, könnyen rögzíthetők a mérendő felületre.
    - Széles alkalmazási terület.
    - Dinamikus és statikus mérésekre is alkalmasak.
- **Hátrányok:**
    
    - Nagyon kis kimeneti jel, ami erősítést igényel.
    - Hőmérséklet-kompenzáció szükséges.
    - Ragályozási technikára van szükség, ami tapasztalatot és precizitást igényel.
    - Hosszú távú stabilitás a ragasztás minőségétől is függ.

---

**2.3.1. Geometriai változáson alapuló kapacitív érzékelők**

- **Elv:** A kapacitív érzékelők egy kondenzátor kapacitásának változását használják fel a fizikai mennyiségek mérésére. Egy síkkondenzátor kapacitása (C) a következőképpen számítható: C=dϵ0​ϵr​A​ ahol ϵ0​ a vákuum permittivitása, ϵr​ a dielektrikum relatív permittivitása (dielektromos állandó), A az elektródák fedési felülete, és d az elektródák közötti távolság. A geometriai változáson alapuló érzékelők esetén A vagy d változik a mért fizikai mennyiség hatására.
    
- **Működési elv:**
    
    - **Távolság (d) változása:** Ha az elektródák közötti távolság változik, a kapacitás fordítottan arányosan változik.
        - **Párhuzamos lemezek:** Egy mozgatható lemez elmozdulása változtatja a távolságot. Ezt használják érintésmentes elmozdulás-, távolság- és rezgésmérésre.
        - **Nyomásérzékelők:** A nyomás hatására egy rugalmas membrán deformálódik, és megváltoztatja az egyik elektróda távolságát a másiktól.
    - **Felület (A) változása (fedési felület):** Ha az elektródák egymáshoz képesti fedési felülete változik.
        - **Lineáris elmozdulás:** Két párhuzamos lemez egymáshoz képest elcsúszik, megváltoztatva az átfedő felületet.
        - **Szögelfordulás:** Két koncentrikus lemez (vagy lamella) elfordul egymáshoz képest, megváltoztatva az átfedő felületet. Ezt használják szöghelyzet-érzékelésre.
        - **Szintmérés:** A folyadékszint változása megváltoztatja a folyadékba merülő elektródák fedési felületét.
- **Szerkezet:** Két vagy több vezetőképes elektróda, közöttük dielektromos anyaggal (általában levegő, vagy szigetelő film). Az egyik elektróda általában rögzített, a másik pedig a mért fizikai mennyiség hatására mozog.
    
- **Mérés:** A kapacitás változását mérik. Mivel a kapacitás változások általában kicsik, nagy felbontású áramkörökre van szükség.
    
    - **Kapacitás-frekvencia átalakítás:** Az érzékelő kapacitását egy oszcillátor frekvencia-meghatározó elemeként használják. A frekvencia változása arányos a kapacitás változásával.
    - **Kapacitás-feszültség átalakítás:** Hídáramkörök (pl. AC Wheatstone-híd) vagy kapcsolóüzemű (switched-capacitor) áramkörök segítségével a kapacitás változását feszültségváltozássá alakítják.
    - **Rezonáns körök:** A kapacitás változása befolyásolja egy rezonáns kör rezonanciafrekvenciáját.
- **Előnyök:**
    
    - Érintésmentes mérésre alkalmasak (különösen távolságmérésnél).
    - Nagy érzékenység és felbontás.
    - Nincs mechanikai kopás (ha érintésmentes).
    - Alacsony energiafogyasztás.
    - Relatíve gyors válaszidő.
- **Hátrányok:**
    
    - Érzékeny a hőmérsékletre (a dielektrikum permittivitása és a mechanikai méretek is változhatnak).
    - Érzékeny a szennyeződésre és a páratartalomra (különösen levegő dielektrikum esetén).
    - A kimenet gyakran nemlineáris.
    - Speciális mérőelektronikát igényel a kis kapacitásváltozások pontos méréséhez.
    - Parazita kapacitások befolyásolhatják a mérést.
- **Alkalmazások:** Elmozdulás- és távolságmérés (mikrométeres pontossággal), nyomásérzékelők (MEMS technológiával), folyadékszintmérés, nedvességérzékelők, érintésérzékelők (érintőképernyők), gyorsulásmérők (MEMS gyorsulásmérők).
    

---

**2.3.2. Szigetelő dielektrikumváltozáson alapuló kapacitív érzékelők**

- **Elv:** Ezek a kapacitív érzékelők a dielektrikum relatív permittivitásának (ϵr​) változásán alapulnak. Ha a kondenzátor elektródái közötti anyag dielektromos állandója változik, akkor a kapacitás is változik.
    
- **Működési elv:**
    
    - **Folyadékszintmérés:** Két párhuzamos elektróda van a folyadéktartályban. A levegő és a folyadék dielektromos állandója eltérő (ϵr​≈1 levegő esetén, ϵr​>1 folyadékok esetén). Ahogy a folyadékszint emelkedik, a kondenzátor elektródái közötti teret egyre nagyobb arányban tölti ki a folyadék, megváltoztatva az effektív dielektromos állandót, és így a kapacitást. Ez lineárisan arányos lehet a szinttel.
    - **Nedvességmérés:** A talaj, gabona, papír, levegő vagy más anyag nedvességtartalmának mérésére használják. A víz dielektromos állandója (ϵr​≈80) sokkal nagyobb, mint a száraz levegőé vagy más anyagoké. A nedvességtartalom növekedésével az anyag effektív dielektromos állandója megnő, ezzel növelve a kapacitást.
    - **Anyagösszetétel elemzés:** Két vagy több komponensből álló keverékek esetén, ha a komponensek dielektromos állandója eltérő, a keverék összetétele a dielektromos állandó, és így a kapacitás mérésével meghatározható.
- **Szerkezet:** Általában két vezető lemez (vagy koncentrikus henger) alkotja a kondenzátort, és a mérendő anyag tölti ki az elektródák közötti teret.
    
- **Mérés:** Hasonlóan a geometriai kapacitív érzékelőkhöz, a kapacitás változását mérik kapacitás-frekvencia vagy kapacitás-feszültség átalakítással.
    
- **Előnyök:**
    
    - Érintésmentes mérésre is alkalmasak (ha a dielektrikum a cső falán keresztül érzékelhető).
    - Nincs mozgó alkatrész (mechanikai kopásmentes).
    - Relatíve robusztusak.
    - Alkalmasak folyadékok, porok és szilárd anyagok jellemzésére.
- **Hátrányok:**
    
    - Érzékeny a hőmérsékletre (a dielektromos állandó hőmérsékletfüggő).
    - Érzékeny a szennyeződésekre, lerakódásokra az elektródákon.
    - A kimenet nemlineáris lehet, különösen összetett dielektrikumoknál.
    - Az anyagvezetőképessége (konduktivitása) is befolyásolhatja a mérést, különösen folyadékoknál.
- **Alkalmazások:** Folyadékszintmérés tartályokban, nedvességmérés (talaj, gabona, papírgyártás), tejtermékek zsírtartalmának mérése, cementpor nedvességtartalmának ellenőrzése, olajminőség-ellenőrzés.
    

---

**3.1. Termoelektromos érzékelők. Hőelemek (Termoelemek – Thermocouple)**

- **Elv:** A termoelektromos érzékelők, más néven hőelemek, a Seebeck-effektuson alapulnak. Ha két különböző fémet (vagy ötvözetet) összehegesztenek egy ponton (mérőpont), és a két csatlakozási pont (a mérőpont és egy referenciapont, vagy "hidegpont") között hőmérsékletkülönbség van, akkor a körben elektromotoros erő (EMF), azaz feszültség keletkezik. Ennek a feszültségnek a nagysága arányos a két csatlakozási pont közötti hőmérsékletkülönbséggel.
    
- **Seebeck-effektus:** Amikor két különböző fém vezetőt összehegesztenek, és a csatlakozási pontok hőmérséklete eltérő, a szabad elektronok mozgása a melegebb oldalon aktívabbá válik, és átáramlanak a hidegebb oldalra. Ez az elektronok mozgása potenciálkülönbséget generál. Minden fémnek van egy úgynevezett Seebeck-együtthatója, amely jellemzi, hogy milyen mértékben generál feszültséget hőmérsékletkülönbség hatására. A hőelemben a két fém Seebeck-együtthatóinak különbsége adja a teljes termoelektromos erőt.
    
- **Szerkezet:** Két különböző fémhuzal, amelyek egyik vége össze van hegesztve (forrasztva, csavarozva) – ez a **mérőpont (melegpont)**. A másik két, szabad vég – ez a **referenciapont (hidegpont)** – általában egy csatlakozóblokkhoz vagy mérőműszerhez csatlakozik. A mérőpontot gyakran védőhüvelybe zárják a környezeti hatások ellen.
    
- **Típusok (leggyakoribbak):** A hőelemeket az anyagpárok alapján azonosítják, és betűkóddal jelölik (IEC szabvány szerint).
    
    - **K-típus (Chromel-Alumel):** Legelterjedtebb. Széles hőmérséklet-tartomány (-200 °C és +1250 °C között), viszonylag lineáris, jó ellenállás az oxidációnak.
    - **J-típus (Iron-Constantan):** Második leggyakoribb. Szűkebb tartományban (-40 °C és +750 °C között) használatos, de magasabb Seebeck-együtthatóval rendelkezik, mint a K-típus.
    - **T-típus (Copper-Constantan):** Alacsony hőmérsékletekre (-200 °C és +350 °C között) és nedves környezetbe.
    - **E-típus (Chromel-Constantan):** Magasabb kimeneti feszültség, mint a K-típus, -200 °C és +900 °C között.
    - **N-típus (Nicrosil-Nisil):** Hasonló tartomány, mint a K-típus, de jobb stabilitás és oxidációállóság.
    - **R, S, B típusok (nemesfémek, pl. Platina-Rhódium ötvözetek):** Nagyon magas hőmérsékletekre (akár +1700 °C), de drágábbak és alacsonyabb érzékenységűek.
- **Hidegpont-kompenzáció (Cold Junction Compensation, CJC):**
    
    - A hőelem kimeneti feszültsége a mérőpont és a referenciapont közötti hőmérsékletkülönbségtől függ.
    - Ahhoz, hogy a mérőpont abszolút hőmérsékletét meghatározzuk, ismernünk kell a referenciapont (hidegpont) hőmérsékletét.
    - A hidegpont hőmérsékletét egy másik hőmérséklet-érzékelővel (pl. termisztor, RTD, félvezető IC) mérik, amely a hidegponton helyezkedik el.
    - A hőelem kimeneti feszültségét korrigálják a mért hidegpont hőmérséklet alapján, hogy megkapják a mérőpont abszolút hőmérsékletét. A mai mérőeszközök ezt automatikusan elvégzik.
- **Előnyök:**
    
    - Rendkívül széles hőmérséklet-tartomány.
    - Robusztus felépítés, ellenáll a mechanikai sokkoknak és rezgéseknek.
    - Gyors válaszidő (főleg a kisebb átmérőjű, védőhüvely nélküli hőelemek).
    - Nincs szükség külső tápellátásra (passzív érzékelő).
    - Viszonylag alacsony költség (az anyagtól függően).
- **Hátrányok:**
    
    - Alacsonyabb pontosság, mint az RTD-knél vagy termisztoroknál.
    - Nemlinearitás, különösen széles tartományban, ami linearizálást igényel.
    - Nagyon kis kimeneti feszültség (néhány mikrovolttól millivoltokig), ami erősítést igényel, és érzékeny a zajra.
    - Hidegpont-kompenzáció szükséges.
    - Referencia-átmeneti problémák (pl. termo-EMF keletkezhet a különböző fémekből készült csatlakozásoknál).
- **Alkalmazások:** Ipari kemencék, kohók, gáz- és olajipar, vegyipar, repülés és űrtechnológia, motorok és turbinák hőmérséklet-figyelése, laboratóriumi mérések extrém hőmérsékleteken.
    

---

**3.3. Fotovoltaikus érzékelők (Napelemek, napelem cellák)**

- **Elv:** A fotovoltaikus érzékelők (fotovoltaikus cellák, napelemek) a fotovoltaikus effektuson alapulnak, amelynek során a fényenergia közvetlenül elektromos energiává alakul. Félvezető anyagok (leggyakrabban szilícium) p-n átmenetében a beeső fotonok elektron-lyuk párokat keltenek. A p-n átmenet által létrehozott belső elektromos tér szétválasztja ezeket a töltéshordozókat, létrehozva feszültséget az átmenet két oldala között (nyitott áramköri feszültség, VOC​) és áramot, ha külső terheléshez csatlakozik (rövidzárási áram, ISC​).
    
- **Működés:**
    
    - A beeső fény energiája (fotonok) elnyelődik a félvezetőben.
    - Ez elektronokat "üt ki" a vegyértéksávból a vezetési sávba, lyukakat hagyva maguk után.
    - Az így keletkezett elektron-lyuk párok a p-n átmenet elektromos terének hatására szétválnak: az elektronok a n-típusú oldal felé, a lyukak a p-típusú oldal felé vándorolnak.
    - Ez töltésfelhalmozódást okoz, ami feszültséget eredményez az elektródák között, és áramot egy zárt áramkörben.
    - Az érzékelő kimeneti árama (rövidzárási áram) gyakorlatilag lineárisan arányos a beeső fény intenzitásával. A nyitott áramköri feszültség logaritmikusan függ a fényintenzitástól.
- **Szerkezet:** Jellemzően egy nagyméretű p-n átmenet, vékony réteggel borítva, amely a fényt maximálisan elnyeli. Az elektródák felül vékony ujj-szerű, alul pedig teljes felületű érintkezők.
    
- **Alkalmazások érzékelőként:**
    
    - **Fényintenzitás mérés (luxmérők):** A rövidzárási áram mérésével megbízhatóan mérhető a környezeti fényerő.
    - **Optikai detektorok:** Fénykapukban, optikai számlálókban, vonalkód-olvasókban, mozgásérzékelőkben (megszakított fénysugár detektálása).
    - **Pozícióérzékelők:** Különböző szegmensekre osztott fotovoltaikus cellák segítségével a fényfolt pozíciója meghatározható.
    - **Távvezérlők vevője:** Infravörös (IR) távvezérlők jelének detektálása.
    - **Napkövető rendszerek:** A napsugárzás irányának meghatározása.
- **Jellemzők:**
    
    - **Passzív működés:** Nem igényel külső tápellátást, maga generálja a jelet (feszültséget vagy áramot).
    - **Spektrális érzékenység:** A szilícium alapú fotovoltaikus cellák legérzékenyebbek az látható fényre és a közeli infravörös tartományra.
    - **Gyors válaszidő:** Jellemzően gyorsabban reagálnak a fényváltozásokra, mint a fotorezisztorok.
    - **Jó linearitás** (rövidzárási áram esetén).
    - **Hőmérsékletfüggés:** A kimeneti feszültség és áram is hőmérsékletfüggő, ami befolyásolhatja a mérés pontosságát.
    - **Károsodás:** Túl erős fénnyel történő sugárzás, vagy magas hőmérséklet károsíthatja.
- **Előnyök érzékelőként:**
    
    - Nincs szükség külső tápra a jel előállításához.
    - Relatíve stabil.
    - Kis méretű és robusztus.
- **Hátrányok érzékelőként:**
    
    - Hőmérsékletfüggés.
    - Alacsony feszültség kimenet (erősítést igényelhet).
    - Spektrális érzékenysége korlátozott.

---

**6.1. Inkrementális érzékelők (Elmozdulás/pozíció érzékelők)**

- **Elv:** Az inkrementális érzékelők a relatív elmozdulást mérik, azaz a mozgás irányát és nagyságát egy referencia ponthoz képest, de nem adják meg közvetlenül az abszolút pozíciót bekapcsoláskor. A pozíciót egy számláló segítségével határozzák meg, amely növekszik vagy csökken az elmozdulás függvényében. Bekapcsolás után szükség van egy referenciapont (nullpont) felvételére.
    
- **Működési elv (példák):**
    
    - **Optikai inkrementális jeladók (kódolók):**
        - **Szerkezet:** Egy átlátszó vagy átlátszatlan szakaszokkal (résekkel) ellátott forgó tárcsa (kódkorong) vagy lineáris rács, valamint egy fényforrás (LED) és egy fotodetektor (fotodióda/fototranzisztor).
        - **Működés:** A tárcsa forgásakor a fény megszakad és átenged, pulzáló jelet generálva a detektorban. Két, fáziseltolású (pl. 90°-os) jelet (A és B csatorna) használnak a mozgás irányának és a sebességnek a meghatározására.
        - **Nullpont jel (Z csatorna):** Egy harmadik csatorna (index jel) ad egyetlen impulzust fordulatonként, ami a nullpontot jelöli, és a számláló nullázására használható.
    - **Mágneses inkrementális érzékelők:** Hasonló elven működnek, de a jelet egy mágnesezett rács és egy Hall-effektus érzékelő vagy magnetoreszisztív érzékelő generálja.
    - **Induktív inkrementális érzékelők:** A mozgás egy tekercs induktivitását változtatja meg.
- **Kimeneti jelek:** Általában digitális négyszögjelek (TTL vagy HTL szintű). Az A és B csatorna közötti fáziseltolás alapján lehet eldönteni a mozgás irányát (pl. ha A megelőzi B-t, akkor az egyik irány, ha B megelőzi A-t, akkor a másik irány).
    
- **Jellemzők:**
    
    - **Relatív mérés:** A pozíciót egy kezdeti nullponthoz képest mérik.
    - **Nullpont felvétel:** Bekapcsolás után szükség van egy referenciapontra történő mozgásra a pontos pozíció meghatározásához.
    - **Felbontás:** A tárcsán lévő rések számától vagy a rács finomságától függ.
    - **Sebességmérés:** A kimeneti impulzusok frekvenciája arányos a sebességgel.
    - **Hibaakkumuláció:** A számláló hibát halmozhat fel zaj, vibráció vagy impulzusvesztés miatt.
- **Előnyök:**
    
    - Egyszerűbb felépítés és olcsóbb, mint az abszolút kódolású érzékelők.
    - Nagy sebességű mozgások mérésére is alkalmasak.
    - Nagy felbontás érhető el.
- **Hátrányok:**
    
    - Bekapcsolás után mindig szükség van egy referenciapont felvételére.
    - Teljesítménykimaradás vagy zaj esetén a pozíció elveszhet.
    - Hibaakkumuláció veszélye.
- **Alkalmazások:** Szerszámgépek, robotok, CNC gépek, nyomtatók, léptetőmotorok pozíció- és sebességszabályozása, görgősorok.
    

---

**6.2. Abszolút kódolású helyzetmérő érzékelők (Abszolút kódolók)**

- **Elv:** Az abszolút kódolású helyzetmérő érzékelők minden egyes pozícióhoz egy egyedi digitális kódot rendelnek hozzá. Ez azt jelenti, hogy bekapcsoláskor azonnal megadják a pontos pozíciót, nincs szükség referenciapont felvételére, és a pozíció nem veszik el áramkimaradás esetén.
    
- **Működési elv (példák):**
    
    - **Optikai abszolút jeladók (kódolók):**
        - **Szerkezet:** Egy átlátszó/átlátszatlan szektorokból álló tárcsa (kódkorong) vagy lineáris rács, mely több, koncentrikus pályán elhelyezkedő kódmintázatot tartalmaz. Minden pályához egy fényforrás és egy fotodetektor tartozik.
        - **Működés:** Ahogy a tárcsa forog, az egyes pályákon lévő detektorok bináris jeleket (fény/nincs fény) adnak, amelyek együtt egy egyedi digitális kódot alkotnak minden szögpozícióhoz.
        - **Kódolás:** Gyakran Gray-kódot használnak a kódkorongon, mert az biztosítja, hogy két szomszédos pozíció között csak egy bit változzon, elkerülve a leolvasási hibákat a határátmeneteknél. A Gray-kódot aztán binárissá alakítják a feldolgozáshoz.
    - **Mágneses abszolút érzékelők:** Mágnesesen kódolt tárcsákat vagy sávokat használnak, Hall-effektus vagy magnetoreszisztív szenzorokkal leolvasva.
    - **Kapacitív abszolút érzékelők:** Különböző kapacitív mintázatokat használnak.
- **Kimeneti jelek:** Digitális kódok (bináris, Gray, BCD), általában párhuzamos vagy soros interfészen (pl. SPI, I2C, SSI, Profibus, Ethernet/IP) keresztül.
    
- **Jellemzők:**
    
    - **Abszolút mérés:** Minden pozícióhoz egyedi kód tartozik.
    - **Nincs nullpont felvétel:** Azonnal elérhető a pozíció a bekapcsoláskor.
    - **Pozíció memóriája:** Nem veszíti el a pozícióját áramkimaradás esetén.
    - **Felbontás:** A kódolás bitjeinek számától függ. Pl. egy 10 bites kódoló 1024 (2^10) különböző pozíciót tud megkülönböztetni egy fordulat alatt.
- **Típusok (egyszeres/többszörös fordulat):**
    
    - **Egyszeres fordulatú (Single-turn):** Egy fordulaton belüli pozíciót mér.
    - **Többszörös fordulatú (Multi-turn):** Több fordulaton keresztül is képes az abszolút pozíciót mérni, általában mechanikus áttétellel vagy több kódkoronggal.
- **Előnyök:**
    
    - Azonnali pozícióinformáció bekapcsoláskor.
    - Nincs hibaakkumuláció.
    - Megbízhatóbb kritikus alkalmazásokban.
- **Hátrányok:**
    
    - Bonyolultabb felépítés és magasabb költség, mint az inkrementális érzékelők.
    - A digitális kimenet feldolgozása több I/O vonalat vagy soros kommunikációt igényel.
- **Alkalmazások:** Robotika (csuklópozíciók), CNC gépek, liftvezérlés, szelepek és csapok pozíciójának figyelése, ipari automatizálás, ahol a pozíció elvesztése katasztrofális következményekkel járhat.
    

---

**11.1. Nyomás mérése**

- **Elv:** A nyomásmérés az egyik leggyakoribb ipari mérés. A nyomás az egységnyi felületre ható erő. A nyomásérzékelők ezt az erőt vagy az általa kiváltott deformációt alakítják át elektromos jellé.
    
- **Nyomás típusai:**
    
    - **Abszolút nyomás:** Nyomás a vákuumhoz (abszolút nullához) képest.
    - **Relatív (manometrikus) nyomás:** Nyomás a légköri nyomáshoz képest (pozitív vagy negatív).
    - **Differenciálnyomás:** Két pont közötti nyomáskülönbség.
- **Főbb nyomásérzékelő elvek:**
    
    1. **Nyúlásmérő bélyeg alapú nyomásérzékelők:**
        
        - **Elv:** A nyomás egy vékony, rugalmas membránt (diafragmát) deformál. A membránra nyúlásmérő bélyegeket ragasztanak vagy integrálnak (pl. szilícium membránra diffundált ellenállások). A membrán deformációja megváltoztatja a bélyegek ellenállását, amit Wheatstone-hídba kötve mérnek.
        - **Előnyök:** Robusztus, széles tartomány, jó linearitás.
        - **Hátrányok:** Hőmérsékletfüggés (kompenzáció szükséges).
        - **Alkalmazás:** Ipari nyomásmérés, hidraulikus rendszerek.
    2. **Piezorezisztív nyomásérzékelők (MEMS alapú):**
        
        - **Elv:** Szilícium membránra mikrogyártási technológiával (MEMS - Micro-Electro-Mechanical Systems) integrált ellenállások, amelyek ellenállása megváltozik a mechanikai feszültség hatására (piezorezisztív effektus).
        - **Szerkezet:** Egy szilícium lapkára mart membrán, amelynek felületén diffúzióval vagy ionimplantációval létrehozott piezorezisztív elemek (ellenállások) találhatók. Ezek általában Wheatstone-hídba vannak kapcsolva.
        - **Előnyök:** Nagyon kis méret (chip alapú), olcsó tömeggyártás, nagy érzékenység, jó linearitás, gyors válaszidő.
        - **Hátrányok:** Hőmérséklet-érzékenység, gyengébb stabilitás szélsőséges körülmények között.
        - **Alkalmazás:** Orvosi műszerek (vérnyomásmérő), autóipar (motorvezérlés, abroncsnyomás-ellenőrzés), fogyasztói elektronika (barométer okostelefonokban).
    3. **Kapacitív nyomásérzékelők:**
        
        - **Elv:** Két elektróda közül az egyik egy rugalmas membrán, amely nyomás hatására deformálódik, megváltoztatva az elektródák közötti távolságot, ezáltal a kapacitást.
        - **Szerkezet:** Két lemez, általában az egyik mozgatható membrán. Közöttük dielektrikum (általában levegő).
        - **Előnyök:** Jó linearitás, nagy érzékenység, alacsony hiszterézis, jó stabilitás, alacsony hőmérséklet-érzékenység a nyúlásmérő bélyegekhez képest (ha a dielektrikum stabil).
        - **Hátrányok:** Érzékenyebb lehet a szennyeződésre, komplexebb mérőelektronika.
        - **Alkalmazás:** Vákuummérés, alacsony nyomású rendszerek, precíziós műszerek.
    4. **Piezoelektromos nyomásérzékelők:**
        
        - **Elv:** Bizonyos kristályos anyagok (pl. kvarc, kerámiák) nyomás hatására elektromos töltést generálnak (piezoelektromos effektus). Ez a töltés arányos a nyomásra ható erővel.
        - **Előnyök:** Nagyon gyors válaszidő (dinamikus mérésekre ideális), nincs szükség külső tápellátásra (passzív).
        - **Hátrányok:** Csak dinamikus vagy gyorsan változó nyomást mérnek (statikus nyomást nem, mert a töltés lassan elszivárog), érzékenyek a hőmérsékletre.
        - **Alkalmazás:** Dinamikus nyomásmérés (pl. robbanómotorok égési nyomása), ütésérzékelők.
    5. **Rezonáns nyomásérzékelők:**
        
        - **Elv:** A nyomás egy rezgő elemet (pl. kvarc kristály, szilícium rezonátor) feszít vagy nyom, megváltoztatva annak rezonanciafrekvenciáját. A frekvenciaváltozás rendkívül pontosan mérhető.
        - **Előnyök:** Nagyon nagy pontosság és stabilitás, digitális kimenet.
        - **Hátrányok:** Bonyolultabb felépítés, magasabb költség.
        - **Alkalmazás:** Precíziós barométerek, repülőgépek magasságmérői.
- **Nyomásméréshez kapcsolódó tényezők:**
    
    - **Túlterhelhetőség:** Mennyi nyomást visel el az érzékelő károsodás nélkül.
    - **Kompatibilitás a közeggel:** Az érzékelő anyaga ne reagáljon a mért közeggel (korrózió).
    - **Hőmérséklet-tartomány:** A hőmérséklet befolyásolja az érzékelő jellemzőit.
    - **Hiszterézis és linearitás.**

---

**11.2.2. Termikus áramlásmérők**

- **Elv:** A termikus áramlásmérők a folyadékok vagy gázok hőátadási tulajdonságainak változásán alapulnak. A mozgó közeg elvezeti a hőt egy fűtött felületről, és az elvezetett hő mennyisége arányos az áramlási sebességgel.
    
- **Működési elv:**
    
    1. **Fűtött elem:** Az érzékelő tartalmaz egy fűtőelemet, amely állandó hőmérsékletre van szabályozva, vagy állandó árammal van fűtve.
    2. **Hőmérséklet-érzékelők:** A fűtőelem előtt és/vagy után hőmérséklet-érzékelők mérik a közeg hőmérsékletét vagy a fűtőelem hőmérséklet-változását.
    3. **Hőelvezetés:** Áramló közeg hiányában a fűtőelem stabil hőmérsékleten van. Amikor a közeg áramlani kezd, hőt von el a fűtőelemről. Minél gyorsabban áramlik a közeg, annál több hőt von el.
    4. **Mérés:**
        - **Állandó hőmérsékletű (CTA - Constant Temperature Anemometer) módszer:** Fenntartják a fűtőelem állandó hőmérsékletét, és mérik a fenntartásához szükséges teljesítményt. A szükséges teljesítmény arányos az áramlási sebességgel.
        - **Állandó áramú módszer:** Állandó áramot vezetnek a fűtőelemen, és mérik a fűtőelem hőmérsékletének (ellenállásának) csökkenését. A hőmérsékletcsökkenés mértéke arányos az áramlási sebességgel.
- **Típusok:**
    
    - **Huzalos (Hot Wire) és filmszenzoros (Hot Film) anemométerek:** Nagyon vékony, fűtött vezeték (huzal) vagy fémfilm (platina) a mért közegbe helyezve. Jellemzően gázok és alacsony viszkozitású folyadékok áramlási sebességének mérésére. Nagyon gyors válaszidővel rendelkeznek.
    - **Membrános termikus áramlásmérők (MEMS alapú):** Mikrogyártási technológiával készült, kisméretű érzékelők, amelyek egy fűtőelemet és két hőmérséklet-érzékelőt (termisztort) tartalmaznak egy szilícium membránon. A gáz áramlása az egyik termisztor felé viszi a hőt, hőmérsékletkülönbséget okozva. A hőmérsékletkülönbség nagysága és iránya az áramlási sebességgel és iránnyal arányos.
- **Előnyök:**
    
    - Nincs mozgó alkatrész (mechanikai kopásmentes).
    - Nagyon pontosak alacsony áramlási sebességeknél.
    - Gyors válaszidő (huzalos és filmszenzoros típusok).
    - Térfogatáramot vagy tömegáramot mérhetnek.
    - Kisméretű és könnyen integrálható (MEMS típusok).
- **Hátrányok:**
    
    - Érzékeny a közeg hőmérsékletére, nyomására és összetételére (kompenzáció szükséges).
    - Érzékeny a szennyeződésekre, amelyek lerakódhatnak a fűtőelemen.
    - Nagyobb áramlási sebességeknél a hőelvezetés nemlineáris.
    - Tápellátást igényel a fűtéshez.
- **Alkalmazások:** Gázáramlás mérés (légkondicionálás, szellőzés, ipari gázok), orvosi légzésfigyelők, autóipar (légtömegmérő), laboratóriumi kísérletek.
    

---

**11.2.4. Ultrahangos áramlásmérők**

- **Elv:** Az ultrahangos áramlásmérők az ultrahanghullámok terjedési sebességének változását használják fel a folyadékok vagy gázok áramlási sebességének mérésére. Két fő elv létezik: a futásidő-különbség elv és a Doppler-elv.
    
- **Főbb működési elvek:**
    
    1. **Futásidő-különbség elv (Transit Time):**
        
        - **Működés:** Két ultrahangos jeladó/vevő (transzducer) van elhelyezve a cső falán, egymással szemben, vagy egymástól bizonyos távolságra, az áramlási irányhoz képest ferdén.
        - Az egyik transzducer kibocsát egy ultrahangimpulzust az áramlás irányába, a másik pedig fogadja azt (idő tflow​).
        - Ezután a másik transzducer bocsát ki impulzust az áramlással szemben, és az első fogadja azt (idő tagainst​).
        - A két futásidő közötti különbség (Δt=tagainst​−tflow​) egyenesen arányos a közeg áramlási sebességével. Ha a közeg áramlik, az áramlás irányába haladó hullám gyorsabban ér célba, mint az áramlással szemben haladó.
        - **Előnyök:** Nagyon pontos, kétirányú áramlás mérésére is alkalmas, kevésbé érzékeny a közeg szennyezettségére, mint a Doppler-mérők, kinyúlásmentes (non-intrusive) kivitelben is létezik (csőre kívülről rögzíthető).
        - **Hátrányok:** A közegnek buborékmentesnek vagy nagyon alacsony buboréktartalmúnak kell lennie, a falvastagság és az anyag ismerete szükséges a pontos működéshez (kinyúlásmentes esetén).
        - **Alkalmazás:** Tiszta folyadékok (víz, olaj), gázok áramlási sebességének mérése, ivóvíz hálózatok, fűtési rendszerek.
    2. **Doppler-elv:**
        
        - **Működés:** Egy ultrahangos jeladó kibocsát egy frekvenciájú ultrahanghullámot a folyadékba. Ha a folyadékban lebegő részecskék (buborékok, szennyeződések) vannak, ezekről visszaverődik az ultrahang. A visszavert hullám frekvenciája megváltozik (Doppler-eltolás) a részecskék mozgása miatt.
        - Az eltolódott frekvenciájú visszavert hullámot egy vevő detektálja. A frekvenciaeltolódás nagysága arányos a részecskék (és így a közeg) áramlási sebességével.
        - **Előnyök:** Alkalmas szennyezett folyadékok, iszapos vizek, szennyvíz áramlásának mérésére, kinyúlásmentes kivitelben is elérhető.
        - **Hátrányok:** Szükségesek lebegő részecskék a közegben, a pontosság függ a részecskék sűrűségétől és méretétől, egyirányú áramlás mérése általában.
        - **Alkalmazás:** Szennyvíztelepek, folyók és csatornák áramlási sebességének mérése, pép-, cement- és vegyipari alkalmazások.
- **Általános jellemzők:**
    
    - **Nincs mozgó alkatrész:** Minimális karbantartás, nincs kopás, hosszú élettartam.
    - **Kinyúlásmentes mérés lehetősége:** A szenzorok a cső külső felületére is rögzíthetők, ami egyszerűsíti a telepítést, nem befolyásolja az áramlást, és nem igényel csőmegszakítást.
    - **Kétirányú áramlás mérése** (futásidő-elven).
    - **Nyomásesés nélkül:** Nem okoz nyomásesést a rendszerben.
    - **Alkalmasak nagy csőátmérőkhöz.**
- **Hátrányok:**
    
    - A közeg hőmérséklete, sűrűsége, hangsebessége befolyásolja a mérést.
    - Létezhetnek akusztikus zajok, amelyek zavarhatják a mérést.
    - Relatíve magasabb kezdeti költség.
- **Alkalmazások:** Vízkezelés és elosztás, energiaipar, vegyipar, élelmiszeripar, gyógyszeripar, HVAC rendszerek.
    

---

**12. Környezeti paraméterek mérése**

A környezeti paraméterek mérése alapvető fontosságú számos területen: otthoni automatizálás, ipari folyamatvezérlés, mezőgazdaság, meteorológia, klímatechnika, egészségügy és biztonság. A főbb környezeti paraméterek és az azok mérésére használt érzékelők:

1. **Hőmérséklet:**
    
    - **Érzékelők:** RTD-k, termisztorok, hőelemek, félvezető IC-érzékelők (PTAT típusok, pl. LM35, DS18B20), infravörös érzékelők (érintésmentes mérésre).
    - **Alkalmazás:** Beltéri/kültéri hőmérséklet, HVAC rendszerek vezérlése, hűtőkamrák, szerverparkok felügyelete, mezőgazdasági meteorológia.
2. **Páratartalom (relatív páratartalom - RH):**
    
    - **Elv:** A levegőben lévő vízgőz mennyiségének mérése. A relatív páratartalom (RH) a levegőben lévő vízgőz mennyiségének aránya az adott hőmérsékleten maximálisan tárolható vízgőz mennyiségéhez képest.
    - **Érzékelők:**
        - **Kapacitív páratartalom-érzékelők:** Egy dielektromos anyaggal (pl. polimer) borított kondenzátor kapacitása változik, ahogy az anyag nedvességet vesz fel vagy ad le. A kapacitás változása arányos a páratartalommal. Leggyakoribb típus.
        - **Ellenállásos páratartalom-érzékelők:** Elektromos ellenállásuk változik a páratartalom hatására (pl. lítium-klorid alapúak).
        - **Termisztoros vagy higrométer alapú kombinált érzékelők:** A nedves és száraz hőmérő elve, a párolgás okozta lehűlést méri.
    - **Alkalmazás:** HVAC rendszerek, inkubátorok, raktárak, múzeumok, élelmiszeripari tárolás, lakások komfortérzete.
3. **Légnyomás:**
    
    - **Érzékelők:** Piezorezisztív vagy kapacitív nyomásérzékelők (MEMS alapúak). Ezek mérik az abszolút légnyomást.
    - **Alkalmazás:** Meteorológiai állomások, tengerszint feletti magasság meghatározása (pl. okostelefonokban, drónokban), ipari folyamatok légnyomásának ellenőrzése.
4. **Fényintenzitás (megvilágítás):**
    
    - **Érzékelők:**
        - **Fotodiódák, fototranzisztorok:** A beeső fény hatására áramot generálnak (fotodióda) vagy ellenállásuk változik (fotorezisztor).
        - **Fényérzékelő IC-k:** Gyakran tartalmaznak erősítőt, A/D átalakítót, kalibrációt és digitális interfészt (pl. BH1750, TSL2561).
    - **Alkalmazás:** Automatikus világításvezérlés, kültéri/beltéri fényviszonyok mérése, kijelző háttérvilágításának szabályozása (okostelefonok), napelemek hatékonyságának monitorozása.
5. **Levegőminőség (Gázkoncentrációk):**
    
    - **Érzékelők:**
        - **Félvezető gázérzékelők (MOS - Metal Oxide Semiconductor):** Fűtött fém-oxid réteg (pl. SnO2), amelynek ellenállása megváltozik, ha certain gázok (pl. CO, földgáz, alkohol gőz) adszorbeálódnak a felületén. Olcsók, de nem specifikusak.
        - **Elektrokémiai gázérzékelők:** Elektrokémiai reakciót használnak a gázkoncentráció mérésére (pl. CO, O2, H2S). Specifikusabbak és pontosabbak.
        - **Infravörös (NDIR - Non-Dispersive Infrared) gázérzékelők:** Meghatározott hullámhosszon abszorbeálódó gázok (pl. CO2, metán) koncentrációját mérik az abszorpció mértéke alapján. Nagyon pontosak és stabilak.
    - **Alkalmazás:** Szén-monoxid riasztók, éghető gázszivárgás-érzékelők, ipari gázmonitorozás, beltéri levegőminőség-monitorozás (CO2 szint), járművek kipufogógáz-elemzése.
6. **Mozgás és rezgés:**
    
    - **Érzékelők:**
        - **Gyorsulásmérők (accelerometers):** MEMS alapúak, tehetetlenségi erőt mérnek, ami a gyorsulással arányos. (3 tengelyes).
        - **Giroszkópok:** MEMS alapúak, szögsebességet mérnek.
        - **PIR (Passive Infrared) érzékelők:** Mozgásérzékelésre, az emberi test által kibocsátott infravörös sugárzás változását érzékelik.
    - **Alkalmazás:** Okostelefonok (képernyő elforgatása, lépésszámláló), robotika (pozíció és orientáció), drónok, járművek stabilizálása, biztonsági rendszerek.

- **Általános megfontolások a környezeti paraméterek mérésénél:**
    - **Kalibráció:** A szenzorok pontosságának fenntartásához rendszeres kalibráció szükséges.
    - **Környezeti hatások:** A szenzorok kimenetét befolyásolhatják más paraméterek (pl. a páratartalom-érzékelő hőmérsékletfüggése). Kompenzációra lehet szükség.
    - **Élettartam és stabilitás:** Különösen a gázszenzorok élettartama lehet korlátozott.
    - **Hálózatba kapcsolás:** Gyakran több szenzort összekapcsolnak (szenzorhálózatok) egy adott terület monitorozására.

---

**15.2. Intelligens érzékelők (Smart Sensors)**

- **Elv:** Az intelligens érzékelő (smart sensor) nem csupán egy fizikai mennyiséget alakít át elektromos jellé, hanem integráltan tartalmazza azokat az elektronikákat és funkciókat, amelyek lehetővé teszik a helyi jelfeldolgozást, öndiagnosztikát, kalibrációt és digitális kommunikációt. A cél az, hogy az érzékelő "gondolkodjon" és "kommunikáljon" anélkül, hogy minden nyers jelet egy központi vezérlőhöz kellene küldeni.
    
- **Felépítés:** Az intelligens érzékelők tipikusan a következő modulokat integrálják egy egységbe:
    
    1. **Érzékelő elem (Sensing Element):** Maga a fizikai jelátalakító (pl. piezorezisztív membrán, Pt100 ellenállás).
    2. **Jelkondicionáló áramkör (Signal Conditioning Unit):** Erősíti, szűri, linearizálja a nyers érzékelő jelet.
    3. **Analóg-digitális átalakító (ADC):** Az analóg érzékelő jelet digitális formátumba konvertálja.
    4. **Mikrokontroller/Mikroprocesszor (Microcontroller/Microprocessor):** Az "intelligenciát" biztosító központi egység. Feladatai:
        - Adatgyűjtés és feldolgozás.
        - Kalibrációs adatok tárolása és alkalmazása.
        - Linearizáció (szoftveres úton).
        - Öndiagnosztika és hibafelismerés.
        - Döntéshozatal (egyszerűbb esetekben, pl. riasztás küldése küszöb túllépésekor).
        - Kommunikációs protokollok kezelése.
    5. **Memória:** Kalibrációs adatok, konfiguráció, firmware tárolására.
    6. **Kommunikációs interfész:** Digitális kommunikációt tesz lehetővé más rendszerekkel (pl. I2C, SPI, UART, Modbus, Profibus, CAN, Ethernet, vezeték nélküli protokollok mint Zigbee, Bluetooth Low Energy).
- **Jellemzők és funkciók (az "intelligencia" szintjei):**
    
    - **Jelfeldolgozás:** A nyers adatok helyi feldolgozása, pl. átlagolás, szűrés, trendanalízis, mértékegységre konvertálás.
    - **Linearizáció:** A szenzor nemlineáris karakterisztikájának korrekciója szoftveresen.
    - **Kalibráció:** Gyári kalibrációs adatok tárolása és felhasználása, vagy helyi újra kalibrálás lehetősége. Csökkenti a gyártási szórás hatását.
    - **Öndiagnosztika:** Az érzékelő saját állapotának ellenőrzése (pl. szenzorhiba, vezetékszakadás, túlmelegedés), és hibaüzenetek küldése.
    - **Kommunikáció:** Digitális formátumú adatátvitel, amely ellenáll a zajnak és lehetővé teszi a hálózati működést. Vezetékes vagy vezeték nélküli kapcsolatok.
    - **Adattárolás:** Rövidtávú pufferelés vagy hosszútávú adatrögzítés.
    - **Decentralizált intelligencia:** Csökkenti a központi vezérlőrendszer terhelését, gyorsabb reakcióidőt tesz lehetővé.
    - **Plug-and-play képesség:** Egyes intelligens érzékelők automatikusan felismerik és konfigurálják magukat a hálózaton.
    - **Tápellátás-menedzsment:** Energiahatékony működés, alacsony fogyasztású módok.
- **Előnyök:**
    
    - **Nagyobb pontosság és megbízhatóság:** Helyi kalibráció és jelfeldolgozás révén.
    - **Egyszerűbb rendszerintegráció:** Digitális kimenet, szabványos kommunikációs protokollok.
    - **Csökkentett zaj:** A jel már digitális formában kerül továbbításra, kevésbé érzékeny az elektromágneses zavarokra.
    - **Kábelköltségek csökkenése:** Gyakran csak egy digitális buszra van szükség a sok analóg vezeték helyett.
    - **Proaktív karbantartás:** Öndiagnosztika révén előre jelezheti a hibákat.
    - **Skálázhatóság:** Könnyebben bővíthetőek a szenzorhálózatok.
- **Hátrányok:**
    
    - Magasabb kezdeti költség (bár a teljes rendszerköltség csökkenhet).
    - Bonyolultabb tervezés és gyártás.
    - Tápellátást igényelnek az elektronikához.
- **Alkalmazások:**
    
    - **Ipar 4.0 és IoT (Internet of Things):** Gyártósorok, okosgyárak, intelligens épületek, okos városok.
    - **Ipari automatizálás:** Prediktív karbantartás, folyamatvezérlés.
    - **Autóipar:** Motorvezérlés, ADAS (Advanced Driver-Assistance Systems).
    - **Orvosi eszközök:** Hordozható diagnosztikai eszközök.
    - **Környezeti monitoring:** Időjárás állomások, levegőminőség-monitorozás.
    - **Robotika:** Szenzorfúzió, intelligens navigáció.