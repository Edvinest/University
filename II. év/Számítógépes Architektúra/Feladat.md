1. Kössönk be a processzorhoz egy 1 bites **statikus RAM-ot** a 12-es címre és azon a címen a D1-es adatbitre

-Rajz-
CPU
{Cím regiszter}
- A0
- A1
- A2
- A3
{Adat regiszter}
- D0
- D1
- D2
- D3
{Vezérlő egység}
- MemoryRead
- MemoryWrite

-Rajz-
DTároló
{INPUT}
	- D
	- Clock
{OUTPUT}
	- Q
	- !Q


Összekötjük a D1-et a D Tároló D inputjára
Visszakötjük Q-t a D-re ha az Output Enable 1 (Tri-state gate)

Példaként rajzolunk egy nagy ÉS kaput, amit az órajelre kötünk
Ha cím regiszteren 12 bit van és a Vezérlő egység írás jelet küld akkor igaz (első 2 A tagadva)
Az Output Enable-t is ennek a kimenete adja meg

T=A3\*A2\*!A1\*!A0\*MemWr
OE=A3\*A2*!A1\*!A0\*MemRd

2. Címzéstartomány: 64 Kbyte
Illesszünk a rendszerbe egyenként két db 16 Kbyte-os RAM-ot, egymás után következő címekre, illetve 1 db EPROM-ot, ami 8 Kbyte, a végére

- Memóriatérkép
- Bekütési rajz + logikai függvény

64 Kbyte: 64\*2$^{10}$ = 2$^6$ \* 2$^{10}$ = 2$^{16}$ -> 16 címbit
RAM, 16 Kbyte: 16 \* 2$^{10}$ = 2$^4$ \* 2$^{10}$ = 2$^{14}$ -> 14 címbit
EPROM, 8 Kbyte: 2$^{13}$ -> 13 címbit
Adatbitek száma: 8 (1 byte)

-Rajz-
{16 KB RAM} 
Kezdő cím: A15 -> (0)000 0000 0000 000(0) <- A0
Végső cím: 0011 1111 1111 1111
{16 KB RAM}
Kezdő cím: 0100 0000 0000 0000
Végső cím: 0111 1111 1111 1111
{üres rész}
{8 KB EPROM}
Kezdő cím: 1110 0000 0000 0000
Végső cím: 1111 1111 1111 1111


-Rajz-
CPU
{Cím regiszter}
- A0
- A1
- ...
- A15
{Adat regiszter}
- D0
- D1
- ...
- D7
{Vezérlő egység}
- MemoryRead
- MemoryWrite

EnR0
{INPUT}
- A0
- ...
- A13
{OUTPUT}
- D0
- ...
- D7
{RW}
- MemRead
- MemWrite

EnR1
{INPUT}
- A0
- ...
- A13
{OUTPUT}
- D0
- ...
- D7
{RW}
- MemRead
- MemWrite

EnEPROM
{INPUT}
- A0
- ...
- A12
{OUTPUT}
- D0
- ...
- D7
{RW}
- MemRead

EnR0 = !A15 !A14 (MRd + MWr)
EnR1 = !A15 A14 (MRd + MWr)
EnEPROM = A15 A14 A13 Mrd