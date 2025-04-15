### Szemaforok
- Bináris szemafor- 1 biten tárolja, hogy foglalt-e (mutex)
- Általános szemafor- pozitív egész szám
#### Szemaforok alkalmazása:
- Kölcsönös kizárás
- Szinkronizációs problémák megoldása
### Termelő fogyasztó
```c
#define N 100
typdef int semafor
semafor mutex=1
semafor ures=N;
semafor tele=0;

void termelo(void)
{
	int elem;
	while(TRUE){
		elem=gyartas();
		down(&ures);
		down(&mutex);
		elemet_beir(elem);
		up(&mutex);
	up(&tele);
	}
}

void fogyaszto(void){
	int elem;
	while(TRUE){
		down(&tele);
		down(&mutex);
		elem=elemet_kiolvas();
		up(&mutex);
		up(&ures);
		elemet_feldolgoz(elem);
	}
}
```
### Mutex
- A szemafor egyszerűsített változata(kétféle állapotban lehet: zárolt vagy nem zárolt.
- Két művelet lehetséges: - mutex_lock és mutex_unlock.
- Ha a mutex_lock műveletet szeretnénk végrehajtani és a mutex nem zárolt a processzus tovább fut és beléphet a saját kritikus részébe.
- A mutex_unlock nem blokkolásos művelet.