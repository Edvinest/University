# Szinusz és Koszinus függvények

$$
sinα = \frac{\text{szöggel szembeni befogó}}{\text{átfogó}}
$$

$$
cosα = \frac{\text{szög melletti befogó}}{\text{átfogó}}
$$

Periodikus függvények, amelyeket főleg a körmozgás és a kvázi-stacionárius feszültség/áram tanulmányozásánál fogunk használni. 
Ezekben az esetekben az α szöget fázisszögnek hívjuk (vagy röviden fázis), periodikusan
változik az idő függvényében és következő formában írjuk fel az értékét: α = α$_0$ + ωt, ahol:

- $α_0$ a kezdőfázis(szög) (mértékegysége 1rad/s),
- ω a szögsebesség (vagy körfrekvencia, mértékegysége 1rad/s),
- t az idő (mértékegysége 1s),
- a függvény periódusa/frekvenciája

$$
T = \frac{2π}{ω} \\\text{és}\\ ν = \frac{1}{T}
$$

(a frekvencia mértékegysége 1s$^{− 1}$ = 1Hz).
$α_0$ szerepe:

- mivel időben lejátszódó folyamatokat fogunk tanulmányozni, szükségünk van egy
vonatkoztatási rendszerre az idő múlásának tekintetében. Az $α_0$ kezdőfázis arra
szolgál, hogy a kezdő pillanatban tudjuk megadni egy függvény értékét (jelen
esetben egyszerűen a cos vagy sin függvények értékét).

**Példa:** egyenletes körmozgás ( ω = áll)
Egy m-tömegű anyagi pont az 1-es pontból kiindulva r-sugarú pályán egyenletes körmozgást végez (az ω-val jelzett szögsebessége állandó, ami azt jelenti, hogy egyenlő időközönkét az r sugár egyenlő szögtartományt érint). Az 1-es pontban az anyagi pont poláris koordinátái [r, α$_0$]. Az anyagi pont t-idő elteltével a 2-es pontba található, amelynek poláris koordinátái [r,α], ahol α = α$_0$ + ωt.
Az anyagi ponthelyzeteit megadó descartes-i koordinátákat a szinusz és koszinusz függvények
segítségével a következőképpen adhatjuk meg:

$x_1 = r*cosα_0 \text{ és } y_1 = r*sinα_0$
illetve
$x_2 = r*cos(α_0 + ω_t) \text{ és }
 y_1 = r*sin(α_0 + ω_t)$

![Screenshot from 2023-11-12 16-38-52.png](Szinusz%20e%CC%81s%20Koszinus%20fu%CC%88ggve%CC%81nyek/Screenshot_from_2023-11-12_16-38-52.png)

Figyelembe véve, hogy a szinusz és koszinusz függvények értéktartománya [-1,1] az
eddigiekben felsorolt jellemzőket a következő ábrák szemléltetik.

$y(t) = sin(α); α = ω_t + α_0\text{ és } α_0 = 0$

![Screenshot from 2023-11-12 16-42-17.png](Szinusz%20e%CC%81s%20Koszinus%20fu%CC%88ggve%CC%81nyek/Screenshot_from_2023-11-12_16-42-17.png)

$y(t) = cos(α); α = ω_t + α_0 \text{ és } α_0 = 0$

![Screenshot from 2023-11-12 17-51-49.png](Szinusz%20e%CC%81s%20Koszinus%20fu%CC%88ggve%CC%81nyek/Screenshot_from_2023-11-12_17-51-49.png)

### Hasznos képletek

$$
\text{(1.) } sin(α ± β) = sinαcosβ ± cosαsinβ\\
\text{(2.) }cos(α ± β) = cosαcosβ ± sinαsinβ
$$

$$
sin^2α = \frac{1 − cos2α}{2}\\
cos^2α = \frac{1 + cos2α}{2}\\
sin^2α = 2sinαcosα\\
sin^2α + cos2α = 1\\
\int_{0}^{T} sin(ω_t + α_0) dt = 0\\
\int_{0}^{T} cos(ω_t + α_0) dt = 0
$$

Fontos következtetést vonhatunk le az (1.) vagy (2.) képletből:
Ha $β = \frac{π}{2}$ akkor

$$
cosα = sin (α +\frac{π}{2})
$$

Ami azt jelenti, hogy a koszinusz függvény fázisban (fázis szöget tekintve) siet $\frac{π}{2}$-es szög értékkel a szinusz függvényhez képest (ld. az előző két ábra összehasonlítása).
Általánosan felírva:

$$
sin (α ± \frac{π}{2}) = cosα\\
cos (α ± \frac{π}{2}) = ± sinα
$$