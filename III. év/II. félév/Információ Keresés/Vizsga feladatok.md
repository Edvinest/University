### Feleletválasztós feladatok (helyes válaszokkal)

**1. Blokk**

- **1. Melyik NEM nem-felügyelt feladat?** a) klaszterezés b) társítási szabályok c) osztályozás d) szekvenciális mintázatok → **Helyes: c**
    
- **2. Melyik lépés NEM része a KDD-folyamatnak?** a) adattisztítás b) adatintegráció c) adatbányászat d) adatértékesítés → **Helyes: d**
    
- **3. Melyik feladat jelez előre folytonos értéket?** a) osztályozás b) regresszió c) klaszterezés d) társítás → **Helyes: b**
    
- **4. A csalásfelderítés tipikus eszköze:** a) regresszió b) kiugró-/anomália-detektálás c) karakterizáció d) adattisztítás → **Helyes: b**
    
- **5. Mit jelent a CRISP-DM?** a) adatbázis-nyelv b) iparági adatbányászati folyamatszabvány c) klaszterező algoritmus d) neuronháló → **Helyes: b**
    

**2. Blokk**

- **1. Melyik NEM dimenziócsökkentő módszer?** a) PCA b) Wavelet c) SMOTE d) Feature selection → **Helyes: c**
    
- **2. Mire való a χ²-teszt?** a) numerikus korreláció b) nominális változók függetlensége c) normalizáció d) mintavétel → **Helyes: b**
    
- **3. Melyik FELÜGYELT diszkretizációs módszer?** a) equal-width b) equal-frequency c) entrópia-alapú d) decimal scaling → **Helyes: c**
    
- **4. Min-Max [0,1] normalizáció után a minimum értéke:** a) 1 b) 0 c) −1 d) az átlag → **Helyes: b**
    
- **5. Mit jelent az SRSWOR?** a) visszatevéses minta b) rétegzett minta c) visszatevés nélküli egyszerű véletlen minta d) klaszteres minta → **Helyes: c**
    

**3. Blokk**

- **1. Melyik NEM döntésifa-attribútumválasztó mérték?** a) information gain b) gain ratio c) Gini-index d) Laplace-simítás → **Helyes: d**
    
- **2. A precision képlete:** a) TP/(TP+FN) b) TP/(TP+FP) c) TN/(TN+FP) d) (TP+TN)/össz → **Helyes: b**
    
- **3. A naïve Bayes melyik feltételezéssel él?** a) feltételes függetlenség b) normál eloszlás kötelező c) lineáris határ d) nincs feltételezés → **Helyes: a**
    
- **4. Melyik ensemble csökkenti elsősorban a varianciát?** a) boosting b) bagging / random forest c) AdaBoost d) gradient boosting → **Helyes: b**
    
- **5. Mit mér az AUC?** a) tanítási idő b) a rangsorolási képesség (ROC alatti terület) c) a fa mélysége d) az entrópia → **Helyes: b**
    

**4. Blokk**

- **1. Melyik partíciós klaszterező algoritmus?** a) DBSCAN b) AGNES c) k-means d) STING → **Helyes: c**
    
- **2. A k-means melyik problémára érzékeny leginkább?** a) hiányzó címke b) outlierek c) kategorikus adat d) dendrogram → **Helyes: b**
    
- **3. A DBSCAN melyik két paramétert használja?** a) k és t b) Eps és MinPts c) μ és σ d) support és confidence → **Helyes: b**
    
- **4. Melyik módszerrel becsüljük a klaszterek számát?** a) könyök-módszer (elbow) b) Laplace c) Apriori d) bootstrap → **Helyes: a**
    
- **5. Mi a sziluett értéktartománya?** a) [0,1] b) [−1,1] c) [0,∞) d) [−∞,∞] → **Helyes: b**
    

**5. Blokk**

- **1. Melyik NEM outlier-típus?** a) globális b) kontextuális c) kollektív d) lineáris → **Helyes: d**
    
- **2. A 3σ-szabály melyik módszercsaládhoz tartozik?** a) statisztikai b) klaszterezés-alapú c) osztályozás-alapú d) proximity → **Helyes: a**
    
- **3. Mit mér a LOF?** a) globális távolság b) lokális sűrűség-arány c) klaszterszám d) entrópia → **Helyes: b**
    
