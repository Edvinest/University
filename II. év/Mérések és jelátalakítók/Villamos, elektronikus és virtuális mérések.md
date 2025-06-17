## 1.5 Mérési hibák és hibaszámítás

A mérés célja egy fizikai mennyiség értékének meghatározása. Azonban a mérések soha nem tökéletesek, mindig tartalmaznak valamilyen hibát.

**Alapfogalmak:**

- **Valódi érték (Xv​):** Az a fizikai mennyiség pontos, elméletileg létező értéke. Gyakorlatban általában ismeretlen.
- **Mért érték (Xm​):** A mérés eredményeként kapott érték.
- **Hiba (ΔX):** A mért érték és a valódi érték különbsége: ΔX=Xm​−Xv​.
- **Abszolút hiba:** Maga a ΔX különbség. Mértékegysége megegyezik a mért mennyiségével.
- **Relatív hiba (δX​):** Az abszolút hiba és a valódi érték hányadosa, gyakran százalékban kifejezve: δX​=Xv​ΔX​=Xv​Xm​−Xv​​.
- **Hibaosztály:** A mérőműszer pontosságát jellemző szám, amely megadja a megengedett maximális hibát a mérési tartományhoz képest, százalékban. Pl. 0,5-ös hibaosztályú műszer maximális hibája a mérési tartomány 0,5%-a.

**Hibák csoportosítása eredetük szerint:**

1. **Durva hibák (fatális hibák):** Emberi gondatlanságból, figyelmetlenségből adódó hibák (pl. leolvasási hiba, hibás bekötés). Ezeket a hibákat ki kell szűrni, és a mérést megismételni.
    - **VEVM 28. oldal**
2. **Szisztematikus hibák (rendszeres hibák):** Folyamatosan és azonos irányban ható hibák, amelyek a mérési elrendezésből, a műszer hibájából, vagy a mérési módszerből adódnak.
    - **VEVM 29. oldal**
    - **Típusai:**
        - **Műszerhiba:** A műszer pontatlanságából adódó hiba (pl. rossz kalibráció).
        - **Módszerhiba:** A mérési módszer sajátosságaiból eredő hiba (pl. mérőműszer bemeneti impedanciája befolyásolja a mért áramkört).
        - **Környezeti hiba:** Környezeti tényezők (hőmérséklet, páratartalom) hatására fellépő hiba.
        - **Személyes hiba:** A mérő személy szubjektív torzítása (pl. parallaxishiba).
    - **Szisztematikus hibák kiküszöbölése/csökkentése:**
        - Kalibrálás
        - Kompenzálás
        - Mérési körülmények stabilizálása
        - Helyes mérési módszer megválasztása
3. **Véletlen hibák:** Olyan hibák, amelyek előre nem látható, sok, egyenként elhanyagolható nagyságú tényező együttes hatására jönnek létre. Nem lehet őket kiküszöbölni, de statisztikai módszerekkel kezelhetők.
    - **VEVM 30. oldal**
    - **Jellemzői:**
        - Pozitív és negatív irányú eltérések egyaránt előfordulnak.
        - Kisebb hibák gyakrabban fordulnak elő, mint a nagyobbak.
        - Nagyobb számú mérés esetén a hibák eloszlása közelít a Gauss-eloszláshoz (normális eloszlás).

**Hibaszámítás:**

- **Átlagérték (Xˉ):** Ismételt mérések esetén az értékek átlaga. $$ \bar{X} = \frac{\sum_{i=1}^{n} X_i}{n} $$ Ahol Xi​ az i-edik mérés eredménye, n a mérések száma.
    - **VEVM 30. oldal**
- **Szórás (σ):** A mérések szóródását jellemző statisztikai mennyiség. $$ \sigma = \sqrt{\frac{\sum_{i=1}^{n} (X_i - \bar{X})^2}{n-1}} $$
    - **VEVM 30. oldal**
- **Hiba terjedése (összetett hibák):** Amikor több mért mennyiségből számítunk ki egy másik mennyiséget, a hibák összeadódnak.
    - **Abszolút hibák összeadódása:** Ha Y=A+B, akkor ΔY=ΔA+ΔB (legrosszabb eset).
    - **Relatív hibák összeadódása:** Ha Y=A⋅B vagy Y=A/B, akkor δY​=δA​+δB​ (legrosszabb eset).
    - **VEVM 33. oldal (Hibák továbbterjedése függvényeknél)**
        - Ha Y=f(X1​,X2​,...,Xn​), akkor az abszolút hiba (teljes differenciál alapján): $$ dY = \frac{\partial Y}{\partial X_1}dX_1 + \frac{\partial Y}{\partial X_2}dX_2 + ... + \frac{\partial Y}{\partial X_n}dX_n $$
        - A maximális abszolút hiba, ha feltételezzük, hogy a hibák a legrosszabb irányba adódnak össze: $$ \Delta Y_{max} = \left| \frac{\partial Y}{\partial X_1} \right| \Delta X_1 + \left| \frac{\partial Y}{\partial X_2} \right| \Delta X_2 + ... + \left| \frac{\partial Y}{\partial X_n} \right| \Delta X_n $$
        - A véletlen hibák átlagos értékét figyelembe véve (gyökös négyzetes összeadás): $$ \Delta Y = \sqrt{\left( \frac{\partial Y}{\partial X_1} \Delta X_1 \right)^2 + \left( \frac{\partial Y}{\partial X_2} \Delta X_2 \right)^2 + \dots + \left( \frac{\partial Y}{\partial X_n} \Delta X_n \right)^2} $$
            

---

## 2.1 Állandó mágnesű (lengő tekercsű) műszer

