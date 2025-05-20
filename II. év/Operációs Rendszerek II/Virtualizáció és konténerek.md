#### 1. **Virtualizáció alapjai**
- **Cél**: Erőforrások hatékony kihasználása több, elkülönített környezet (virtuális gép vagy konténer) létrehozásával.
- **Hypervisor** (virtuális gépek monitorja):
    - **Type 1 (bare-metal)**: Közvetlenül a hardveren fut (pl. VMware vSphere, Microsoft Hyper-V). Magas teljesítmény, biztonság.
    - **Type 2**: Gazda operációs rendszeren fut (pl. VirtualBox, VMware Workstation). Fejlesztési és tesztelési célokra alkalmas.
#### 2. **Konténerek**
- **Operációs rendszerszintű virtualizáció**: Alkalmazások és függőségeik elkülönített futtatása.
- **Kulcsfontosságú technológiák**:
    - **Control Groups (cgroups)**: Erőforrás-korlátok beállítása.
    - **Namespaces**: Elszigetelés a gazda rendszertől (pl. hálózat, fájlrendszer, felhasználók).
- **Népszerű platformok**: Docker, LXC, Kubernetes.
#### 3. **Docker**
- **Előnyök**:
    - **Mobilitás**: Konténerek egyszerű terjeszthetősége különböző környezetekben.
    - **Gyors indítás**: Másodpercek alatt elérhető.
- **Hálózati modellek**:
    - Bridge, host, overlay, macvlan.
- **Kezelés**:
    - **Docker Compose**: Több-konténeres alkalmazások YAML-alapú definiálása.
    - **Docker Swarm**: Több csomópontos konténer-kezelés terheléselosztással.
#### 4. **Kubernetes (K8s)**
- **Nyílt forráskódú konténer-orchestráció**:
    - Automatikus skálázás, önjavítás, terheléselosztás.
    - Támogatja a komplex alkalmazások üzembe helyezését és kezelését.
- **Alapvető funkciók**:
    - Service discovery, storage orchestration, titkos kulcsok kezelése.
#### 5. **Konténerek vs. virtuális gépek**
- **Konténerek**:
    - Könnyű súlyúak, gyorsak, osztoznak a gazda kernelén.
    - Példák: Docker, LXC.
- **Virtuális gépek**:
    - Teljes operációs rendszert futtatnak, erőforrás-igényesek.
    - Példák: VMware, Hyper-V.
#### 6. **Biztonság és erőforrás-kezelés**
- **Konténerek**:
    - Namespace-ek és cgroups biztosítják az elszigetelést.
    - Docker Hub és privát registryk segítik a biztonságos image-kezelést.
- **Virtuális gépek**:
    - Hypervisor szintű védelmet nyújt, de nagyobb overhead-el jár.
#### 7. **Használati területek**
- **Fejlesztés és tesztelés**: Gyors környezetek létrehozása.
- **Felhőszolgáltatások**: Skálázható alkalmazások üzemeltetése.
- **Microservices architektúra**: Moduláris szolgáltatások konténerekben.
#### 8. **Kulcsfontosságú eszközök és platformok**
- **Docker**: Konténer-létrehozás és -kezelés.
- **Kubernetes**: Konténer-orchestráció nagy rendszerekben.
- **LXC/LXD**: Rendszer-szintű konténerek.
- **OpenVZ**: Linux-alapú virtualizáció.