- **4. A one-class SVM melyik megközelítés?** a) statisztikai b) proximity c) osztályozás-alapú d) hisztogram → **Helyes: c**
    
- **5. Az outlier és a zaj viszonya:** a) azonosak b) a zajt outlierként detektáljuk c) a zaj eltávolítandó, az outlier érdekes d) az outlier mindig hiba → **Helyes: c**
    

### Gyakorlati és számítási feladatok leírása

**1. Számítási feladat: Társítási szabályok**

- **Adott 5 tranzakció (kosárelemzés):** T1 {kenyér, tej}; T2 {kenyér, pelenka, sör, tojás}; T3 {tej, pelenka, sör, kóla}; T4 {kenyér, tej, pelenka, sör}; T5 {kenyér, tej, pelenka, kóla}
    
- **Feladat:** Támogatottság és megbízhatóság meghatározása a {pelenka} → {sör} szabályra.
    
- **Megoldás:** * support({pelenka, sör}) = 3/5 = 0,6 (T2, T3, T4)
    
    - support({pelenka}) = 4/5 = 0,8 (T2, T3, T4, T5)
        
    - confidence(pelenka → sör) = support({pelenka, sör}) / support({pelenka}) = 0,6 / 0,8 = 0,75
        
    - _Értelmezés:_ A pelenkát vásárlók 75%-a sört is vesz. Figyelem: a megbízhatóság NEM szimmetrikus! confidence(sör → pelenka) = 0,6 / 0,6 = 1,0 → a sört vásárlók 100%-a pelenkát is vesz.
        

**2. Számítási feladat: Normalizáció**

- **Feladat:** Az income (jövedelem) tartománya $12 000 – $98 000; μ (átlag) = $54 000, σ (szórás) = $16 000. Normalizáld a v = $73 600 értéket!
    
- **Megoldás:**
    
    - Min-Max [0,1]: v′ = (73 600 − 12 000) / (98 000 − 12 000) = 61 600 / 86 000 = 0,716
        
    - Z-Score (μ, σ): v′ = (73 600 − 54 000) / 16 000 = 19 600 / 16 000 = 1,225
        
    - Decimal scaling (j = 5, osztás 100 000-rel): v′ = 73 600 / 100 000 = 0,736
        
    - _Megjegyzés:_ A Min-Max kötött [0,1] tartományt ad, de érzékeny az outlierekre; a Z-Score nem korlátos, de robusztusabb.
        

**3. Számítási feladat: χ² és kovariancia**

- **χ²-teszt (kontingenciatábla: megfigyelt | várt):** sci-fi & sakk: 250 (90); sci-fi & nem: 200 (360); nem sci-fi & sakk: 50 (210); nem & nem: 1000 (840). Összesen = 1500.
    
    - χ² = (250−90)²/90 + (50−210)²/210 + (200−360)²/360 + (1000−840)²/840 ≈ 507,9
        
    - df = 1; kritikus érték (α = 0,001) = 10,83 → 507,9 ≫ 10,83 → a változók NEM függetlenek (összefüggnek).
        
- **Kovariancia:** A = (2,3,5,4,6), B = (5,8,10,11,14).
    
    - E(A) = 4; E(B) = 9,6; E(AB) = 212/5 = 42,4
        
    - Cov(A,B) = E(AB) − E(A)·E(B) = 42,4 − 38,4 = 4,0 > 0 → A és B együtt mozog (pozitív kapcsolat).
        

**4. Számítási feladat: Binning és entrópia**

- **Binning:** Rendezett árak: 4, 8, 9, 15, 21, 21, 24, 25, 26, 28, 29, 34 → 3 egyenlő gyakoriságú bin (4-4 elem):
    
    - Bin1 [4, 8, 9, 15]: átlag-simítás → 9, 9, 9, 9; határ-simítás → 4, 4, 4, 15
        
    - Bin2 [21, 21, 24, 25]: átlag → 23, 23, 23, 23; határ → 21, 21, 25, 25
        
    - Bin3 [26, 28, 29, 34]: átlag → 29, 29, 29, 29; határ → 26, 26, 26, 34
        
