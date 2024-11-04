
## 1. A regiszter tömb (16 db 16 bites regiszter)

**Pszeudó kód:**
RW - '0' (Read), '1' (Write)

```pseudo
Ha CLk:
	Ha Reset = '1':
		Tarolo = 0
		Kimenetek = 0
	Másképp:
		Ha RW = '1':
			Tároló (SX_addr) = Data_in
		Másképp:
			DataOutX = Tároló (SXAddr)
			DataOutY = Tároló (SYAddr)
```