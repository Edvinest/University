
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
create_project: 2

00:00:052

00:00:052

1478.4262
18.8362
20162
32009Z17-722h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental /home/edvinest/University/DigiElektro2/vizsga_CB_automata/vizsga_CB_automata.srcs/utils_1/imports/synth_1/CB_automata.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2{
y/home/edvinest/University/DigiElektro2/vizsga_CB_automata/vizsga_CB_automata.srcs/utils_1/imports/synth_1/CB_automata.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
g
Command: %s
53*	vivadotcl26
4synth_design -top CB_automata -part xc7a100tcsg324-1Z4-113h px� 
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
E
Loading part %s157*device2
xc7a100tcsg324-1Z21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
4Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
N
#Helper process launched with PID %s4824*oasys2
22253Z8-7075h px� 
�
%s*synth2�
�Starting RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 2234.086 ; gain = 405.715 ; free physical = 1086 ; free virtual = 31030
h px� 
�
synthesizing module '%s'638*oasys2
CB_automata2s
o/home/edvinest/University/DigiElektro2/vizsga_CB_automata/vizsga_CB_automata.srcs/sources_1/new/CB_automata.vhd2
418@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	clock_1Hz2�
�/home/edvinest/University/DigiElektro2/vizsga_CB_automata/vizsga_CB_automata.srcs/sources_1/imports/imports/DigiElektro2/clock_1Hz/clock_1Hz.srcs/sources_1/new/clock_1Hz.vhd2
362
U12
	clock_1Hz2s
o/home/edvinest/University/DigiElektro2/vizsga_CB_automata/vizsga_CB_automata.srcs/sources_1/new/CB_automata.vhd2
948@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
	clock_1Hz2�
�/home/edvinest/University/DigiElektro2/vizsga_CB_automata/vizsga_CB_automata.srcs/sources_1/imports/imports/DigiElektro2/clock_1Hz/clock_1Hz.srcs/sources_1/new/clock_1Hz.vhd2
428@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	clock_1Hz2
02
12�
�/home/edvinest/University/DigiElektro2/vizsga_CB_automata/vizsga_CB_automata.srcs/sources_1/imports/imports/DigiElektro2/clock_1Hz/clock_1Hz.srcs/sources_1/new/clock_1Hz.vhd2
428@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
CB4CLE2�
�/home/edvinest/University/DigiElektro2/vizsga_CB_automata/vizsga_CB_automata.srcs/sources_1/imports/imports/Downloads/cb4cle.vhd2
262
U22
CB4CLE2s
o/home/edvinest/University/DigiElektro2/vizsga_CB_automata/vizsga_CB_automata.srcs/sources_1/new/CB_automata.vhd2
958@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
CB4CLE2�
�/home/edvinest/University/DigiElektro2/vizsga_CB_automata/vizsga_CB_automata.srcs/sources_1/imports/imports/Downloads/cb4cle.vhd2
458@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
CB4CLE2
02
12�
�/home/edvinest/University/DigiElektro2/vizsga_CB_automata/vizsga_CB_automata.srcs/sources_1/imports/imports/Downloads/cb4cle.vhd2
458@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	CB_logika2o
m/home/edvinest/University/DigiElektro2/vizsga_CB_automata/vizsga_CB_automata.srcs/sources_1/new/CB_logika.vhd2
342
U32
	CB_logika2s
o/home/edvinest/University/DigiElektro2/vizsga_CB_automata/vizsga_CB_automata.srcs/sources_1/new/CB_automata.vhd2
968@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
	CB_logika2q
m/home/edvinest/University/DigiElektro2/vizsga_CB_automata/vizsga_CB_automata.srcs/sources_1/new/CB_logika.vhd2
488@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	CB_logika2
02
12q
m/home/edvinest/University/DigiElektro2/vizsga_CB_automata/vizsga_CB_automata.srcs/sources_1/new/CB_logika.vhd2
488@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
hex_display2�
�/home/edvinest/University/DigiElektro2/vizsga_CB_automata/vizsga_CB_automata.srcs/sources_1/imports/imports/DigiElektro2/hex_display/hex_display.srcs/sources_1/new/hex_display.vhd2
342
U42
hex_display2s
o/home/edvinest/University/DigiElektro2/vizsga_CB_automata/vizsga_CB_automata.srcs/sources_1/new/CB_automata.vhd2
978@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
hex_display2�
�/home/edvinest/University/DigiElektro2/vizsga_CB_automata/vizsga_CB_automata.srcs/sources_1/imports/imports/DigiElektro2/hex_display/hex_display.srcs/sources_1/new/hex_display.vhd2
428@Z8-638h px� 
�
default block is never used226*oasys2�
�/home/edvinest/University/DigiElektro2/vizsga_CB_automata/vizsga_CB_automata.srcs/sources_1/imports/imports/DigiElektro2/hex_display/hex_display.srcs/sources_1/new/hex_display.vhd2
558@Z8-226h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
val2�
�/home/edvinest/University/DigiElektro2/vizsga_CB_automata/vizsga_CB_automata.srcs/sources_1/imports/imports/DigiElektro2/hex_display/hex_display.srcs/sources_1/new/hex_display.vhd2
488@Z8-614h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
hex_display2
02
12�
�/home/edvinest/University/DigiElektro2/vizsga_CB_automata/vizsga_CB_automata.srcs/sources_1/imports/imports/DigiElektro2/hex_display/hex_display.srcs/sources_1/new/hex_display.vhd2
428@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
CB_automata2
02
12s
o/home/edvinest/University/DigiElektro2/vizsga_CB_automata/vizsga_CB_automata.srcs/sources_1/new/CB_automata.vhd2
418@Z8-256h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
CLR2
	CB_logika2q
m/home/edvinest/University/DigiElektro2/vizsga_CB_automata/vizsga_CB_automata.srcs/sources_1/new/CB_logika.vhd2
458@Z8-3848h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2
CLR2
	CB_logikaZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2
a2
	CB_logikaZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2
b2
	CB_logikaZ8-7129h px� 
�
%s*synth2�
�Finished RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 2309.023 ; gain = 480.652 ; free physical = 983 ; free virtual = 30928
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 2326.836 ; gain = 498.465 ; free physical = 983 ; free virtual = 30928
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
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 2326.836 ; gain = 498.465 ; free physical = 983 ; free virtual = 30928
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

2326.8362
0.0002
9832
30928Z17-722h px� 
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
179*designutils2s
o/home/edvinest/University/DigiElektro2/vizsga_CB_automata/vizsga_CB_automata.srcs/constrs_1/new/CB_automata.xdc8Z20-179h px� 
�
No ports matched '%s'.
584*	planAhead2
a]2s
o/home/edvinest/University/DigiElektro2/vizsga_CB_automata/vizsga_CB_automata.srcs/constrs_1/new/CB_automata.xdc2
38@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2s
o/home/edvinest/University/DigiElektro2/vizsga_CB_automata/vizsga_CB_automata.srcs/constrs_1/new/CB_automata.xdc2
38@Z17-55h px�
�
Finished Parsing XDC File [%s]
178*designutils2s
o/home/edvinest/University/DigiElektro2/vizsga_CB_automata/vizsga_CB_automata.srcs/constrs_1/new/CB_automata.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2q
o/home/edvinest/University/DigiElektro2/vizsga_CB_automata/vizsga_CB_automata.srcs/constrs_1/new/CB_automata.xdc2
.Xil/CB_automata_propImpl.xdcZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2446.5862
0.0002
9802
30924Z17-722h px� 
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