- **Entrópia / információnyereség:** D: 6 igen, 4 nem, Info(D) = 0,971 bit; vágás kor = 40:
    
    - D1 (≤40): 4 igen / 1 nem → Info = 0,722; D2 (>40): 2 igen / 3 nem → Info = 0,971
        
    - Info_kor(D) = 0,5·0,722 + 0,5·0,971 = 0,846 → Gain = 0,971 − 0,846 = 0,125 bit
        
    - Az entrópia-alapú diszkretizáció a legnagyobb információnyereséget adó vágáspontot választja.
        

**5. Számítási feladat: Tévesztési mátrix**

- **Adatok:** Tévesztési mátrix (betegségteszt, 1000 eset): TP = 80, FN = 20 (valós beteg = 100); FP = 40, TN = 860 (valós egészséges = 900)
    
- **Kiszámított metrikák:** * accuracy (pontosság) = (TP+TN)/össz = (80+860)/1000 = 0,94 (94%)
    
    - precision (precizitás) = TP/(TP+FP) = 80/120 = 0,667 (66,7%)
        
    - recall (sensitivity/érzékenység) = TP/(TP+FN) = 80/100 = 0,80 (80%)
        
    - specificity (specificitás) = TN/(TN+FP) = 860/900 = 0,956 (95,6%)
        
    - F1-mérték = 2·P·R/(P+R) = 2·0,667·0,80 / (0,667+0,80) = 0,727 (72,7%)
        

**6. Számítási feladat: Nyereség és Gini**

- **Feladat:** buys_computer: D = 14 rekord (9 igen, 5 nem)
    
- **Megoldás:**
    
    - Info(D) = −(9/14)·log2(9/14) − (5/14)·log2(5/14) = 0,940 bit
        
    - Életkor szerinti felosztás: fiatal (2i,3n), középkorú (4i,0n), idős (3i,2n)
        
    - Info_kor(D) = (5/14)·0,971 + (4/14)·0 + (5/14)·0,971 = 0,694
        
    - Gain(kor) = 0,940 − 0,694 = 0,246 bit → az ID3 ezt az attribútumot választja
        
    - Gini-index: gini(D) = 1 − (9/14)² − (5/14)² = 0,459
        

**7. Számítási feladat: k-means**

- **Adatok:** Pontok (1D): 2, 4, 6, 20, 22, 24; k = 2; kezdő centroidok m1 = 3, m2 = 8
    
- **Megoldás menete:**
    
    - 1. iteráció (minden pont a közelebbi centroidhoz): C1 = {2, 4} → új m1 = 3; C2 = {6, 20, 22, 24} → új m2 = 18
            
    - 2. iteráció: C1 = {2, 4, 6} → új m1 = 4; C2 = {20, 22, 24} → új m2 = 22
            
    - 3. iteráció: a hozzárendelés nem változik → KONVERGENCIA
            
    - _Végső klaszterek:_ {2, 4, 6} (centroid 4) és {20, 22, 24} (centroid 22)
        

**8. Számítási feladat: Távolság, DBSCAN**

- **Távolság számítás:** A = (2, 3), B = (5, 7)
    
    - Euklideszi = √((5−2)² + (7−3)²) = √(9 + 16) = √25 = 5
        
    - Manhattan = |5−2| + |7−3| = 3 + 4 = 7
        
- **DBSCAN feladat:** Pontok 1, 2, 3, 4, 9; Eps = 1,5; MinPts = 3 (önmagával együtt)
    
    - p=2: szomszédok {1,2,3} = 3 → core; p=3: {2,3,4} = 3 → core
        
    - p=1: {1,2} = 2 → border (elérhető 2-ből); p=4: {3,4} = 2 → border (elérhető 3-ból)
        
    - p=9: {9} = 1 → ZAJ (outlier)
        

**9. Számítási feladat: z-score (3σ-szabály)**

- **Feladat:** Adott: normál eloszlás, μ = 50, σ = 10. Kiugró-e egy pont a 3σ-szabály szerint? (z-score: z = (x − μ) / σ; a pont outlier, ha |z| > 3)
    
- **Megoldás:**
    
    - x = 85: z = (85 − 50) / 10 = 3,5 → |z| > 3 → OUTLIER
        
    - x = 65: z = (65 − 50) / 10 = 1,5 → |z| ≤ 3 → normális
        
    - _Értelmezés:_ A 3σ-szabály szerint a μ ±3σ (azaz 20–80) tartományon kívüli pontok kiugrók.

### Igaz/Hamis feladatok (helyes válaszokkal és indoklással)

