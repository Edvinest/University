# Szinusz és Koszinus függvények

$$
sin\alpha = \frac{\text{szöggel szembeni befogó}}{\text{átfogó}}
$$

$$
cos\alpha = \frac{\text{szög melletti befogó}}{\text{átfogó}}
$$

Periodikus függvények, amelyeket főleg a körmozgás és a kvázi-stacionárius feszültség/áram tanulmányozásánál fogunk használni. 
Ezekben az esetekben az $\alpha$ szöget fázisszögnek hívjuk (vagy röviden fázis), periodikusan
változik az idő függvényében és következő formában írjuk fel az értékét: $\alpha$ = $\alpha_0$ + $\omega$t, ahol:

- $\alpha_0$ a kezdőfázis(szög) (mértékegysége 1rad/s),
- $\omega$ a szögsebesség (vagy körfrekvencia, mértékegysége 1rad/s),
- t az idő (mértékegysége 1s),
- a függvény periódusa/frekvenciája

$$
T = \frac{2\pi}{\omega} \\\text{és}\\ v = \frac{1}{T}
$$

(a frekvencia mértékegysége $1s^{- 1}$ = 1Hz).
$\alpha_0$ szerepe:

- mivel időben lejátszódó folyamatokat fogunk tanulmányozni, szükségünk van egy
vonatkoztatási rendszerre az idő múlásának tekintetében. Az $\alpha_0$ kezdőfázis arra
szolgál, hogy a kezdő pillanatban tudjuk megadni egy függvény értékét (jelen
esetben egyszerűen a cos vagy sin függvények értékét).

**Példa:** egyenletes körmozgás ($\omega$= áll)
Egy m-tömegű anyagi pont az 1-es pontból kiindulva r-sugarú pályán egyenletes körmozgást végez (az $\omega$-val jelzett szögsebessége állandó, ami azt jelenti, hogy egyenlő időközönkét az r sugár egyenlő szögtartományt érint). Az 1-es pontban az anyagi pont poláris koordinátái [r, $\alpha_0$]. Az anyagi pont t-idő elteltével a 2-es pontba található, amelynek poláris koordinátái [r,$\alpha$], ahol $\alpha$ = $\alpha_0$ + $\omega$t.
Az anyagi ponthelyzeteit megadó descartes-i koordinátákat a szinusz és koszinusz függvények
segítségével a következőképpen adhatjuk meg:
$$
x_1 = r*cos\alpha_0 \\\text{ és }\\ y_1 = r*sin\alpha_0\\
illetve\\
x_2 = r*cos(\alpha_0 + \omega_t) \\\text{ és }\\
 y_1 = r*sin(\alpha_0 + \omega_t)$$

![Screenshot from 2023-11-12 16-38-52.png](Szinusz%20e%CC%81s%20Koszinus%20fu%CC%88ggve%CC%81nyek/Screenshot_from_2023-11-12_16-38-52.png)

Figyelembe véve, hogy a szinusz és koszinusz függvények értéktartománya [-1,1] az
eddigiekben felsorolt jellemzőket a következő ábrák szemléltetik.

$y(t) = sin( \alpha ); \alpha = \omega_t + \alpha_0\text{ és } \alpha_0 = 0$

![Screenshot from 2023-11-12 16-42-17.png](Szinusz%20e%CC%81s%20Koszinus%20fu%CC%88ggve%CC%81nyek/Screenshot_from_2023-11-12_16-42-17.png)

$y(t) = cos(\alpha); \alpha = \omega_t + \alpha_0 \text{ és } \alpha_0 = 0$

![Screenshot from 2023-11-12 17-51-49.png](Szinusz%20e%CC%81s%20Koszinus%20fu%CC%88ggve%CC%81nyek/Screenshot_from_2023-11-12_17-51-49.png)

### Hasznos képletek

$$
\text{(1.) } sin(\alpha \pm \beta) = sin\alpha cos\beta \pm cos\alpha sin\beta\\
\text{(2.) }cos(\alpha \pm \beta) = cos\alpha cos\beta \pm sin\alpha sin\beta
$$

$$
sin^2\alpha = \frac{1 - cos2\alpha}{2}\\
cos^2\alpha = \frac{1 + cos2\alpha}{2}\\
sin^2\alpha = 2sin\alpha cos\alpha\\
sin^2\alpha + cos2\alpha = 1\\
\int_{0}^{T} sin(\omega_t + \alpha_0) dt = 0\\
\int_{0}^{T} cos(\omega_t + \alpha_0) dt = 0
$$

Fontos következtetést vonhatunk le az (1.) vagy (2.) képletből:
Ha $\beta = \frac{\pi}{2}$ akkor

$$
cos\alpha = sin (\alpha +\frac{\pi}{2})
$$

Ami azt jelenti, hogy a koszinusz függvény fázisban (fázis szöget tekintve) siet $\frac{\pi}{2}$-es szög értékkel a szinusz függvényhez képest (ld. az előző két ábra összehasonlítása).
Általánosan felírva:

$$
sin (\alpha \pm \frac{\pi}{2}) = cos\alpha\\[12pt]
cos (\alpha \pm \frac{\pi}{2}) = \pm sin\alpha
$$