2446.6212
0.0002
9802
30924Z17-722h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Constraint Validation : Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 2446.621 ; gain = 618.250 ; free physical = 979 ; free virtual = 30923
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
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 2446.621 ; gain = 618.250 ; free physical = 979 ; free virtual = 30923
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
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 2446.621 ; gain = 618.250 ; free physical = 979 ; free virtual = 30923
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
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 2446.621 ; gain = 618.250 ; free physical = 977 ; free virtual = 30922
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
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit       Adders := 1     
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
.	                4 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 1     
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
,	   2 Input    4 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 1     
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
o
9Port %s in module %s is either unconnected or has no load4866*oasys2
a2
CB_automataZ8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2
b2
CB_automataZ8-7129h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:12 ; elapsed = 00:00:12 . Memory (MB): peak = 2446.621 ; gain = 618.250 ; free physical = 969 ; free virtual = 30919
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
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:16 ; elapsed = 00:00:16 . Memory (MB): peak = 2446.621 ; gain = 618.250 ; free physical = 969 ; free virtual = 30918
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
�Finished Timing Optimization : Time (s): cpu = 00:00:16 ; elapsed = 00:00:16 . Memory (MB): peak = 2446.621 ; gain = 618.250 ; free physical = 969 ; free virtual = 30918
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
�Finished Technology Mapping : Time (s): cpu = 00:00:16 ; elapsed = 00:00:16 . Memory (MB): peak = 2446.621 ; gain = 618.250 ; free physical = 969 ; free virtual = 30918
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
�Finished IO Insertion : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 2446.621 ; gain = 618.250 ; free physical = 974 ; free virtual = 30923
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
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 2446.621 ; gain = 618.250 ; free physical = 974 ; free virtual = 30923
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
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 2446.621 ; gain = 618.250 ; free physical = 974 ; free virtual = 30923
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
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 2446.621 ; gain = 618.250 ; free physical = 974 ; free virtual = 30923
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 2446.621 ; gain = 618.250 ; free physical = 974 ; free virtual = 30923
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
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 2446.621 ; gain = 618.250 ; free physical = 974 ; free virtual = 30923
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
|3     |LUT2   |    28|
h px� 
2
%s*synth2
|4     |LUT3   |    12|
h px� 
2
%s*synth2
|5     |LUT4   |     2|
h px� 
2
%s*synth2
|6     |LUT6   |     3|
h px� 
2
%s*synth2
|7     |FDRE   |    30|
h px� 
2
%s*synth2
|8     |IBUF   |     1|
h px� 
2
%s*synth2
|9     |OBUF   |     8|
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
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 2446.621 ; gain = 618.250 ; free physical = 974 ; free virtual = 30923
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
FSynthesis finished with 0 errors, 0 critical warnings and 3 warnings.
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:00:18 ; elapsed = 00:00:18 . Memory (MB): peak = 2446.621 ; gain = 498.465 ; free physical = 974 ; free virtual = 30923
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 2446.621 ; gain = 618.250 ; free physical = 974 ; free virtual = 30923
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