**1. Blokk (Bevezetés, KDD)**

- **1. Az adatbányászat és a teljes KDD-folyamat ugyanaz.** → **HAMIS** (a bányászat a KDD egyetlen lépése).
    
- **2. A klaszterezés felügyelt tanulás.** → **HAMIS** (nem-felügyelt; nincs előre megadott címke).
    
- **3. A regresszió célváltozója folytonos.** → **IGAZ** (numerikus értéket jelez előre).
    
- **4. A társítási szabály megbízhatósága szimmetrikus (X→Y = Y→X).** → **HAMIS** (a confidence irányfüggő).
    
- **5. A kiugró objektum mindig hiba/zaj, amit el kell dobni.** → **HAMIS** (gyakran épp ez a hasznos információ, pl. csalás).
    
- **6. Minden kibányászott minta automatikusan hasznos és érdekes.** → **HAMIS** (szűrni kell az érdekesség alapján).
    

**2. Blokk (Adatelőfeldolgozás)**

- **1. A Z-Score normalizáció megváltoztatja az adatok eloszlásának alakját.** → **HAMIS** (lineáris; csak μ és σ változik, az alak nem).
    
- **2. A PCA főkomponensei egymásra merőlegesek (ortogonálisak).** → **IGAZ** (a sajátvektorok ortogonálisak).
    
- **3. Az equal-width binning érzékeny az outlierekre.** → **IGAZ** (egyetlen szélső érték kitágítja a tartományt).
    
- **4. A hiányzó adatok egyszerű törlése mindig biztonságos.** → **HAMIS** (MNAR esetén a minta torzul).
    
- **5. A SMOTE-ot a teszthalmazon is alkalmazni kell.** → **HAMIS** (csak a tanítóhalmazon, a felosztás után).
    
- **6. A nagy |Pearson r| redundanciára utalhat az integrációnál.** → **IGAZ** (erősen korreláló attribútumok feleslegesek lehetnek).
    

**3. Blokk (Osztályozás)**

- **1. Az osztályozás felügyelt tanulási feladat.** → **IGAZ** (címkézett tanító adat).
    
- **2. A naïve Bayes feltételezi az attribútumok feltételes függetlenségét.** → **IGAZ**
    
- **3. A magas accuracy mindig jó modellt jelent.** → **HAMIS** (kiegyensúlyozatlan adatnál félrevezető).
    
- **4. A boosting párhuzamosan, független modelleket tanít.** → **HAMIS** (az a bagging; a boosting szekvenciális).
    
- **5. A döntési fa metszése a túltanulás ellen hat.** → **IGAZ**
    
- **6. recall = TP/(TP+FP).** → **HAMIS** (az a precision; recall = TP/(TP+FN)).
    

**4. Blokk (Klaszterezés)**

- **1. A klaszterezés nem-felügyelt tanulás.** → **IGAZ**
    
- **2. A k-means előre megadott klaszterszámot (k) igényel.** → **IGAZ**
    
- **3. A k-medoids érzékenyebb az outlierekre, mint a k-means.** → **HAMIS** (a medoid robusztusabb).
    
- **4. A DBSCAN képes tetszőleges alakú klasztereket találni.** → **IGAZ**
    
- **5. Jó klaszterezésnél a klaszteren belüli hasonlóság alacsony.** → **HAMIS** (magas a belső, alacsony a klaszterek közti hasonlóság).
    
- **6. A sziluett-együttható értéke [−1, 1] között van.** → **IGAZ**
    

**5. Blokk (Kiugró értékek / Outlierek)**

- **1. Az outlier ugyanaz, mint a zaj.** → **HAMIS** (a zaj véletlen hiba; az outlier valódi, érdekes eltérés).
    
- **2. A kontextuális outlier csak adott kontextusban kiugró.** → **IGAZ**
    
- **3. A LOF lokális outlierek detektálására alkalmas.** → **IGAZ**
    
- **4. A statisztikai módszerek eloszlást feltételeznek a normális adatra.** → **IGAZ**
    
- **5. A klaszterezés-alapú detektálás címkézett adatot igényel.** → **HAMIS** (nem-felügyelt).
    
- **6. A LOF ≈ 1 erős outliert jelez.** → **HAMIS** (a LOF ≫ 1 jelez outliert; ≈ 1 normális).