Az állandó mágnesű lengő tekercses (D'Arsonval-típusú) műszer az egyenáramú mennyiségek (feszültség, áram) mérésére szolgáló elektromechanikus műszer.

**Működési elv:**

- Egy tekercs egy állandó mágneses mezőben helyezkedik el. Amikor áram folyik át a tekercsen, Lorentz-erő hat rá, ami forgatónyomatékot hoz létre.
- Ez a forgatónyomaték ellenállást fejt ki a műszer rugójában, ami a tekercs elfordulásához vezet.
- A tekercshez rögzített mutató egy skálán jelzi az áramerősséget.
- A kitérés egyenesen arányos a tekercsen átfolyó áramerősséggel. Ezért a skála lineáris.

**Főbb részei:**

- **Állandó mágnes:** Erős, állandó mágneses teret hoz létre.
- **Lengő tekercs:** Vékony drótból készült tekercs, amely könnyen elfordulhat.
- **Rugók:** Visszaállító nyomatékot biztosítanak és bevezetik az áramot a tekercsbe.
- **Mutató:** A skálán mutatja az értéket.
- **Skála:** A mért mennyiség (áram, feszültség) értékeit mutatja.
- **Mágneses mag:** A tekercs belsejében elhelyezkedő vasmag, amely homogenizálja a mágneses teret és növeli a fluxust.

**Nyomatékok:**

- **Működő nyomaték (Mm​):** $$ M_m = B \cdot A \cdot N \cdot I $$ Ahol:
    - B: Mágneses indukció [Tesla]
    - A: Tekercs felülete [m²]
    - N: Tekercs menetszáma
    - I: Áramerősség a tekercsben [A]
    - **VEVM 40. oldal, 2.1. ábra**
- **Ellennyomaték (Me​):** A rugók által kifejtett visszaállító nyomaték. $$ M_e = D \cdot \alpha $$ Ahol:
    - D: Rugóállandó [Nm/rad]
    - α: Kitérési szög [rad]
    - **VEVM 40. oldal**

Egyensúlyban Mm​=Me​, azaz B⋅A⋅N⋅I=D⋅α. Ebből látszik, hogy a kitérési szög (α) egyenesen arányos az áramerősséggel (I), ami lineáris skálát eredményez.

**Előnyök:**

- Nagy érzékenység.
- Lineáris skála.
- Alacsony energiafogyasztás.
- Pontos mérés egyenáramon.

**Hátrányok:**

- Csak egyenáram mérésére alkalmas (vagy egyenirányítóval AC esetén).
- Érzékeny a mechanikai rázkódásra és a külső mágneses terekre.
- Drágább, mint más típusú műszerek.

**VEVM 39-41. oldal, 2.1. ábra (Állandó mágnesű lengő tekercsű műszer felépítése)**

---

### 2.1.1 Az állandó mágnesű műszer mérési határának bővítése. Amper- és volt mérők, ohm mérők

Az alapállandó mágnesű lengő tekercses műszer tipikusan mikroamper vagy milliamper nagyságrendű áramot és néhány millivolt feszültséget képes mérni. A mérési tartomány bővítéséhez söntellenállásokat (ampermérőhöz) vagy előtét-ellenállásokat (voltmérőhöz) alkalmaznak.

#### Ampermérők - Áram mérése söntellenállással

- **Cél:** Nagyobb áramok mérése.
- **Módszer:** Egy **söntellenállást (Rs​)** (kis ellenállású, precíziós ellenállás) párhuzamosan kapcsolnak a műszer tekercsével.
- **Elv:** A mérendő áram nagy része a söntön folyik át, és csak egy kis, ismert hányada jut a műszer tekercsébe.
- **Képlet:**
    - A műszer tekercsének árama: Im​
    - A műszer tekercsének ellenállása: Rm​
    - A söntellenállás árama: Is​
    - A söntellenállás ellenállása: Rs​
    - A mérendő teljes áram: I
    - A söntellenállásra és a műszerre eső feszültség azonos: Us​=Um​⟹Is​Rs​=Im​Rm​
    - A teljes áram: I=Im​+Is​=Im​+Im​Rs​Rm​​=Im​(1+Rs​Rm​​)
    - Az árammérő mérési határát bővítő tényező (nI​): $$ n_I = \frac{I}{I_m} = 1 + \frac{R_m}{R_s} $$
    - A szükséges söntellenállás: $$ R_s = \frac{R_m}{n_I - 1} $$
    - **VEVM 41-42. oldal, 2.2. ábra (Ampermérő söntellenállással)**
- **Megjegyzés:** A söntellenállásnak stabilnak, hőmérsékletfüggetlennek és nagy áramterhelhetőségűnek kell lennie. Ideális esetben az ampermérő belső ellenállása nagyon kicsi.

#### Voltmérők - Feszültség mérése előtét-ellenállással

- **Cél:** Nagyobb feszültségek mérése.
- **Módszer:** Egy **előtét-ellenállást (Re​)** (nagy ellenállású, precíziós ellenállás) sorosan kapcsolnak a műszer tekercsével.
- **Elv:** Az előtét-ellenállás korlátozza a műszeren átfolyó áramot egy adott feszültségnél, így a műszer a teljes feszültség egy kis részét érzékeli.
- **Képlet:**
    - A műszer tekercsének árama: Im​
    - A műszer tekercsének ellenállása: Rm​
    - Az előtét-ellenállás ellenállása: Re​
    - A mérendő teljes feszültség: U
    - Az áramkörben folyó áram (Im​) megegyezik a műszer teljes kitéréséhez szükséges árammal.
    - A teljes feszültség: U=Im​(Rm​+Re​)
    - A feszültségmérő mérési határát bővítő tényező (nU​): $$ n_U = \frac{U}{U_m} = \frac{I_m (R_m + R_e)}{I_m R_m} = 1 + \frac{R_e}{R_m} $$
    - A szükséges előtét-ellenállás: $$ R_e = R_m (n_U - 1) $$
    - **VEVM 43. oldal, 2.3. ábra (Voltmérő előtét-ellenállással)**
- **Érzékenység:** A voltmérő érzékenységét ohm/voltban adják meg: S=Ifm​1​, ahol Ifm​ a műszer teljes kitéréséhez szükséges áram. Minél nagyobb az érzékenység, annál jobb a voltmérő, mert annál kevésbé terheli meg a mért áramkört (nagyobb a belső ellenállása).

#### Ohm mérők - Ellenállás mérése

Az ohm mérők az egyenáramú lengő tekercses műszer és egy belső elem vagy tápegység felhasználásával mérik az ellenállást.

- **Soros ohm mérő:**
    - A műszer, egy belső ellenállás és egy elem sorosan van kapcsolva. A mérendő ellenállást is sorosan kötik be.
    - Az áram a mérendő ellenállás nagyságától függ. Minél nagyobb az ellenállás, annál kisebb az áram, annál kisebb a kitérés.
    - **Skála:** Nem lineáris, az ellenállás növekedésével a kitérés csökken, a skála a végtelen felé zsúfolt.
    - **VEVM 44. oldal, 2.4. ábra (Soros ohmmérő)**
- **Párhuzamos ohm mérő:**
    - A mérendő ellenállást a műszerrel párhuzamosan kötik.
    - **VEVM 45. oldal, 2.5. ábra (Párhuzamos ohmmérő)**

**Fontos megjegyzés:** Az állandó mágnesű műszerek csak egyenáramú jel mérésére alkalmasak. Váltakozó áramú méréshez egyenirányítót kell eléjük kapcsolni.

---

### 2.1.2 Diódás mérési egyenirányítók

Mivel az állandó mágnesű lengő tekercses műszer csak egyenáramot képes mérni, váltakozó áramú (AC) feszültség vagy áram méréséhez egyenirányító áramkörre van szükség.

**Működési elv:**

- Az egyenirányító áramkör a váltakozó feszültséget vagy áramot egyenáramúvá (pulzáló egyenárammá) alakítja, amit a lengő tekercses műszer mérni tud.
- A műszer ekkor az egyenirányított jel átlagértékét fogja mutatni.

**Típusok:**

1. **Félhullámú egyenirányító:**
    - Egy diódát használ. Csak a váltakozó jel egyik félhullámát engedi át.
    - **VEVM 46. oldal, 2.6. ábra (Félhullámú egyenirányító)**
    - **Hátrány:** Csak az energia felét hasznosítja, és a kimeneti jel erősen pulzál. Az átlagérték kisebb, mint a teljes hullámú egyenirányításnál.
    - Ideális szinuszos jelnél az átlagérték: Uaˊtl​=πUcsuˊcs​​
2. **Teljes hullámú egyenirányító (Graetz-híd):**
    - Négy diódát használ híd-kapcsolásban. Mindkét félhullámot egyenirányítja, a negatív félhullámot pozitívvá fordítva.
    - **VEVM 46. oldal, 2.7. ábra (Teljes hullámú egyenirányító (Graetz-híd))**
    - **Előny:** Hatékonyabb, a kimeneti jel egyenletesebb, mint a félhullámú egyenirányításnál.
    - Ideális szinuszos jelnél az átlagérték: Uaˊtl​=π2Ucsuˊcs​​

- **VEVM 47. oldal, 2.8. ábra (Diódás egyenirányítás a műszer bemeneténél)**
    - A diódák nyitófeszültsége (kb. 0,7 V szilícium diódák esetén) torzítja a mérést, különösen kis feszültségeknél. Ezt kompenzálni kell, vagy nagy feszültségeknél elhanyagolható.

**Problémák a diódás egyenirányítással:**

- **Nemlineáris működés:** A diódák nyitófeszültsége miatt kis feszültségeknél a műszer nemlineárisan működik, vagy egyáltalán nem mutat kitérést.
- **Csúcs- vagy átlagérték mérése:** A lengő tekercses műszer az egyenirányított jel átlagértékét mutatja. Ha effektív értéket (RMS) akarunk mérni, akkor a műszer skáláját úgy kell kalibrálni, hogy a szinuszos jel effektív értékét mutassa az átlagérték alapján. Ez viszont azt jelenti, hogy nem-szinuszos jelek esetén a mérés hibás lesz.
   - Szinuszos jel esetén:
  $$ U_{\text{RMS}} = \frac{1}{\sqrt{2}} U_{\text{csúcs}} \quad \text{és} \quad U_{\text{átl}} = \frac{2}{\pi} U_{\text{csúcs}} $$
- Ebből következik:
  $$ U_{\text{RMS}} = \frac{2\sqrt{2}}{\pi} U_{\text{átl}} \approx 1.11 \cdot U_{\text{ált}} $$Ez az ún. **alakfaktor**.
    - A diódás egyenirányítású műszer tehát az átlagértéket méri, és ezt szinuszos jelre kalibrált skálával átváltja effektív értékre. Más hullámformák esetén ez a kalibráció hibás eredményt ad.

---

### 2.1.3 Multiméterek

A multiméter (más néven volt-ohm-milliampermérő, VOM) egy sokoldalú mérőműszer, amely képes több elektromos mennyiség, például feszültség, áram és ellenállás mérésére. Modern multiméterek gyakran mérnek további mennyiségeket is, mint kapacitás, frekvencia, hőmérséklet, dióda és tranzisztor teszt.

**Típusok:**

1. **Analóg multiméterek:**
    
    - Az állandó mágnesű lengő tekercses műszer elvén alapulnak, kiegészítve sönt- és előtét-ellenállásokkal, valamint egyenirányítókkal.
    - **Jellemzők:**
        - Több mérési tartomány (választókapcsolóval választható).
        - Több skála a különböző mennyiségekhez és tartományokhoz.
        - `VEVM 48. oldal, 2.9. ábra (Analóg multiméter felépítése)`
    - **Előnyök:**
        - Egyszerű, robusztus kivitel.
        - Jó a trendek és a gyorsan változó jelek megfigyelésére.
    - **Hátrányok:**
        - Leolvasási hibák, parallaxishiba.
        - Alacsonyabb pontosság a digitálishoz képest.
        - Belső ellenállásuk (különösen a voltmérő funkcióban) alacsonyabb lehet, mint a digitális műszereké, ami befolyásolhatja a mért áramkört.
2. **Digitális multiméterek (DMM):**
    
    - Analóg-digitális átalakító (ADC) segítségével a mért analóg jelet digitális értékké alakítják, amelyet numerikus kijelzőn jelenítenek meg.
    - **Jellemzők:**
        - LCD vagy LED kijelző.
        - Magasabb pontosság és felbontás.
        - Automatikus tartományváltás (autoranging) gyakori.
        - Számos kiegészítő funkció (pl. True RMS, frekvenciamérés, kapacitásmérés).
        - **VEVM 49. oldal, 2.10. ábra (Digitális multiméter felépítése)**
    - **Előnyök:**
        - Könnyű leolvasás, nincsenek leolvasási hibák.
        - Nagyon pontos és nagy felbontású.
        - Magas bemeneti impedancia (különösen feszültségmérésnél), minimális áramköri terhelés.
    - **Hátrányok:**
        - Nehezebb a gyorsan változó jelek trendjének megfigyelése (bár egyesek rendelkeznek bargraph kijelzővel).
        - Lehetnek zajra érzékenyek.

**Főbb funkciók és alapelvek:**

- **DC feszültségmérés:**
    - Az analóg multiméterek előtét-ellenállásokat használnak.
    - A digitális multiméterek bemeneti osztóval és A/D átalakítóval működnek. Magas bemeneti impedancia (tíz megohm vagy több) jellemzi őket.
- **AC feszültségmérés:**
    - Az analóg multiméterek diódás egyenirányítókat használnak, az átlagértéket mérik és effektív értékre kalibrálják a szinuszos jelnél.
    - A digitális multiméterek is használhatnak egyenirányítókat, de a fejlettebbek True RMS (valódi effektív érték) mérésre képesek, ami bármilyen hullámforma esetén pontos effektív értéket ad.
- **DC árammérés:**
    - Söntellenállásokat használnak, a feszültségesést mérik a söntön.
- **AC árammérés:**
    - Söntellenállások és egyenirányítók kombinációja, vagy áramváltó.
- **Ellenállásmérés (ohmmérő):**
    - A multiméter belső áramforrást és ismert ellenállásokat használva méri az ismeretlen ellenálláson eső feszültséget vagy az azon átfolyó áramot.
    - `VEVM 44-45. oldal` (Soros és párhuzamos ohmmérő)

---

## 3.1 Egyenáramú hidak

Az egyenáramú hidak, különösen a Wheatstone-híd, pontos ellenállásmérésre szolgálnak. A híd kiegyensúlyozott állapotában a nullmódszer elvén alapulnak, ami nagyon nagy pontosságot tesz lehetővé.

### 3.1.1 A Wheatstone-híd

A Wheatstone-híd egy négy ellenállásból álló áramkör, amelyet feszültségforrás táplál, és egy nullindikátor (galvanométer vagy voltmérő) van bekötve a híd átlójába.

**Felépítés:**

- Négy ellenállás: R1​,R2​,R3​ (ismertek, vagy állíthatók) és Rx​ (ismeretlen, mérendő ellenállás).
- Feszültségforrás (U0​).
- Nullindikátor (G) a híd két ágának középső pontja között.

**Működési elv:**

- A híd akkor van kiegyensúlyozott állapotban, ha a nullindikátoron átfolyó áram vagy az azon eső feszültség nulla. Ez azt jelenti, hogy a nullindikátor két bemeneti pontjának potenciálja azonos (UAB​=0).
- Kiegyensúlyozott állapotban az áramok aránya a híd két ágában azonos: $$ \frac{U_0 \cdot R_3}{R_1 + R_3} = \frac{U_0 \cdot R_x}{R_2 + R_x} $$
    - **VEVM 56. oldal, 3.1. ábra (Wheatstone-híd)**
- A kiegyensúlyozott híd feltétele: $$ \frac{R_1}{R_2} = \frac{R_3}{R_x} \quad \text{vagy} \quad R_1 R_x = R_2 R_3 $$
- Ebből az ismeretlen ellenállás (Rx​) kifejezhető: $$ R_x = R_3 \frac{R_2}{R_1} $$ Ahol R1​ és R2​ az aránykarok, R3​ a mérőkar, Rx​ a mérendő ellenállás.
    - **VEVM 56. oldal**

**A híd kiegyensúlyozása:**

- Általában R3​ vagy R1​/R2​ (vagy az arányuk) változtatásával érik el, amíg a nullindikátor nullát mutat.
- **Nullmódszer:** Ez a módszer rendkívül pontos, mivel a nullindikátor akkor sem terheli a mért áramkört, ha nem ideális, hiszen nulla áram folyik rajta. A pontosságot csak a referencia ellenállások és a feszültségforrás stabilitása korlátozza.

**Alkalmazások:**

- Precíz ellenállásmérés (pl. laboratóriumokban).
- Érzékelők (hőmérséklet, nyomás, deformáció) mérése, amelyek ellenállás-változáson alapulnak (pl. Wheatstone-hídba kötött nyúlásmérő bélyeg).
- **VEVM 57. oldal (Mérőhíd érzékelőkkel)**

**Hidak kiegyensúlyozatlansága:**

- Ha a híd nincs kiegyensúlyozott állapotban, akkor a nullindikátoron feszültség (UAB​) jelenik meg. Ezt a feszültséget lehet mérni, és ebből számítani az ellenállás változását. Ez az ún. **kitérési módszer**, amely kevésbé pontos, de gyorsabb.
    - A híd kimeneti feszültsége (UAB​) arányos az ellenállás változásával, amennyiben az változás kicsi.

---

## 3.2 Váltóáramú mérő hidak

A váltóáramú hidak hasonló elven működnek, mint az egyenáramú hidak, de váltakozó áramú (AC) forrás táplálja őket, és kapacitás, induktivitás, valamint impedancia mérésére is alkalmasak. A nullindikátor itt általában egy AC-s érzékelő (pl. oszcilloszkóp, fejhallgató magas frekvencián, vagy speciális AC-s voltmérő).

**Általános feltétel a váltóáramú híd kiegyensúlyozottságához:**

- A híd akkor van kiegyensúlyozott állapotban, ha a nullindikátoron nulla feszültség esik. Ez azt jelenti, hogy a híd két ágának impedancia aránya komplex síkon azonos: $$ \frac{Z_1}{Z_2} = \frac{Z_3}{Z_x} \quad \text{vagy} \quad Z_1 Z_x = Z_2 Z_3 $$ Ahol Z1​,Z2​,Z3​,Zx​ a híd elemeinek komplex impedanciái.
- Mivel az impedanciák komplex mennyiségek (Z=R+jX), a kiegyensúlyozottság két feltételt jelent:
    1. **Az abszolút értékek arányának egyenlősége:** ∣Z1​∣/∣Z2​∣=∣Z3​∣/∣Zx​∣
    2. **A fázisszögek egyenlősége:** ϕ1​−ϕ2​=ϕ3​−ϕx​
- Ez azt jelenti, hogy a híd kiegyensúlyozásához általában két független paramétert kell állítani (pl. egy ellenállást és egy kapacitást).

**Típusok és alkalmazások (példák):**

- **Maxwell-híd:** Induktivitás mérésére, ahol az induktív karral párhuzamosan egy kondenzátor van.
    - **VEVM 58-59. oldal, 3.2. ábra (Maxwell-híd)**
    - Kiegyenlítéshez az ismeretlen induktivitás (Lx​) és soros ellenállás (Rx​) határozható meg.
    - Kiegyenlítés feltétele: Rx​=R1​R2​R3​​ és Lx​=C1​R2​R3​.
- **Hay-híd:** Hasonló a Maxwell-hídhoz, de soros kondenzátort használ induktív karral. Magasabb Q-faktorú tekercsek mérésére alkalmasabb.
    - **VEVM 60. oldal, 3.3. ábra (Hay-híd)**
- **Schering-híd:** Kapacitás és veszteségi tényező (tg δ) mérésére használják, főként dielektromos anyagok vizsgálatára.
    - **VEVM 61-62. oldal, 3.4. ábra (Schering-híd)**
    - Kiegyenlítés feltétele: Cx​=R2​R1​​C3​ és Rx​=R3​C3​C4​​.
- **Wien-híd:** Frekvencia mérésére használható, ha az ellenállások és kondenzátorok ismertek. Szinuszhullámú oszcillátorokban is alkalmazzák.
    - **VEVM 62-63. oldal, 3.5. ábra (Wien-híd)**
    - Kiegyenlítés feltétele: R3​R4​​=R2​R1​​+C1​C2​​ és ω2=R1​C1​R2​C2​1​.
    - Ha R1​=R2​=R és C1​=C2​=C, akkor R3​R4​​=2 és f=2πRC1​.

**Előnyök:**

- Nagyon pontos mérések a nullmódszernek köszönhetően.
- Széles körben alkalmazhatók különböző elektromos paraméterek mérésére.

**Hátrányok:**

- A kiegyenlítés néha időigényes lehet, különösen, ha két paramétert kell beállítani.
- Külső zajok és parazita kapacitások/induktivitások befolyásolhatják a pontosságot magas frekvenciákon.

---

## 4.1 Villamos feszültség mérése

A villamos feszültség mérése az egyik leggyakoribb feladat az elektronikában és az elektrotechnikában. Különböző eszközök és módszerek léteznek erre a célra.

**Alapelvek:**

- A feszültségmérés mindig párhuzamosan történik a mérendő áramkörrel.
- A voltmérőnek ideálisan végtelen nagy belső ellenállással kell rendelkeznie, hogy ne terhelje a mért áramkört.

**Mérőműszerek:**

1. **Analóg voltmérők:**
    - Alapvetően lengő tekercses műszerek, melyekhez sorosan előtét-ellenállás van kapcsolva a mérési tartomány bővítésére.
    - Csak egyenáram mérésére alkalmasak közvetlenül. Váltakozó áramhoz egyenirányító szükséges.
    - Érzékenységük korlátozott (pl. 20 kΩ/V), ami azt jelenti, hogy terhelhetik az áramkört.
    - **VEVM 43. oldal**
2. **Digitális voltmérők (DVM):**
    - A modern feszültségmérés alapja.
    - Bemeneti osztóval és analóg-digitális átalakítóval (ADC) alakítják a feszültséget digitális számmá.
    - Nagyon magas bemeneti impedanciával rendelkeznek (tipikusan 10 MΩ vagy több), így minimálisra csökkentik az áramkör terhelését.
    - Képesek DC és AC feszültséget is mérni, sok esetben True RMS funkcióval.
    - **VEVM 49. oldal (Digitális multiméter felépítése)**
3. **Elektronikus voltmérők:**
    - Olyan voltmérők, amelyek aktív elektronikai alkatrészeket (pl. műveleti erősítőket) használnak a bemeneti impedancia növelésére és a jelfeldolgozásra.
    - Ezek közé tartoznak a digitális voltmérők is, de régebben léteztek analóg kijelzős elektronikus voltmérők is (pl. elektroncsöves voltmérők).
    - **VEVM 65-72. oldal (Elektronikus voltmérők)**

#### 4.1.1 Feszültségmérő transzformátorok (feszültségváltók)

Nagyfeszültségű rendszerekben (pl. energiaátviteli hálózatokban) a közvetlen feszültségmérés veszélyes és nehézkes. Erre a célra feszültségmérő transzformátorokat (vagy feszültségváltókat, angolul Potential Transformer - PT vagy Voltage Transformer - VT) használnak.

**Cél:**

- **Lefeszültségszintek csökkentése:** A nagyfeszültséget egy biztonságosan mérhető, szabványos szintre (pl. 100 V vagy 110 V) alakítják át.
- **Galvanikus leválasztás:** Elválasztják a mérőműszereket a nagyfeszültségű rendszertől, növelve a biztonságot.

**Működési elv:**

- Egy speciális transzformátor, amelynek primer tekercse a mérendő nagyfeszültségre van kapcsolva (párhuzamosan), a szekunder tekercse pedig a mérőműszerre.
- A primer oldalon nagy menetszámú tekercs, a szekunder oldalon arányosan kisebb menetszámú tekercs van.
- Az átviteli arány (menetszám-arány) pontosan ismert és stabil. $$ \frac{U_1}{U_2} \approx \frac{N_1}{N_2} = \text{konstans} $$ Ahol:
    - U1​: Primer feszültség
    - U2​: Szekunder feszültség
    - N1​: Primer menetszám
    - N2​: Szekunder menetszám
    - **VEVM 74. oldal, 4.1. ábra (Feszültségmérő transzformátor elvi kapcsolása)**

**Jellemzők:**

- **Nagy primer impedancia:** A primer tekercs nagyon magas induktív ellenállással rendelkezik, így minimális áramot vesz fel a mért áramkörből.
- **Pontosság:** Precíziós gyártásúak, a feszültségarány és a fáziseltolás minimális.
- **Névleges feszültségek:** A primer oldal több kV-tól több száz kV-ig terjedhet, a szekunder oldal általában 100 V, 110 V vagy 120 V.
- **Terhelés:** A szekunder oldalra csatlakoztatott mérőműszerek (voltmérők, teljesítménymérők) terhelése minimálisra van tervezve, hogy ne befolyásolja az átviteli arányt.
- **Osztálypontosság:** Hibaosztályuk (pl. 0.2, 0.5) jelzi a maximális megengedett feszültségarány hibát és fázishibát.
    - **VEVM 75. oldal, 4.2. ábra (Feszültségváltók jellemző hibagörbéi)**

**Alkalmazások:**

- Nagyfeszültségű hálózatokban feszültségmérésre, védelmi rendszerekhez.
- Teljesítménymérőkhöz, energiafogyasztás méréséhez.

---

## 4.2 Áramerősségek mérése

Az áramerősség mérése az egyik alapvető feladat az elektromos rendszerekben. Fontos szempont, hogy az ampermérő minimálisra csökkentse a mért áramkör ellenállását.

**Alapelvek:**

- Az árammérés mindig sorosan történik a mérendő áramkörrel.
- Az ampermérőnek ideálisan nulla belső ellenállással kell rendelkeznie, hogy ne befolyásolja a mért áram nagyságát.

**Mérőműszerek:**

1. **Analóg ampermérők:**
    - Alapvetően lengő tekercses műszerek, melyekkel párhuzamosan söntellenállás van kapcsolva a mérési tartomány bővítésére.
    - Csak egyenáram mérésére alkalmasak közvetlenül. Váltakozó áramhoz egyenirányító szükséges.
    - **VEVM 41-42. oldal**
2. **Digitális ampermérők (DMM):**
    - A söntellenálláson eső feszültséget mérik (ami arányos az árammal), majd ezt a feszültséget digitalizálják.
    - Képesek DC és AC áramot is mérni, sok esetben True RMS funkcióval.
3. **Áramfogó (lakháromszög):**
    - Transzformátor elvén működő eszköz, amely a vezeték körül kialakuló mágneses teret érzékeli, így érintésmentesen mér áramot. Különösen hasznos nagy áramoknál és a feszültségmentesítés elkerülésére.
    - **VEVM 84. oldal, 4.14. ábra (Áramfogó)**

#### 4.2.1 Hall-érzékelő árammérők

A Hall-effektuson alapuló érzékelőkkel nem csak mágneses tér, hanem áramerősség is mérhető, különösen AC és DC áramok egyaránt.

**Hall-effektus elve:**

- Ha egy áramvezetőt (pl. félvezetőt) merőlegesen mágneses térbe helyezünk, akkor a vezetőben lévő töltéshordozókra Lorentz-erő hat, és a vezetőben az áram és a mágneses tér irányára merőlegesen feszültség (Hall-feszültség) keletkezik. $$ U_H = R_H \frac{I_c B}{d} $$ Ahol:
    - UH​: Hall-feszültség
    - RH​: Hall-állandó (anyagfüggő)
    - Ic​: Vezetőn átfolyó vezérlőáram
    - B: Mágneses indukció
    - d: A vezető vastagsága
    - **VEVM 80. oldal (Hall-generátor működési elve)**
    - **ÉMH 29. oldal, 2.3.1. ábra (Hall-generátor)**

**Hall-érzékelő árammérő működése:**

- Az áramot mérő vezeték köré egy vasmagot helyeznek (gyűrűs mag, mint egy transzformátornál), amely a mérendő áram által keltett mágneses fluxust koncentrálja.
- A Hall-érzékelőt (Hall-szondát) a vasmag légrésébe helyezik.
- A mért áram (Ix​) által keltett mágneses tér indukciója (B) arányos az árammal (B∝Ix​).
- A Hall-érzékelő a mágneses indukciót Hall-feszültséggé alakítja át, ami így arányos a mért árammal.
- **VEVM 81. oldal, 4.10. ábra (Hall-effektuson alapuló áramérzékelő)**

**Előnyök:**

- **Galvanikus leválasztás:** A mérőrendszer el van szigetelve a nagyfeszültségű áramkörtől.
- **DC és AC mérés:** Képes mind egyenáram, mind váltakozó áram mérésére (a mágneses tér polaritását és nagyságát is érzékeli).
- **Széles mérési tartomány:** Nagy áramok mérésére is alkalmas.
- **Alacsony bemeneti impedancia:** Nem terheli meg a mért áramkört.

**Hátrányok:**

- Hőmérsékletfüggés (kompenzáció szükséges).
- Offset feszültség (nullpont eltolódás).
- Hisszterézis a vasmagban.

**Alkalmazások:**

- Nagy áramok mérése ipari alkalmazásokban.
- Akkumulátor töltés/kisütés monitorozása.
- Védelmi rendszerek.

---

#### 4.2.2 Áram mérése mérő transzformátorral (áramváltó)

Nagy váltakozó áramok mérésére a biztonság és a műszerek védelme érdekében árammérő transzformátorokat (áramváltókat, angolul Current Transformer - CT) alkalmaznak.

**Cél:**

- **Áramerősség csökkentése:** A nagy áramokat egy biztonságosan mérhető, szabványos szintre (pl. 1 A vagy 5 A) alakítják át.
- **Galvanikus leválasztás:** Elválasztják a mérőműszereket a nagyfeszültségű és nagyáramú rendszertől, növelve a biztonságot.

**Működési elv:**

- Egy speciális transzformátor, amelynek primer tekercse (gyakran maga a mérendő vezeték, 1 menetszámú tekercsként funkcionálva) sorosan van bekötve a mérendő áramkörbe.
- A szekunder tekercsen (amelynek sok menetszáma van) keresztül folyó áramot méri a mérőműszer.
- Az átviteli arány (menetszám-arány) alapján az ismert szekunder áramból vissza lehet számolni a primer áramot. $$ \frac{I_1}{I_2} \approx \frac{N_2}{N_1} = \text{konstans} $$ Ahol:
    - I1​: Primer áram
    - I2​: Szekunder áram
    - N1​: Primer menetszám (gyakran 1)
    - N2​: Szekunder menetszám
    - **VEVM 76. oldal, 4.4. ábra (Árammérő transzformátor elvi kapcsolása)**

**Jellemzők:**

- **Soros kapcsolás:** A primer tekercs sorosan van a mérendő áramkörbe kötve.
- **Alacsony szekunder impedancia:** A szekunder oldalon az ampermérő belső ellenállása nagyon kicsi, közel rövidzárlatban üzemel.
- **Fokozott biztonság:** A szekunder oldalt soha nem szabad nyitott áramkörben hagyni! Nyitott szekunder esetén a mágneses fluxus nem tud záródni, hatalmas feszültség indukálódhat, ami tönkreteheti az áramváltót és veszélyes lehet. Mindig terheléssel (műszerrel) vagy rövidre zárva kell hagyni a szekunder oldalt.
    - **VEVM 77. oldal (Fontos megjegyzés az áramváltókról!)**
- **Névleges áramok:** Primer oldal akár több ezer A, szekunder oldal általában 1 A vagy 5 A.
- **Osztálypontosság:** Hibaosztályuk (pl. 0.2, 0.5) jelzi a maximális megengedett áramarány hibát és fázishibát.
    - **VEVM 77. oldal, 4.5. ábra (Áramváltók jellemző hibagörbéi)**

**Alkalmazások:**

- Nagyáramú rendszerekben árammérésre.
- Védelmi relék táplálására.
- Teljesítménymérőkhöz, energiafogyasztás méréséhez.

---

## 4.5.1.1 Impedanciamérés feszültség-összehasonlítással

Ez a módszer az ismeretlen impedancia nagyságának meghatározására szolgál egy ismert referencia impedanciához viszonyítva, feszültségosztó elven alapulva.

**Elv:**

- A mérendő ismeretlen impedanciát (Zx​) és egy ismert referencia impedanciát (Zr​) sorosan kapcsolunk egy váltakozó áramú feszültségforrásra (U0​).
- A feszültségosztás elve szerint a két impedancián eső feszültség aránya megegyezik az impedanciák arányával.
    - **VEVM 95. oldal, 4.22. ábra (Impedanciamérés feszültség-összehasonlítással)**
- A mérőműszer (voltmérő) felváltva méri a Zx​-en (Ux​) és a Zr​-en (Ur​) eső feszültségeket. $$ U_x = I \cdot Z_x \quad \text{és} \quad U_r = I \cdot Z_r $$ Ahol I a soros áram. Ebből: $$ \frac{U_x}{U_r} = \frac{Z_x}{Z_r} $$ Az ismeretlen impedancia nagysága: $$ |Z_x| = |Z_r| \frac{|U_x|}{|U_r|} $$

**Megjegyzések:**

- Fontos, hogy a referencia impedancia (Zr​) típusa (ellenállás, kondenzátor, tekercs) megegyezzen az ismeretlen impedancia típusával, vagy legalábbis az áramkör túlnyomórészt ohmos, kapacitív vagy induktív jellegű legyen.
- Ez a módszer csak az impedancia **nagyságát** (abszolút értékét) határozza meg, a fázisszög információja elveszik.
- A mérőműszernek ideális esetben nagy bemeneti impedanciával kell rendelkeznie, hogy ne befolyásolja a feszültségeséseket.
- Ez egy egyszerű, gyors módszer, de a pontossága korlátozott.

---

## 4.5.1.2 Impedanciamérés áram-összehasonlítással

Ez a módszer az impedancia mérésére szolgál egy ismert referencia impedanciához viszonyítva, áramosztó elven alapulva.

**Elv:**

- A mérendő ismeretlen impedanciát (Zx​) és egy ismert referencia impedanciát (Zr​) párhuzamosan kapcsolunk egy váltakozó áramú feszültségforrásra (U0​).
- Az áramosztás elve szerint az impedanciákon átfolyó áramok aránya fordítottan arányos az impedanciák arányával.
    - **VEVM 96. oldal, 4.23. ábra (Impedanciamérés áram-összehasonlítással)**
- A mérőműszer (ampermérő) felváltva méri a Zx​-en (Ix​) és a Zr​-en (Ir​) átfolyó áramokat. $$ I_x = \frac{U_0}{Z_x} \quad \text{és} \quad I_r = \frac{U_0}{Z_r} $$ Ebből: $$ \frac{I_x}{I_r} = \frac{Z_r}{Z_x} $$ Az ismeretlen impedancia nagysága: $$ |Z_x| = |Z_r| \frac{|I_r|}{|I_x|} $$

**Megjegyzések:**

- Fontos, hogy a referencia impedancia (Zr​) típusa megegyezzen az ismeretlen impedancia típusával.
- Ez a módszer is csak az impedancia **nagyságát** határozza meg, a fázisszög információja elveszik.
- A mérőműszernek ideális esetben nagyon alacsony bemeneti impedanciával kell rendelkeznie (közel rövidzárlat), hogy ne befolyásolja az áramokat.
- Az áram-összehasonlítás kevésbé elterjedt, mint a feszültség-összehasonlítás, mivel az ampermérő bekötése bonyolultabb lehet.

Mindkét összehasonlító módszer viszonylag egyszerű és olcsó, de a precíz impedancia- és fázisszög-méréshez inkább a váltóáramú hidakat vagy speciális impedanciamérőket használnak.

---

## 4.5.3.1 Ellenállás mérése volt- és ampermérővel

Az ellenállás közvetlen mérése volt- és ampermérő segítségével Ohm törvénye alapján történik. Két alapvető bekötési mód létezik, amelyek a mérési pontosságot befolyásolják a műszerek belső ellenállásai miatt.

**Ohm törvénye:** R=IU​ Ahol R az ellenállás, U a rajta eső feszültség, I az általa átfolyó áram.

**Bekötési módok:**

1. **Hosszú kapcsolás (Ampermérő a vizsgált ellenállás előtt):**
    
    - **Kapcsolás:** Az ampermérő sorosan kapcsolódik az ismeretlen ellenállással (Rx​), a voltmérő pedig párhuzamosan mindkettővel.
    - **VEVM 99. oldal, 4.27. ábra (Hosszú kapcsolás)**
    - **Mért értékek:**
        - Az ampermérő a Rx​-en és a voltmérőn is átfolyó áramot méri (Im​=Ix​+IV​).
        - A voltmérő a Rx​-en eső valós feszültséget méri (Um​=Ux​).
    - **Számított ellenállás:** Rszaˊmıˊtott​=Im​Um​​=Ix​+IV​Ux​​
    - **Hiba oka:** A voltmérőn átfolyó áram (IV​) hibát okoz az ampermérő által mért össz áramban.
    - **Alkalmazás:** Akkor használatos, ha a mérendő ellenállás (Rx​) nagysága **nagy** (kb. Rx​≫RV​), mert ekkor IV​ elhanyagolható Ix​-hez képest. Ekkor a voltmérő árama elhanyagolható, és Im​≈Ix​.
2. **Rövid kapcsolás (Ampermérő a vizsgált ellenállás után):**
    
    - **Kapcsolás:** A voltmérő az ismeretlen ellenállással (Rx​) párhuzamosan kapcsolódik, és az ampermérő sorosan van velük.
    - **VEVM 99. oldal, 4.28. ábra (Rövid kapcsolás)**
    - **Mért értékek:**
        - Az ampermérő a Rx​-en átfolyó valós áramot méri (Im​=Ix​).
        - A voltmérő a Rx​-en és az ampermérőn eső együttes feszültséget méri (Um​=Ux​+UA​).
    - **Számított ellenállás:** Rszaˊmıˊtott​=Im​Um​​=Ix​Ux​+UA​​
    - **Hiba oka:** Az ampermérő belső ellenállásán (RA​) eső feszültség (UA​) hibát okoz a voltmérő által mért feszültségben.
    - **Alkalmazás:** Akkor használatos, ha a mérendő ellenállás (Rx​) nagysága **kicsi** (kb. Rx​≪RA​), mert ekkor UA​ elhanyagolható Ux​-hez képest. Ekkor az ampermérő feszültségesése elhanyagolható, és Um​≈Ux​.

**Általános szabály:**

- **Nagy ellenállások mérésekor hosszú kapcsolást:** Az ampermérő a mérendő ellenállás előtt van, a voltmérő a két elem (ampermérő és mért ellenállás) együttes feszültségét méri. Ekkor a voltmérő belső ellenállása nagy, így kevés áramot von el.
- **Kis ellenállások mérésekor rövid kapcsolást:** Az ampermérő a mérendő ellenállás után van, a voltmérő csak a mérendő ellenálláson eső feszültséget méri. Ekkor az ampermérő belső ellenállása kicsi, így kis feszültségesést okoz.

**A műszerek belső ellenállása:**

- **Voltmérő belső ellenállása (RV​):** Ideálisan végtelen, gyakorlatban nagy (MΩ nagyságrend).
- **Ampermérő belső ellenállása (RA​):** Ideálisan nulla, gyakorlatban kicsi (mΩ - Ω nagyságrend).

A volt-ampermérős ellenállásmérés pontossága korlátozott, főleg akkor, ha a mérendő ellenállás nagysága közel esik a műszerek belső ellenállásaihoz. Pontosabb méréshez a Wheatstone-hidat vagy digitális multiméterek ellenállásmérő funkcióját használják.

---

## 4.5.4.1 Öninduktivitás mérése amper- és volt merővel

Az öninduktivitás (L) mérése váltakozó áramú körben, volt- és ampermérővel történhet, hasonlóan az ellenállás méréséhez. Itt azonban figyelembe kell venni az induktív reaktanciát (XL​) és a tekercs ohmos ellenállását (RL​).

**Alapelv:**

- Váltakozó áramú feszültségforrást (U0​) alkalmazunk.
- Mérjük a tekercsen eső feszültséget (UL​) és a rajta átfolyó áramot (IL​).
- A tekercs impedanciáját (ZL​) a mért feszültség és áram hányadosából számoljuk: ZL​=IL​UL​​.
- A tekercs impedanciája a következőképpen adható meg: $$ Z_L = \sqrt{R_L^2 + X_L^2} $$ Ahol RL​ a tekercs egyenáramú (ohmos) ellenállása, XL​ pedig az induktív reaktancia.
- Az induktív reaktancia: $$ X_L = 2 \pi f L $$ Ahol f a váltakozó áram frekvenciája, L az öninduktivitás.

**Mérési módszer:**

1. **Mérjük meg a tekercs ohmos ellenállását (RL​):** Ezt egyenáramú (DC) ohmmérővel (pl. multiméterrel) mérhetjük.
2. **Váltakozó áramú körben:**
    - Kapcsoljuk a tekercset egy ismert frekvenciájú (f) váltakozó áramú feszültségforrásra.
    - Mérjük a tekercsen eső feszültséget (UL​) voltmérővel.
    - Mérjük a tekercsen átfolyó áramot (IL​) ampermérővel.
    - **VEVM 100. oldal, 4.29. ábra (Öninduktivitás mérése volt- és ampermérővel)**
    - Számítsuk ki a tekercs impedanciáját: ZL​=IL​UL​​.
3. **Számítsuk ki az induktív reaktanciát (XL​):** $$ X_L = \sqrt{Z_L^2 - R_L^2} $$ Fontos, hogy ZL​>RL​, különben valószínűleg mérési hiba történt, vagy a tekercs nem ideális.
4. **Számítsuk ki az öninduktivitást (L):** $$ L = \frac{X_L}{2 \pi f} $$

**Megjegyzések és hibalehetőségek:**

- **Frekvencia ismerete:** A frekvencia pontos ismerete elengedhetetlen, mivel XL​ frekvenciafüggő.
- **Műszerek belső ellenállása:** Ahogyan az ellenállásmérésnél, itt is figyelembe kell venni a voltmérő és ampermérő belső ellenállásait, és a megfelelő bekötési módot kell választani (hosszú vagy rövid kapcsolás) a tekercs impedanciájához képest.
- **Hullámforma:** A mérőműszereknek True RMS képességgel kell rendelkezniük, ha a feszültségforrás nem szinuszos jelet ad.
- **Tekercs minősége:** A tekercsnek lehetnek parazita kapacitásai, amelyek magas frekvenciákon befolyásolhatják a mérést.
- **Kiegyensúlyozott hidak (pl. Maxwell-híd, Hay-híd) pontosabbak:** Ez a módszer csak hozzávetőleges eredményt adhat, mivel a fázisszög információja elveszik, és a műszerek terhelési hatása is jelentkezik. A váltóáramú hidak lényegesen pontosabb eredményt szolgáltatnak az induktivitás és a veszteségi tényező (Q-faktor) egyidejű mérésére.

---

## 5.1. Attenuátorok, csillapítók

Az attenuátorok, vagy csillapítók olyan passzív áramköri elemek, amelyek a bemeneti jel teljesítményét, feszültségét vagy áramát csökkentik egy meghatározott arányban, frekvenciafüggetlenül (ideális esetben) és torzításmentesen.

**Cél:**

- **Jelszint csökkentése:** Túl nagy jelszintű források illesztése érzékenyebb bemenetekhez (pl. oszcilloszkóp, spektrumanalizátor, ADC).
- **Impedancia illesztés:** Bizonyos esetekben az illesztés javítására is használhatók.
- **Mérési tartomány bővítése:** Mérőműszerek bemeneténél a mérési tartomány bővítésére szolgálnak.

**Jellemzők:**

- **Csillapítás (Attenuation):** A jel csillapításának mértékét decibelben (dB) adják meg.
    - **Feszültség csillapítás (dB):** AU​=20log10​(Ube​Uki​​)
    - **Teljesítmény csillapítás (dB):** AP​=10log10​(Pbe​Pki​​)
    - **VEVM 107. oldal**
    - Ahol Uki​, Pki​ a kimeneti feszültség/teljesítmény, Ube​, Pbe​ a bemeneti feszültség/teljesítmény.
- **Jellemző impedancia (Z0​):** Az attenuátor bemeneti és kimeneti impedanciája, amelyhez illeszteni kell. Gyakran 50 Ω vagy 75 Ω.
- **Frekvenciameneti síkosság:** Az ideális attenuátor csillapítása a frekvencia széles tartományában állandó.

**Alapvető topológiák:**

Az attenuátorok ellenállásokból épülnek fel, különböző kapcsolásokban.

1. **Pi-hálózat (π-attenuátor):**
    - Három ellenállásból áll, amelyek a görög pi (π) betűhöz hasonló alakot öltenek.
    - **VEVM 107. oldal, 5.1. ábra (Pi-hálózatú csillapító)**
    - Két párhuzamos ellenállás (R1) van a bemeneten és kimeneten, és egy soros ellenállás (R2) köti össze őket.
    - Előnye, hogy könnyen tervezhető és szimmetrikus lehet.
2. **T-hálózat (T-attenuátor):**
    - Három ellenállásból áll, amelyek a görög tau (T) betűhöz hasonló alakot öltenek.
    - **VEVM 108. oldal, 5.2. ábra (T-hálózatú csillapító)**
    - Két soros ellenállás (R1) van a bemeneti és kimeneti oldalon, és egy párhuzamos ellenállás (R2) köti össze a közös ponthoz.
    - Szintén könnyen tervezhető és szimmetrikus lehet.

**Képletek a tervezéshez (50 Ω-os rendszerre, szimmetrikus esetben):**

A konkrét ellenállásértékek meghatározása a kívánt csillapítástól és a jellemző impedanciától függ.

- **T-hálózat (VEVM 108. oldal):**
    
    - R1​=Z0​k+1k−1​
    - R2​=Z0​k2−12k​
    - Ahol k=10AP​/20 vagy k=10AU​/20 (arány, nem dB érték).
- **Pi-hálózat (VEVM 108. oldal):**
    
    - R1​=Z0​k−1k+1​
    - R2​=Z0​2kk2−1​
    - Ahol k=10AP​/20 vagy k=10AU​/20.

**Alkalmazások:**

- Jelforrások kimenetén a jelszint csökkentésére.
- Mérőműszerek bemeneti fokozatainál (pl. oszcilloszkópok 10x-es, 100x-os osztói).
- RF (rádiófrekvenciás) rendszerekben jelszint beállítására és illesztésre.
- Hangtechnikában hangerő szabályzókban.

---

## 5.2.1 Alapkapcsolások műveleti erősítőkkel

A műveleti erősítő (műv. erősítő, op-amp) egy nagy erősítésű, differenciál bemenetű, egy kimenetű egyenáramú csatolt erősítő, amely ideális esetben végtelen bemeneti impedanciával, nulla kimeneti impedanciával és végtelen erősítéssel rendelkezik. Ezeket a tulajdonságokat kihasználva számos alapvető áramkör építhető belőlük.

**Ideális műveleti erősítő feltételei:**

1. **Végtelen feszültségerősítés (AV​→∞):** Ez azt jelenti, hogy még egy nagyon kis bemeneti feszültségkülönbség is a kimenet telítődéséhez vezet.
2. **Végtelen bemeneti impedancia (Zbe​→∞):** Nincs áram a bemeneteken (nem invertáló (+) és invertáló (-) bemenet).
3. **Nulla kimeneti impedancia (Zki​→0):** A kimeneti feszültség független a terheléstől.
4. **Nulla offset feszültség (Voffset​=0):** Ha a bemenetek azonos potenciálon vannak, a kimenet nulla.
5. **Végtelen sávszélesség:** Minden frekvencián azonos erősítés.

**Alapkapcsolások (negatív visszacsatolással):**

A negatív visszacsatolás stabilizálja az erősítő működését és meghatározza az erősítést. A "virtuális rövidzár" elve érvényesül: ha negatív visszacsatolás van, az invertáló bemenet potenciálja (közel) megegyezik a nem invertáló bemenet potenciáljával.

1. **Invertáló erősítő:**
    
    - A bemeneti jel az invertáló (-) bemenetre, a nem invertáló (+) bemenet földre (vagy referencia feszültségre) van kötve.
    - A visszacsatolás egy ellenálláson keresztül történik a kimenetről az invertáló bemenetre.
    - **VEVM 111. oldal, 5.5. ábra (Invertáló erősítő)**
    - **Kimeneti feszültség:** $$ U_{ki} = - \frac{R_2}{R_1} U_{be} $$ Ahol R1​ a bemeneti ellenállás, R2​ a visszacsatoló ellenállás.
    - **Jellemzők:** A kimeneti jel invertált (fázisban 180°-kal eltolt) és arányos a bemeneti jellel. Bemeneti impedanciája R1​.
2. **Nem invertáló erősítő:**
    
    - A bemeneti jel a nem invertáló (+) bemenetre van kötve.
    - A visszacsatolás egy feszültségosztóval történik a kimenetről az invertáló (-) bemenetre.
    - **VEVM 112. oldal, 5.6. ábra (Nem invertáló erősítő)**
    - **Kimeneti feszültség:** $$ U_{ki} = \left( 1 + \frac{R_2}{R_1} \right) U_{be} $$ Ahol R1​ és R2​ a feszültségosztó ellenállásai.
    - **Jellemzők:** A kimeneti jel azonos fázisú a bemenetivel. Nagyon magas bemeneti impedanciája van, ami miatt alkalmas buffernek is.
3. **Feszültségkövető (Buffer):**
    
    - Speciális esete a nem invertáló erősítőnek, ahol R1​→∞ (nyitott) és R2​→0 (rövidzár).
    - **VEVM 113. oldal, 5.7. ábra (Feszültségkövető)**
    - **Kimeneti feszültség:** Uki​=Ube​
    - **Jellemzők:** Erősítése 1. Fő funkciója az impedancia illesztés: nagyon nagy bemeneti impedanciával és nagyon alacsony kimeneti impedanciával rendelkezik, így képes nagy terhelő áramot szolgáltatni anélkül, hogy a bemeneti jelforrást terhelné.
4. **Összegző erősítő:**
    
    - Az invertáló erősítőre alapul, több bemeneti ellenállással.
    - **VEVM 113. oldal, 5.8. ábra (Összegző erősítő)**
    - **Kimeneti feszültség:** $$ U_{ki} = - R_f \left( \frac{U_1}{R_1} + \frac{U_2}{R_2} + ... + \frac{U_n}{R_n} \right) $$ Ahol Rf​ a visszacsatoló ellenállás. Ha R1​=R2​=...=Rn​=R, akkor Uki​=−RRf​​(U1​+U2​+...+Un​).
    - **Jellemzők:** Képes több analóg jel összegzésére.
5. **Differenciáló erősítő (különbségerősítő):**
    
    - Két bemeneti jelszint különbségét erősíti fel.
    - **VEVM 114. oldal, 5.9. ábra (Differenciáló erősítő)**
    - **Kimeneti feszültség:** $$ U_{ki} = \frac{R_2}{R_1} (U_2 - U_1) $$ Ahol R1​=R3​ és R2​=R4​.
    - **Jellemzők:** Alkalmas zajszűrésre (közös módusú zaj elnyomására), vagy szenzorok differenciális kimenetének feldolgozására.
6. **Integráló erősítő:**
    
    - Az invertáló erősítőre alapul, ahol a visszacsatoló úton egy kondenzátor van.
    - **VEVM 115. oldal, 5.10. ábra (Integráló erősítő)**
    - **Kimeneti feszültség:** $$ U_{ki}(t) = - \frac{1}{R_1 C_f} \int U_{be}(t) dt $$
    - **Jellemzők:** A kimeneti feszültség arányos a bemeneti feszültség integráljával. Jelalak átalakításra (pl. négyszögjelből háromszögjel) használható.
7. **Differenciáló erősítő:**
    
    - Az invertáló erősítőre alapul, ahol a bemeneti úton egy kondenzátor van.
    - **VEVM 116. oldal, 5.11. ábra (Differenciáló erősítő - jel alakító)**
    - **Kimeneti feszültség:** $$ U_{ki}(t) = - R_f C_1 \frac{dU_{be}(t)}{dt} $$
    - **Jellemzők:** A kimeneti feszültség arányos a bemeneti feszültség deriváltjával. Jelalak átalakításra (pl. háromszögjelből négyszögjel) használható, de zajra érzékeny.

Ezek az alapkapcsolások a modern elektronika építőkövei, széles körben alkalmazzák őket méréstechnikában, jelfeldolgozásban és vezérlésben.

---

## 5.3.1 Csúcsegyenirányítók

A csúcsegyenirányító (más néven csúcstetektor) egy olyan áramkör, amely egy váltakozó (AC) vagy pulzáló egyenáramú (DC) jel csúcsértékét (legnagyobb pozitív vagy legkisebb negatív értékét) detektálja és tartja meg.

**Működési elv:**

- Egy dióda és egy kondenzátor a fő alkotóelemei.
- Amikor a bemeneti feszültség magasabb, mint a kondenzátoron lévő feszültség, a dióda nyit, és a kondenzátor feltöltődik a bemeneti jel pillanatnyi értékére.
- Amikor a bemeneti feszültség elkezd csökkenni, a dióda lezár (fordítottan polarizálódik), és a kondenzátor megtartja a korábbi csúcsértéket.

**Alapkapcsolások:**

1. **Egyszerű pozitív csúcsegyenirányító (passzív):**
    
    - **VEVM 119. oldal, 5.14. ábra (Pozitív csúcsegyenirányító)**
    - Egy dióda sorosan, egy kondenzátor párhuzamosan a kimeneten.
    - **Hátrányok:**
        - **Dióda nyitófeszültsége (UD​):** A kimeneti feszültség Uki​=Ube,csuˊcs​−UD​. Kis feszültségeknél jelentős hibát okoz.
        - **Kondenzátor kisülése:** A kondenzátor lassan kisül a terhelésen és a dióda fordított irányú szivárgó áramán keresztül, ami a mért csúcsérték csökkenéséhez (lecsengéséhez) vezet.
        - **Alacsony bemeneti impedancia:** A dióda és a kondenzátor terhelheti a bemeneti jelet.
2. **Precíziós csúcsegyenirányító (aktív, műveleti erősítővel):**
    
    - A műveleti erősítő (op-amp) használata kiküszöböli a dióda nyitófeszültségéből adódó hibát és növeli a bemeneti impedanciát.
    - **VEVM 120. oldal, 5.15. ábra (Precíziós pozitív csúcsegyenirányító)**
    - **Működés:** A dióda a visszacsatoló körben van. Amikor az erősítő kimenete a dióda nyitófeszültségénél magasabb feszültségre próbál beállni, a dióda nyit, és a kondenzátor töltődik. A műveleti erősítő virtuális rövidzár elve miatt a kimeneti feszültség (a kondenzátoron) pontosan követi a bemeneti csúcsértéket (mínusz a dióda nyitófeszültség, de mivel a dióda a visszacsatoló körben van, az erősítő kompenzálja azt).
    - **Előnyök:**
        - **Nincs dióda nyitófeszültség hiba:** A kimeneten a kondenzátor feszültsége majdnem pontosan megegyezik a bemeneti jel csúcsértékével.
        - **Nagy bemeneti impedancia:** A műveleti erősítő bemeneti impedanciája magas.
        - **Gyorsabb válasz:** Képes gyorsabban reagálni a változó csúcsértékekre.
    - **Hátrányok:**
        - A kondenzátor kisülése továbbra is probléma lehet, ha a következő csúcs túl későn jön.
        - A műveleti erősítő sávszélessége és elfordulási sebessége (slew rate) korlátozhatja a működést magas frekvenciákon.

**Alkalmazások:**

- **Effektív érték konverterekben:** A csúcsérték detektálásával, majd valamilyen skálázással és átlagolással lehet hozzávetőleges effektív értéket kapni.
- **Modulált jelek demodulálásában:** AM (amplitúdó modulált) jelek burkológörbéjének detektálására.
- **Beszéd- és audiojelek jelszintjének mérésekor.**
- **Maximális/minimális feszültség monitorozása.**

---

## 5.3.3 Lineáris effektívérték-átalakítók

Az effektív érték (RMS - Root Mean Square) egy váltakozó áramú jel "valódi" nagyságát jellemzi, azaz azt az egyenáramú feszültséget vagy áramot, amely azonos hőhatást fejt ki egy adott ellenálláson. A legtöbb mérőműszer, amely váltakozó áramot mér, az effektív értéket jelzi ki.

**Definíció (RMS):** URMS​=T1​∫0T​u2(t)dt![](data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" width="400em" height="3.08em" viewBox="0 0 400000 3240" preserveAspectRatio="xMinYMin slice"><path d="M473,2793
c339.3,-1799.3,509.3,-2700,510,-2702 l0 -0
c3.3,-7.3,9.3,-11,18,-11 H400000v40H1017.7
s-90.5,478,-276.2,1466c-185.7,988,-279.5,1483,-281.5,1485c-2,6,-10,9,-24,9
c-8,0,-12,-0.7,-12,-2c0,-1.3,-5.3,-32,-16,-92c-50.7,-293.3,-119.7,-693.3,-207,-1200
c0,-1.3,-5.3,8.7,-16,30c-10.7,21.3,-21.3,42.7,-32,64s-16,33,-16,33s-26,-26,-26,-26
s76,-153,76,-153s77,-151,77,-151c0.7,0.7,35.7,202,105,604c67.3,400.7,102,602.7,104,
606zM1001 80h400000v40H1017.7z"></path></svg>)​ Ahol u(t) a pillanatnyi feszültség, T a periódusidő.

**Probléma a hagyományos egyenirányítókkal:**

- Ahogy korábban említettük (2.1.2), a diódás egyenirányítású analóg műszerek az átlagértéket mérik, és szinuszos jelnél az alakfaktor (1.11) alapján kalibrálják a skálát az effektív értékre.
- Ez azt jelenti, hogy nem-szinuszos hullámformák esetén (pl. négyszögjel, háromszögjel, impulzusok, zaj) a mért érték hibás lesz.

**Lineáris effektívérték-átalakítók (True RMS konverterek):**

Ezek az áramkörök a jelalak függetlenül képesek a valódi effektív érték meghatározására. Több elven működhetnek:

1. **Analóg számítógépes módszer (Analog Computation):**
    
    - Ez a legáltalánosabb módszer, amely a RMS definícióját követi: négyzetre emelés, átlagolás, majd gyökvonás.
    - **VEVM 122. oldal, 5.16. ábra (Effektív érték konverter felépítése)**
    - **Lépések:**
        - **Szorzó/négyzetre emelő (Multiplier/Squarer):** A bemeneti jelet négyzetre emeli (u2(t)). Analóg szorzó áramkörökkel valósítják meg.
        - **Integráló/Átlagoló (Integrator/Averager):** Az u2(t) jelet egy aluláteresztő szűrővel vagy integrátorral átlagolja. Ez egyenáramú jelet eredményez, ami arányos a négyzetes középértékkel.
        - **Gyökvonó (Square Rooter):** Az átlagolt jelet gyökjelző áramkörrel (általában logaritmikus erősítőkkel és antilogaritmikus erősítőkkel) gyökvonásnak veti alá.
    - **Előnyök:** Nagyon pontos, hullámforma független.
    - **Hátrányok:** Komplex, drága, érzékeny a hőmérsékletre (kompenzáció szükséges).
    - Kereskedelmi IC-k (pl. Analog Devices AD536, LTC1968) léteznek, amelyek ezt a funkciót integrálják.
2. **Termikus módszer (Thermal Method):**
    
    - Ez a legrégebbi és legpontosabb módszer, az RMS definíciójának fizikai megfelelője (hőhatás).
    - **VEVM 121. oldal (Termikus effektívérték-konverter)**
    - **Működés:** A mérendő áramot egy fűtőellenálláson vezetik át, és az általa termelt hőt mérik egy hőelemmel vagy hőellenállással. Egy referencia áramot úgy állítanak be, hogy az azonos hőt termeljen, ez a referencia áram lesz az effektív érték.
    - **Előnyök:** Nagyon pontos, széles frekvenciatartományban működik.
    - **Hátrányok:** Lassú válaszidejű, hőmérsékletfüggő, drága. Inkább precíziós laboratóriumi műszerekben használatos.

**Alkalmazások:**

- **Digitális multiméterek (True RMS DMM):** Modern digitális multiméterek gyakran tartalmaznak True RMS funkciót.
- **Oszcilloszkópok:** Bizonyos oszcilloszkópok képesek RMS értéket számolni.
- **Teljesítménymérők:** Az aktív és meddő teljesítmény számításához elengedhetetlen a True RMS mérés.
- **Ipari vezérlés és felügyelet:** Nem szinuszos jelek (pl. PWM jelek) pontos méréséhez.

---

## 6.2.1 Súlyozott ellenállású digitális-analóg átalakítók (DAC)

A digitális-analóg átalakító (DAC - Digital-to-Analog Converter) egy olyan elektronikus áramkör, amely egy digitális bemeneti jelet (bináris számot) analóg feszültséggé vagy árammá alakít át.

A súlyozott ellenállású DAC az egyik legegyszerűbb, de alapvető DAC architektúra.

**Működési elv:**

- A DAC bemeneti digitális száma bináris bitekből áll (pl. Dn​Dn−1​...D1​D0​), ahol Dn​ a legmagasabb helyiértékű bit (MSB), D0​ a legalacsonyabb helyiértékű bit (LSB).
- Minden bithez egy digitálisan vezérelt kapcsoló tartozik. Ha a bit logikai "1", a kapcsoló zár, ha logikai "0", a kapcsoló nyit.
- Minden kapcsoló egy ellenállásra csatlakozik, amelynek értéke arányos a bit helyiértékével. Az LSB ellenállása R, a következő bité R/2, az azt követőé R/4, és így tovább, az MSB-é R/2n−1.
- Ezek az ellenállások egy áramösszegző pontba (általában egy invertáló műveleti erősítő bemenetére) vannak vezetve.
- **VEVM 136. oldal, 6.1. ábra (Súlyozott ellenállású digitális-analóg átalakító)**

**Kimeneti feszültség:**

- A műveleti erősítő invertáló bemenetén az egyes ellenállásokon átfolyó áramok összeadódnak.
- A kimeneti feszültség (Uki​) arányos az összeadott áramokkal és a visszacsatoló ellenállással (Rf​).
- Matematikailag: $$ U_{ki} = - R_f \cdot I_{össz} = - R_f \left( D_{n-1} \frac{U_{ref}}{2^{n-1}R} + ... + D_1 \frac{U_{ref}}{2R} + D_0 \frac{U_{ref}}{R} \right) $$ Ezt általánosabban is írhatjuk: $$ U_{ki} = - U_{ref} \frac{R_f}{R} \sum_{i=0}^{n-1} D_i 2^i $$ Vagy a digitális bemenet (N) függvényében: $$ U_{ki} = - U_{ref} \frac{R_f}{R_{min_ellenallas}} \cdot \frac{N}{2^n} $$ Ahol N a digitális szám értéke (0-tól 2n−1-ig), n a bitek száma, Uref​ a referenciafeszültség.

**Előnyök:**

- Egyszerű koncepció és viszonylag könnyű megvalósítani kis bitmélység esetén.

**Hátrányok:**

- **Ellenállás pontossága:** Nagy bitmélység esetén (pl. 8 bitnél több) rendkívül pontos ellenállásokra van szükség, amelyek aránya 2-es hatványokban nagyon pontosan kell, hogy megegyezzen. Pl. egy 10 bites DAC esetén az LSB ellenállása 210−1=1023-szor nagyobb az MSB ellenállásánál, és pontosan kell tartani az arányokat. Ez nagyon nehéz gyártástechnológiailag.
- **Ellenállások szórása:** A nagy ellenállásértékek szórása és a gyártási pontatlanságok miatt a felbontás és a pontosság korlátozott.
- **Kapcsolók áramterhelése:** Az egyes bitekhez tartozó kapcsolóknak különböző áramokat kell kapcsolniuk.
- **Sebesség:** Viszonylag lassú lehet a parazita kapacitások miatt.

**Alkalmazások:**

- Főleg kis bitmélységű alkalmazásokban vagy oktatási célokra használják.
- Gyakorlatban nagyfelbontású DAC-okhoz ritkán alkalmazzák a súlyozott ellenállású elvet a gyártási nehézségek miatt. Inkább az R-2R létra elvét használják.

---

## 6.2.2 R-2R létrát alkalmazó DAC

Az R-2R létra DAC a legelterjedtebb digitális-analóg átalakító architektúra a kiváló pontossági, stabilitási és gyártási előnyei miatt.

**Működési elv:**

- Csak kétféle ellenállásértéket használ: R és 2R. Ez a kulcsa a megbízhatóságának.
- A digitális bitek (Dn​...D0​) vezérlik az egyes ágak kapcsolóit.
- Minden bithez egy kapcsoló tartozik, amely a 2R értékű ellenállást vagy földre, vagy egy referencia feszültségre (általában egy műveleti erősítő bemenetére) kapcsolja.
- **VEVM 137. oldal, 6.2. ábra (R-2R létra digitális-analóg átalakító)**
- Az áramkör egy feszültségosztó hálózatként működik, ahol az egyes bitekhez tartozó feszültségek binárisan súlyozódnak.

**A létra működése (példa):**

- Képzeljük el a láncot a legvégéről (LSB) a bemenet felé (MSB).
- Minden csomópontban a 2R ellenállás és az előző lépés eredő ellenállása párhuzamosan kapcsolódik. Az R ellenállás sorosan van a következő lépés 2R ellenállásával. Ennek az elrendezésnek az az előnye, hogy minden csomópont felé tekintve az eredő ellenállás mindig 2R.
- Ez biztosítja, hogy az áramok binárisan osszák meg magukat az egyes ágakban.

**Kimeneti feszültség:**

- A kimeneti feszültség (Uki​) arányos a referencia feszültséggel (Uref​) és a digitális bemenet (N) értékével: $$ U_{ki} = U_{ref} \cdot \frac{N}{2^n} $$ Ahol N a digitális szám értéke (0-tól 2n−1-ig), n a bitek száma.
    - Az invertáló műveleti erősítővel kiegészítve az áramokat feszültséggé alakítja.
    - **VEVM 137. oldal (R-2R létra kimeneti feszültségének levezetése)**

**Előnyök:**

- **Kétféle ellenállás:** Csak két ellenállásérték (R és 2R) szükséges, ami rendkívül megkönnyíti a gyártást és a pontosságot. Nem kell nagy ellenállásarányokat tartani.
- **Ellenálláspárok pontossága:** Sokkal könnyebb garantálni, hogy az R és 2R ellenállások közötti arány pontos legyen, mint abszolút értékekben pontos ellenállásokat gyártani. Ez biztosítja a jó linearitást.
- **Moduláris felépítés:** Könnyen bővíthető nagyobb bitmélységre.
- **Jó sebesség:** Viszonylag gyors működés.

**Hátrányok:**

- Még mindig igényel precíz ellenálláspárokat, bár kevésbé szigorú a követelmény, mint a súlyozott ellenállású DAC-nál.

**Alkalmazások:**

- A legelterjedtebb DAC architektúra a legtöbb digitális-analóg konverziós feladathoz, beleértve:
    - Audiolejátszók, hangkártyák
    - Videókártyák
    - Jelgenerátorok
    - Vezérlőrendszerek
    - Digitális multiméterek

---

## 6.3.1 Sorozatos megközelítéses analóg-digitális átalakítók (ADC)

A sorozatos megközelítéses (Successive Approximation Register - SAR) ADC egy elterjedt és viszonylag gyors analóg-digitális átalakító típus.

**Működési elv:**

- A SAR ADC egy "találd ki és ellenőrizd" (guess and check) elvet alkalmaz.
- Lényegében egy digitális-analóg átalakító (DAC), egy komparátor és egy sorozatos megközelítéses regiszter (SAR) kombinációja.
- **VEVM 139. oldal, 6.3. ábra (Sorozatos megközelítéses A/D átalakító)**

**Lépések (pl. 4 bites ADC esetén):**

1. **Indítás:** A SAR regiszter beállítja az MSB-t (legmagasabb helyiértékű bitet) 1-re, a többit 0-ra. A DAC ezt a digitális számot analóg feszültséggé alakítja (UDAC​).
2. **Összehasonlítás:** A komparátor összehasonlítja az analóg bemeneti feszültséget (Ube​) a DAC kimeneti feszültségével (UDAC​).
    - Ha Ube​≥UDAC​, akkor az aktuális bit (az MSB) 1 marad a SAR regiszterben.
    - Ha Ube​<UDAC​, akkor az aktuális bit 0-ra állítódik.
3. **Következő bit:** A SAR regiszter a következő bitet állítja 1-re (azaz a második MSB-t), a többit 0-ra hagyva, és a DAC újra konvertál.
4. **Ismétlés:** Ez a folyamat minden bitre megismétlődik, az MSB-től az LSB-ig. Minden lépésben a komparátor eldönti, hogy az aktuális bitnek 1-nek vagy 0-nak kell-e lennie, hogy a DAC kimenete a bemeneti feszültséghez a lehető legközelebb legyen.
5. **Eredmény:** Miután minden bitet eldöntött, a SAR regiszter tartalma lesz a digitális kimenet, amely a bemeneti analóg feszültség digitális reprezentációja.

**Példa (4 bites SAR ADC, Uref​=16V):**

|Lépés|Bit (MSB-től LSB-ig)|DAC kimenet (UDAC​)|Komparátor (Ube​ vs. UDAC​)|Eredmény|Digitális kimenet|
|---|---|---|---|---|---|
|1.|1000|8V|Ube​≥8V ?|Igen (pl. Ube​=10V)|Bit marad 1|
|2.|1100|12V|Ube​≥12V ?|Nem (10V < 12V)|Bit lesz 0|
|3.|1010|10V|Ube​≥10V ?|Igen (10V = 10V)|Bit marad 1|
|4.|1011|11V|Ube​≥11V ?|Nem (10V < 11V)|Bit lesz 0|
| **Végeredmény:** 1010 bináris, ami 10 decimális.

**Előnyök:**

- **Jó felbontás:** Akár 16-24 bites felbontás is elérhető.
- **Viszonylag gyors:** A konverziós idő arányos a bitek számával (n órajel ciklus szükséges egy n-bites konverzióhoz).
- **Közepes komplexitás:** Nem túl bonyolult áramkör.
- **Alacsony energiafogyasztás:** Sok alkalmazásban ideális.

**Hátrányok:**

- A konverziós idő függ a bitek számától, tehát nagy felbontásnál lassabb lehet, mint a Flash ADC.
- A beépített DAC és komparátor pontossága korlátozhatja az ADC teljes pontosságát.

**Alkalmazások:**

- Digitális multiméterek
- Dátumgyűjtő rendszerek
- Szenzorinterfészek (hőmérséklet, nyomás, stb.)
- Beágyazott rendszerek

---

## 6.3.2 Párhuzamos (flash) analóg-digitális átalakítók (ADC)

A párhuzamos, más néven flash ADC a leggyorsabb analóg-digitális átalakító típus.

**Működési elv:**

- Az ADC egyszerre, párhuzamosan hasonlítja össze a bemeneti analóg feszültséget egy sor előre meghatározott referencia feszültséggel.
- Egy n-bites flash ADC-hez 2n−1 darab komparátorra és egy ellenállásosztó láncra van szükség.
- **VEVM 140. oldal, 6.4. ábra (Flash A/D átalakító)**

**Felépítés:**

- **Ellenállás osztó lánc:** Egy referencia feszültség (Uref​) egy sor ellenálláson keresztül kerül felosztásra, létrehozva 2n−1 darab referencia feszültségszintet.
- **Komparátorok:** Mindegyik komparátor egyik bemenete a mérendő analóg feszültség (Ube​), a másik bemenete pedig az ellenállásosztó lánc egyik referencia feszültsége.
- **Kódoló (Encoder):** A komparátorok kimenetei (amelyek egy "thermometer code"-ot alkotnak, azaz egy bizonyos szint felett minden komparátor kimenete 1, alatta 0) egy digitális kódoló áramkörbe jutnak, amely ezt bináris számra alakítja.

**Működés:**

- A bemeneti analóg feszültséget egyszerre, egy lépésben összehasonlítják az összes referencia feszültségszinttel.
- Azok a komparátorok, amelyek referencia feszültsége kisebb, mint a bemeneti analóg feszültség, 1-es logikai szintet adnak ki, míg a többi 0-át.
- A kódoló áramkör a komparátorok állapotából közvetlenül előállítja a megfelelő bináris kódot.

**Előnyök:**

- **Rendkívül gyors:** Mivel a konverzió egyetlen órajel ciklus alatt megtörténik, a flash ADC a leggyorsabb típus.
- Ideális nagyon gyorsan változó jelek digitalizálására.

**Hátrányok:**

- **Nagy áramköri komplexitás:** Az 2n−1 komparátor és az ellenállásosztó lánc miatt a chip területe és a komponensszám exponenciálisan nő a bitmélységgel.
    - Egy 8 bites flash ADC-hez 28−1=255 komparátor szükséges.
    - Egy 10 biteshez 210−1=1023 komparátor.
- **Magas energiafogyasztás:** Sok komparátor folyamatosan működik.
- **Drága:** A komplexitás miatt.
- **Nagy bemeneti kapacitás:** A sok komparátor bemenete terhelheti az analóg jelforrást.

**Alkalmazások:**

- Nagyon nagy sebességű adatgyűjtés (pl. oszcilloszkópok digitális bemenetei).
- Video digitalizálás (TV tunerek, digitális kamerák).
- Radarkészülékek.
- Optikai kommunikáció.

---

## 6.3.3 Integráló feszültség-idő analóg-digitális átalakítók (ADC)

Az integráló ADC-k, mint például a kettős meredekségű (dual-slope) ADC, a bemeneti feszültséget időtartammá alakítják, majd ezt az időtartamot mérik digitálisan. Ezek a típusok lassabbak, de rendkívül pontosak és zajtűrők.

**Kettős meredekségű ADC működési elve:**

- **VEVM 141. oldal, 6.5. ábra (Kettős meredekségű A/D átalakító)**
- A fő elemek: Integrátor, komparátor, számláló, vezérlő logika és egy referencia áramforrás.

**Működési fázisok:**

1. **Integrálási fázis (Integrate):**
    
    - A vezérlő logika egy fix időtartamra (T1​) rákapcsolja a mérendő analóg feszültséget (Ube​) az integrátor bemenetére.
    - Az integrátor kimeneti feszültsége arányosan növekszik (vagy csökken) a bemeneti feszültséggel és az integrálási idővel.
    - Uint​(T1​)=−RC1​∫0T1​​Ube​dt≈−RCUbe​T1​​ (ha Ube​ állandó)
    - A számláló eközben nulláról elkezd számolni egy belső órajel impulzusait.
2. **Dezintegrálási fázis (De-integrate):**
    
    - Amikor az T1​ idő letelik, a vezérlő logika a bemeneti feszültséget egy állandó, ellenkező polaritású referencia feszültségre (Uref​) kapcsolja.
    - Az integrátor kimeneti feszültsége ekkor egy állandó meredekséggel elkezd nullához (vagy egy másik referencia szinthez) csökkenni.
    - Amikor az integrátor kimenete eléri a komparátor nullszintjét, a komparátor jelet ad, és a számláló leáll.
    - A számláló ekkor is számolja az órajel impulzusokat, egy T2​ időtartamig.
    - Uint​(T1​)+RCUref​T2​​=0⟹RCUbe​T1​​=RCUref​T2​​
    - Ebből: Ube​T1​=Uref​T2​
    - Ahol T2​ arányos a számláló értékével (Nx​). Mivel T1​ rögzített (Nref​ órajel ciklus), Ube​Nref​=Uref​Nx​.
    - Tehát: $$ N_x = N_{ref} \frac{U_{be}}{U_{ref}} $$
    - A számláló végső értéke (Nx​) tehát egyenesen arányos a bemeneti analóg feszültséggel.

**Előnyök:**

- **Nagyon magas pontosság és linearitás:** A konverzió az idő arányán alapul, ami nagyon pontosan mérhető.
- **Kiváló zajtűrés:** Az integrálási folyamat kisimítja a bemeneti zajt és az 50/60 Hz-es hálózati brummot (ha az integrálási idő a hálózati frekvencia periódusának többszöröse).
- **Hőmérsékletfüggetlenség:** Az R és C értékek változása azonos módon befolyásolja a töltési és kisülési meredekségeket, így a végső arány független lesz tőlük (feltéve, hogy azok aránya stabil marad).

**Hátrányok:**

- **Lassú konverziós sebesség:** Az integrálás és dezintegrálás időt vesz igénybe, ezért nem alkalmas gyorsan változó jelek mérésére.
- **Bonyolultabb vezérlő logika.**

**Alkalmazások:**

- **Digitális multiméterek (DMM):** A nagy pontosság és zajtűrés miatt ez a domináns ADC típus a precíziós DMM-ekben.
- Ipari vezérlőrendszerek, ahol a pontosság fontosabb, mint a sebesség.
- Hőmérséklet-érzékelők.

---

## 7.1 Digitális multiméterek

A digitális multiméter (DMM) az egyik leggyakrabban használt és leginkább sokoldalú mérőműszer az elektronika és elektrotechnika területén. A korábban tárgyalt alapelvek (ADC, feszültségosztó, sönt) kombinációját alkalmazza.

**Főbb részei és működése:**

1. **Bemeneti fokozat (Input conditioning):**
    - **Választókapcsoló:** Meghatározza, hogy milyen mennyiséget (feszültség, áram, ellenállás) és milyen tartományban mérünk.
    - **Feszültségosztók (Voltage Dividers):** Feszültségméréshez a nagy feszültségeket csökkentik le egy mérhető szintre. Ezek precíziós ellenállásokból állnak. `VEVM 49. oldal, 2.10. ábra (Digitális multiméter felépítése)`
    - **Söntellenállások (Shunt Resistors):** Áramméréshez az áramot feszültséggé alakítják (az áram áthalad egy ismert ellenálláson, és a rajta eső feszültséget mérik).
    - **Diódák és védelmi áramkörök:** Védik a műszert a túlfeszültségtől vagy túláramtól.
    - **AC/DC átalakítás:** AC méréshez egyenirányító (gyakran precíziós, műveleti erősítővel) vagy True RMS konverter van beépítve.
2. **Analóg-digitális átalakító (ADC):**
    - A DMM lelke. A legtöbb precíziós DMM **kettős meredekségű (dual-slope) ADC-t** használ a magas pontosság, linearitás és zajtűrés miatt. Gyorsabb DMM-ekben SAR ADC is előfordulhat. `VEVM 141. oldal, 6.5. ábra`
3. **Digitális feldolgozó egység (Digital Processing Unit - DPU):**
    - A mikrovezérlő vagy ASIC (Application-Specific Integrated Circuit) végzi a mérések vezérlését, a digitális adatok feldolgozását (pl. kalibráció, számítások), és a kijelző meghajtását.
4. **Kijelző (Display):**
    - LCD (Liquid Crystal Display) a leggyakoribb, alacsony energiafogyasztása miatt. Numerikusan jeleníti meg a mért értéket.
    - Néhány DMM-en van bargraph kijelző is a gyorsabb trendek megfigyelésére.

**Főbb mérési funkciók:**

- **DC feszültségmérés (DCV):** Magas bemeneti impedancia (10 MΩ), feszültségosztóval és ADC-vel.
- **AC feszültségmérés (ACV):** Egyenirányítóval (átlagérték vagy True RMS) és feszültségosztóval, majd ADC-vel.
- **DC árammérés (DCA):** Söntellenálláson eső feszültség mérésével, majd ADC-vel.
- **AC árammérés (ACA):** Söntellenálláson eső feszültség egyenirányításával (vagy True RMS konverzióval), majd ADC-vel.
- **Ellenállásmérés (Ohmmeter):** Belső áramforrással és ismert referenciaellenállással a mérendő ellenálláson eső feszültséget vagy azon átfolyó áramot méri.
- **További funkciók (gyakran megtalálhatók):**
    - Kapacitásmérés
    - Frekvenciamérés
    - Dióda teszt
    - Folytonosság teszt (hangjelzéssel)
    - Hőmérsékletmérés (hőelem vagy termisztor segítségével)
    - Tranzisztor teszt
    - True RMS mérés (fontos nem szinuszos jeleknél)

**Pontosság és felbontás:**

- A DMM-ek pontosságát általában százalékban adják meg (pl. ±0.1% az olvasott értékből + néhány digit).
- Felbontásukat a kijelzőn megjelenő "digit"-ek számával jellemzik (pl. 3.5 digit, 4.5 digit). A ".5" digit azt jelenti, hogy a legmagasabb helyiértékű szám csak 0 vagy 1 lehet. Pl. egy 3.5 digites DMM 0 és ±1999 közötti értéket képes kijelezni.

**Előnyök:**

- Magas pontosság és felbontás.
- Könnyű leolvasás, nincs parallaxishiba.
- Széles mérési tartományok és sok funkció.
- Magas bemeneti impedancia feszültségmérésnél.

**Hátrányok:**

- Lassabb válaszidő, mint az analóg műszereknél (bár ez a modern DMM-eknél egyre kevésbé igaz).
- Néha nehezebb a trendek, ingadozások megfigyelése (bár bargraph kijelzők segítenek).

---

## 7.2.2. Digitális oszcilloszkóp

A digitális oszcilloszkóp (DSO - Digital Storage Oscilloscope) a legfontosabb mérőműszer az elektronikában a feszültség időbeli lefutásának megjelenítésére és elemzésére. A hagyományos analóg oszcilloszkópokhoz képest számos előnnyel rendelkezik.

**Főbb részei és működési elve:**

- **Bemeneti fokozat (Input Stage):**
    - **Attenuátorok/erősítők:** A bemeneti jelet illesztik és erősítik vagy csillapítják a megfelelő szintre az ADC számára.
    - **Impedancia:** Általában 1 MΩ vagy 50 Ω (magas frekvenciás alkalmazásokhoz).
    - **VEVM 150. oldal, 7.7. ábra (Digitális oszcilloszkóp felépítése)**
- **Analóg-digitális átalakító (ADC):**
    - A bemeneti analóg feszültséget digitális mintavételezett adatokká alakítja.
    - A mintavételezési sebesség (Sample Rate) kulcsfontosságú: minél gyorsabb, annál nagyobb sávszélességű jeleket lehet pontosan digitalizálni. (Nyquist-Shannon mintavételezési tétel szerint a mintavételezési sebességnek legalább a mérendő jel maximális frekvenciájának kétszeresének kell lennie).
    - A felbontás (Resolution) a minták bitmélységét jelenti (pl. 8 bit, 10 bit).
    - Gyakran Flash ADC-ket használnak a nagy sebesség miatt, vagy SAR ADC-ket, ha a sebesség kevésbé kritikus, de a felbontás fontos.
- **Memória (Memory):**
    - Az ADC által digitalizált mintákat tárolja. A memóriamélység (Record Length) határozza meg, hogy mennyi időtartamot tud rögzíteni az oszcilloszkóp adott mintavételezési sebesség mellett.
- **Trigger rendszer (Trigger System):**
    - A DSO kulcsfontosságú része. Meghatározza, hogy mikor kezdődjön a hullámforma rögzítése és megjelenítése. Ez biztosítja, hogy a hullámforma stabilan jelenjen meg a kijelzőn.
    - Különböző triggertípusok: él trigger (Edge trigger), impulzusszélesség trigger (Pulse width trigger), video trigger, logikai trigger stb.
    - **VEVM 151. oldal (Trigger rendszer)**
- **Mikroprocesszor/Jelfeldolgozó egység (Processor/DSP):**
    - A tárolt digitális adatokat dolgozza fel (pl. interpoláció, mérések, matematikai műveletek).
    - Lehetővé teszi az automatikus méréseket (pl. Vpp, RMS, frekvencia, periódusidő).
- **Kijelző (Display):**
    - LCD kijelzőn jeleníti meg a rögzített és feldolgozott hullámformát.

**Előnyök az analóg oszcilloszkóppal szemben:**

- **Jeltárolás:** Képes a hullámformát tárolni és később elemezni, ami az analóg oszcilloszkópoknál lehetetlen.
- **Pre-trigger funkció:** Képes megjeleníteni a trigger esemény ELŐTTI jelet is, ami kritikus az egyszeri események vagy hibák felderítéséhez.
- **Automatikus mérések:** Számos paramétert (feszültség, idő, frekvencia) automatikusan mér és kijelez.
- **Jelfeldolgozás:** Matematikai műveleteket végezhet a hullámformákon (pl. FFT - Fourier transzformáció a spektrumanalízishez).
- **Kényelem:** Könnyebben használható, jobb felhasználói felület, képmentés, PC-hez csatlakoztathatóság.
- **Zajcsökkentés:** Digitális szűrők alkalmazhatók.

**Főbb paraméterek:**

- **Sávszélesség (Bandwidth):** A legmagasabb frekvencia, amelyet az oszcilloszkóp még pontosan tud mérni (-3dB pont).
- **Mintavételezési sebesség (Sample Rate):** Hány mintát vesz másodpercenként (MSa/s vagy GSa/s).
- **Memóriamélység (Record Length):** Hány mintát tud tárolni.
- **Felbontás (Resolution):** A digitális konverzió bitmélysége.

**Alkalmazások:**

- Áramkörök hibakeresése és elemzése.
- Jelalakok vizsgálata, mint pl. négyszögjel, impulzusok, soros kommunikációs jelek.
- Szenzorjelek analízise.
- Beágyazott rendszerek fejlesztése.

---

## 7.4 Egyetemes számlálók, frekvenciamérők

Az egyetemes számlálók és frekvenciamérők olyan digitális mérőműszerek, amelyek a bemeneti jel frekvenciáját, periódusidejét, időintervallumait, és impulzusait számolják.

**Alapelv:**

- A legtöbb digitális számláló egy kvarc-oszcillátorra alapuló pontos időbázist (referencia frekvenciát) használ.
- A bemeneti analóg jelet először egy schmitt-triggerrel digitális (négyszög) jellé alakítják, hogy a zaj ne befolyásolja a számlálást.
- **VEVM 157. oldal, 7.13. ábra (Digitális frekvenciamérő felépítése)**

**Főbb funkciók és működési módok:**

1. **Frekvenciamérés (Counting Frequency):**
    
    - **Módszer:** Egy ismert, pontos időintervallum (Tg​, kapuidő) alatt megszámolják, hogy hány periódusa (impulzusa) van a mérendő jelnek.
    - **Képlet:** fx​=Tg​Nx​​
    - Ahol Nx​ a megszámolt impulzusok száma, Tg​ a kapuidő.
    - **VEVM 157. oldal**
    - **Pontosság:** Minél hosszabb a kapuidő, annál pontosabb a frekvenciamérés.
    - **Probléma:** Kis frekvenciák mérése lassú. Nagy frekvenciák esetén a kapuidő nem lehet túl rövid a megfelelő pontossághoz.
2. **Periódusidő mérés (Measuring Period):**
    
    - **Módszer:** A mérendő jel egy periódusa alatt megszámolják a nagyfrekvenciás referencia oszcillátor impulzusait (Nref​).
    - **Képlet:** Tx​=Nref​⋅tclk​=Nref​fclk​1​
    - Ahol tclk​ a referencia órajel periódusideje, fclk​ a referencia órajel frekvenciája.
    - **VEVM 158. oldal, 7.14. ábra (Periódusidő mérés)**
    - **Előny:** Kis frekvenciáknál pontosabb, mint a frekvenciamérés, mert a hibát az oszcillátor frekvenciája adja, ami nagy.
    - **Hátrány:** Nagy frekvenciáknál a referencia órajel frekvenciája korlátozhatja a felbontást.
3. **Időintervallum mérés (Time Interval Measurement):**
    
    - Két impulzus (vagy egy jel két élének) közötti időtartam mérése.
    - A bemeneti jel két eseménye (START és STOP) között megszámolják a referencia órajel impulzusait.
    - **VEVM 159. oldal, 7.15. ábra (Időintervallum mérés)**
4. **Impulzusok számlálása (Totalizing):**
    
    - Egyszerűen megszámolja az összes bemeneti impulzust egy adott időintervallumon belül (vagy amíg le nem állítják).

**Főbb komponensek:**

- **Bemeneti előkondicionáló (Schmitt-trigger):** Átalakítja az analóg bemeneti jelet stabil digitális impulzusokká.
- **Időbázis oszcillátor:** Stabil kvarc oszcillátor, amely a referencia frekvenciát biztosítja (pl. 10 MHz). Ennek pontossága kritikus.
- **Kapu (Gate):** Egy digitális logikai kapu, amely nyitja/zárja az impulzusok áthaladását a számláló felé, az adott mérési módnak megfelelően.
- **Számláló (Counter):** Számolja a beérkező impulzusokat.
- **Kijelző (Display):** Megjeleníti a mért értéket.
- **Vezérlő logika:** Összehangolja az összes egység működését.

**Pontosság:**

- A számlálók és frekvenciamérők pontossága elsősorban a **időbázis oszcillátor** pontosságától és stabilitásától függ.
- A **±1 számlálási hiba** (gating error) is jelentős lehet, különösen rövid kapuidőknél. Ez abból adódik, hogy az órajel és a bemeneti jel nem szinkronban van.

**Előnyök:**

- Nagyon nagy pontosság (különösen frekvenciamérésnél).
- Széles frekvenciatartomány.
- Digitális kijelzés, könnyű leolvasás.

**Alkalmazások:**

- Rádiófrekvenciás berendezések tesztelése.
- Kommunikációs rendszerekben.
- Oszcillátorok, jelgenerátorok kalibrálása.
- Sebességmérés (impulzusok alapján).
- Gyakoriságmérés ipari folyamatokban.