2446.6212
0.0002
9742
30923Z17-722h px� 
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

2446.6212
0.0002
11892
31138Z17-722h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

7efd34f3Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
~
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
362
92
12
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
synth_design: 2

00:00:252

00:00:232

2446.6212	
964.2272
11892
31138Z17-722h px� 
�
%s peak %s Memory [%s] %s12246*common2
synth_design2

Physical2
PSS2=
;(MB): overall = 1793.808; main = 1478.668; forked = 376.979Z17-2834h px� 
�
%s peak %s Memory [%s] %s12246*common2
synth_design2	
Virtual2
VSS2>
<(MB): overall = 4015.074; main = 2446.590; forked = 1600.500Z17-2834h px� 
c
%s6*runtcl2G
ESynthesis results are not added to the cache due to CRITICAL_WARNING
h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.012

2470.5982
0.0002
11892
31138Z17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2k
i/home/edvinest/University/DigiElektro2/vizsga_CB_automata/vizsga_CB_automata.runs/synth_1/CB_automata.dcpZ17-1381h px� 
�
%s4*runtcl2n
lExecuting : report_utilization -file CB_automata_utilization_synth.rpt -pb CB_automata_utilization_synth.pb
h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Thu Jun  6 16:29:32 2024Z17-206h px� 


End Record