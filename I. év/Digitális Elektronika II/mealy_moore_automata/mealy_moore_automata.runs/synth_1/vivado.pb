
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
create_project: 2

00:00:052

00:00:052

1522.8162
0.0232
18462
31542Z17-722h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental /home/edvinest/University/DigiElektro2/mealy_moore_automata/mealy_moore_automata.srcs/utils_1/imports/synth_1/MOORECounter.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2�
~/home/edvinest/University/DigiElektro2/mealy_moore_automata/mealy_moore_automata.srcs/utils_1/imports/synth_1/MOORECounter.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
h
Command: %s
53*	vivadotcl27
5synth_design -top MEALYCounter -part xc7a100tcsg324-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
{
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2

xc7a100tZ17-347h px� 
k
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2

xc7a100tZ17-349h px� 
�
csynth_design options have changed between reference and incremental; A full resynthesis will be run654*	vivadotclZ4-1810h px� 
E
Loading part %s157*device2
xc7a100tcsg324-1Z21-403h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
4Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
N
#Helper process launched with PID %s4824*oasys2
19115Z8-7075h px� 
�
%s*synth2�
�Starting RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 2233.539 ; gain = 404.715 ; free physical = 881 ; free virtual = 30581
h px� 
�
synthesizing module '%s'638*oasys2
MEALYCounter2x
t/home/edvinest/University/DigiElektro2/mealy_moore_automata/mealy_moore_automata.srcs/sources_1/new/MEALYCounter.vhd2
418@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	clock_1Hz2�
�/home/edvinest/University/DigiElektro2/mealy_moore_automata/mealy_moore_automata.srcs/sources_1/imports/DigiElektro2/clock_1Hz/clock_1Hz.srcs/sources_1/new/clock_1Hz.vhd2
362
U12
	clock_1Hz2x
t/home/edvinest/University/DigiElektro2/mealy_moore_automata/mealy_moore_automata.srcs/sources_1/new/MEALYCounter.vhd2
698@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
	clock_1Hz2�
�/home/edvinest/University/DigiElektro2/mealy_moore_automata/mealy_moore_automata.srcs/sources_1/imports/DigiElektro2/clock_1Hz/clock_1Hz.srcs/sources_1/new/clock_1Hz.vhd2
428@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	clock_1Hz2
02
12�
�/home/edvinest/University/DigiElektro2/mealy_moore_automata/mealy_moore_automata.srcs/sources_1/imports/DigiElektro2/clock_1Hz/clock_1Hz.srcs/sources_1/new/clock_1Hz.vhd2
428@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
MEALYautomata2w
u/home/edvinest/University/DigiElektro2/mealy_moore_automata/mealy_moore_automata.srcs/sources_1/new/MEALYautomata.vhd2
342
U22
MEALYautomata2x
t/home/edvinest/University/DigiElektro2/mealy_moore_automata/mealy_moore_automata.srcs/sources_1/new/MEALYCounter.vhd2
708@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
MEALYautomata2y
u/home/edvinest/University/DigiElektro2/mealy_moore_automata/mealy_moore_automata.srcs/sources_1/new/MEALYautomata.vhd2
428@Z8-638h px� 
�
default block is never used226*oasys2y
u/home/edvinest/University/DigiElektro2/mealy_moore_automata/mealy_moore_automata.srcs/sources_1/new/MEALYautomata.vhd2
738@Z8-226h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
MEALYautomata2
02
12y
u/home/edvinest/University/DigiElektro2/mealy_moore_automata/mealy_moore_automata.srcs/sources_1/new/MEALYautomata.vhd2
428@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
hex_display2�
�/home/edvinest/University/DigiElektro2/mealy_moore_automata/mealy_moore_automata.srcs/sources_1/imports/DigiElektro2/hex_display/hex_display.srcs/sources_1/new/hex_display.vhd2
342
U32
hex_display2x
t/home/edvinest/University/DigiElektro2/mealy_moore_automata/mealy_moore_automata.srcs/sources_1/new/MEALYCounter.vhd2
718@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
hex_display2�
�/home/edvinest/University/DigiElektro2/mealy_moore_automata/mealy_moore_automata.srcs/sources_1/imports/DigiElektro2/hex_display/hex_display.srcs/sources_1/new/hex_display.vhd2
428@Z8-638h px� 
�
default block is never used226*oasys2�
�/home/edvinest/University/DigiElektro2/mealy_moore_automata/mealy_moore_automata.srcs/sources_1/imports/DigiElektro2/hex_display/hex_display.srcs/sources_1/new/hex_display.vhd2
558@Z8-226h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
val2�
�/home/edvinest/University/DigiElektro2/mealy_moore_automata/mealy_moore_automata.srcs/sources_1/imports/DigiElektro2/hex_display/hex_display.srcs/sources_1/new/hex_display.vhd2
488@Z8-614h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
hex_display2
02
12�
�/home/edvinest/University/DigiElektro2/mealy_moore_automata/mealy_moore_automata.srcs/sources_1/imports/DigiElektro2/hex_display/hex_display.srcs/sources_1/new/hex_display.vhd2
428@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
MEALYCounter2
02
12x
t/home/edvinest/University/DigiElektro2/mealy_moore_automata/mealy_moore_automata.srcs/sources_1/new/MEALYCounter.vhd2
418@Z8-256h px� 
�
%s*synth2�
�Finished RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 2308.508 ; gain = 479.684 ; free physical = 783 ; free virtual = 30484
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 2326.320 ; gain = 497.496 ; free physical = 782 ; free virtual = 30482
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 2326.320 ; gain = 497.496 ; free physical = 782 ; free virtual = 30482
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2326.3202
0.0002
7822
30482Z17-722h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2t
p/home/edvinest/University/DigiElektro2/mealy_moore_automata/mealy_moore_automata.srcs/constrs_1/new/automata.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2t
p/home/edvinest/University/DigiElektro2/mealy_moore_automata/mealy_moore_automata.srcs/constrs_1/new/automata.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2r
p/home/edvinest/University/DigiElektro2/mealy_moore_automata/mealy_moore_automata.srcs/constrs_1/new/automata.xdc2 
.Xil/MEALYCounter_propImpl.xdcZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2451.0702
0.0002
7662
30467Z17-722h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
 Constraint Validation Runtime : 2

00:00:002

00:00:002

2451.1052
0.0002
7662
30467Z17-722h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Constraint Validation : Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 2451.105 ; gain = 622.281 ; free physical = 769 ; free virtual = 30469
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Loading part: xc7a100tcsg324-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 2451.105 ; gain = 622.281 ; free physical = 769 ; free virtual = 30469
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 2451.105 ; gain = 622.281 ; free physical = 769 ; free virtual = 30469
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
7
%s
*synth2
Start Preparing Guide Design
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Doing Graph Differ : Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 2451.105 ; gain = 622.281 ; free physical = 767 ; free virtual = 30469
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Preparing Guide Design : Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 2451.105 ; gain = 622.281 ; free physical = 767 ; free virtual = 30469
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
!inferring latch for variable '%s'327*oasys2
kovetkezo_reg2y
u/home/edvinest/University/DigiElektro2/mealy_moore_automata/mealy_moore_automata.srcs/sources_1/new/MEALYautomata.vhd2
638@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
kovetkezo_z_reg2y
u/home/edvinest/University/DigiElektro2/mealy_moore_automata/mealy_moore_automata.srcs/sources_1/new/MEALYautomata.vhd2
668@Z8-327h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 2451.105 ; gain = 622.281 ; free physical = 768 ; free virtual = 30470
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
C
%s
*synth2+
)

Incremental Synthesis Report Summary:

h p
x
� 
<
%s
*synth2$
"1. Incremental synthesis run: no

h p
x
� 
�
%s
*synth2z
x   Reason for not running incremental synthesis : synth_design options have changed between reference and incremental


h p
x
� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}4868*oasysZ8-7130h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	                2 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 2     
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   2 Input    2 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   6 Input    2 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input    1 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 3     
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
q
%s
*synth2Y
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
U2/kovetkezo_reg[1]2
MEALYCounterZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
U2/kovetkezo_reg[0]2
MEALYCounterZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
U2/kovetkezo_z_reg2
MEALYCounterZ8-3332h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 2451.105 ; gain = 622.281 ; free physical = 751 ; free virtual = 30456
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:16 ; elapsed = 00:00:16 . Memory (MB): peak = 2451.105 ; gain = 622.281 ; free physical = 761 ; free virtual = 30466
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Timing Optimization : Time (s): cpu = 00:00:16 ; elapsed = 00:00:16 . Memory (MB): peak = 2451.105 ; gain = 622.281 ; free physical = 761 ; free virtual = 30466
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Technology Mapping : Time (s): cpu = 00:00:16 ; elapsed = 00:00:16 . Memory (MB): peak = 2451.105 ; gain = 622.281 ; free physical = 758 ; free virtual = 30463
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished IO Insertion : Time (s): cpu = 00:00:20 ; elapsed = 00:00:20 . Memory (MB): peak = 2451.105 ; gain = 622.281 ; free physical = 762 ; free virtual = 30467
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:20 ; elapsed = 00:00:20 . Memory (MB): peak = 2451.105 ; gain = 622.281 ; free physical = 762 ; free virtual = 30467
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:20 ; elapsed = 00:00:20 . Memory (MB): peak = 2451.105 ; gain = 622.281 ; free physical = 762 ; free virtual = 30467
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:20 ; elapsed = 00:00:20 . Memory (MB): peak = 2451.105 ; gain = 622.281 ; free physical = 762 ; free virtual = 30467
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:20 ; elapsed = 00:00:20 . Memory (MB): peak = 2451.105 ; gain = 622.281 ; free physical = 762 ; free virtual = 30467
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:20 ; elapsed = 00:00:20 . Memory (MB): peak = 2451.105 ; gain = 622.281 ; free physical = 762 ; free virtual = 30467
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|      |Cell   |Count |
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|1     |BUFG   |     1|
h px� 
2
%s*synth2
|2     |CARRY4 |     7|
h px� 
2
%s*synth2
|3     |LUT1   |     1|
h px� 
2
%s*synth2
|4     |LUT2   |    31|
h px� 
2
%s*synth2
|5     |LUT3   |     5|
h px� 
2
%s*synth2
|6     |LUT4   |     2|
h px� 
2
%s*synth2
|7     |LUT6   |     3|
h px� 
2
%s*synth2
|8     |FDRE   |    30|
h px� 
2
%s*synth2
|9     |IBUF   |     2|
h px� 
2
%s*synth2
|10    |OBUF   |     9|
h px� 
2
%s*synth2
+------+-------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:20 ; elapsed = 00:00:20 . Memory (MB): peak = 2451.105 ; gain = 622.281 ; free physical = 762 ; free virtual = 30467
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
`
%s
*synth2H
FSynthesis finished with 0 errors, 0 critical warnings and 6 warnings.
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:00:18 ; elapsed = 00:00:19 . Memory (MB): peak = 2451.105 ; gain = 497.496 ; free physical = 762 ; free virtual = 30467
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:20 ; elapsed = 00:00:20 . Memory (MB): peak = 2451.105 ; gain = 622.281 ; free physical = 762 ; free virtual = 30467
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2451.1052
0.0002
7622
30467Z17-722h px� 
S
-Analyzing %s Unisim elements for replacement
17*netlist2
7Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2451.1052
0.0002
10432
30749Z17-722h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

dccd24d4Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
~
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
322
72
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
synth_design: 2

00:00:262

00:00:242

2451.1052	
928.2892
10432
30749Z17-722h px� 
�
%s peak %s Memory [%s] %s12246*common2
synth_design2

Physical2
PSS2=
;(MB): overall = 1826.736; main = 1497.507; forked = 377.073Z17-2834h px� 
�
%s peak %s Memory [%s] %s12246*common2
synth_design2	
Virtual2
VSS2>
<(MB): overall = 4019.562; main = 2451.074; forked = 1600.504Z17-2834h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write ShapeDB Complete: 2

00:00:002

00:00:002

2475.0822
0.0002
10432
30749Z17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2p
n/home/edvinest/University/DigiElektro2/mealy_moore_automata/mealy_moore_automata.runs/synth_1/MEALYCounter.dcpZ17-1381h px� 
�
%s4*runtcl2p
nExecuting : report_utilization -file MEALYCounter_utilization_synth.rpt -pb MEALYCounter_utilization_synth.pb
h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Thu May 30 15:53:56 2024Z17-206h px� 


End Record