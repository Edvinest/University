
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
create_project: 2

00:00:052

00:00:052

1523.3012
0.0232
54212
33139Z17-722h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental /home/edvinest/University/DigiElektro2/aritmetikai_aramkorok/aritmetikai_aramkorok.srcs/utils_1/imports/synth_1/felosszado.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2�
~/home/edvinest/University/DigiElektro2/aritmetikai_aramkorok/aritmetikai_aramkorok.srcs/utils_1/imports/synth_1/felosszado.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
f
Command: %s
53*	vivadotcl25
3synth_design -top pclnegybit -part xc7a100tcsg324-1Z4-113h px� 
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
M
#Helper process launched with PID %s4824*oasys2
8260Z8-7075h px� 
�
%s*synth2�
�Starting RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 2233.086 ; gain = 401.746 ; free physical = 4384 ; free virtual = 32138
h px� 
�
synthesizing module '%s'638*oasys2

pclnegybit2x
t/home/edvinest/University/DigiElektro2/aritmetikai_aramkorok/aritmetikai_aramkorok.srcs/sources_1/new/pclnegybit.vhd2
498@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

gposszeado2v
t/home/edvinest/University/DigiElektro2/aritmetikai_aramkorok/aritmetikai_aramkorok.srcs/sources_1/new/gposszeado.vhd2
342
U12

gposszeado2x
t/home/edvinest/University/DigiElektro2/aritmetikai_aramkorok/aritmetikai_aramkorok.srcs/sources_1/new/pclnegybit.vhd2
778@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2

gposszeado2x
t/home/edvinest/University/DigiElektro2/aritmetikai_aramkorok/aritmetikai_aramkorok.srcs/sources_1/new/gposszeado.vhd2
438@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

gposszeado2
02
12x
t/home/edvinest/University/DigiElektro2/aritmetikai_aramkorok/aritmetikai_aramkorok.srcs/sources_1/new/gposszeado.vhd2
438@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

gposszeado2v
t/home/edvinest/University/DigiElektro2/aritmetikai_aramkorok/aritmetikai_aramkorok.srcs/sources_1/new/gposszeado.vhd2
342
U22

gposszeado2x
t/home/edvinest/University/DigiElektro2/aritmetikai_aramkorok/aritmetikai_aramkorok.srcs/sources_1/new/pclnegybit.vhd2
788@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

gposszeado2v
t/home/edvinest/University/DigiElektro2/aritmetikai_aramkorok/aritmetikai_aramkorok.srcs/sources_1/new/gposszeado.vhd2
342
U32

gposszeado2x
t/home/edvinest/University/DigiElektro2/aritmetikai_aramkorok/aritmetikai_aramkorok.srcs/sources_1/new/pclnegybit.vhd2
798@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

gposszeado2v
t/home/edvinest/University/DigiElektro2/aritmetikai_aramkorok/aritmetikai_aramkorok.srcs/sources_1/new/gposszeado.vhd2
342
U42

gposszeado2x
t/home/edvinest/University/DigiElektro2/aritmetikai_aramkorok/aritmetikai_aramkorok.srcs/sources_1/new/pclnegybit.vhd2
808@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
pclosszeado2w
u/home/edvinest/University/DigiElektro2/aritmetikai_aramkorok/aritmetikai_aramkorok.srcs/sources_1/new/pclosszeado.vhd2
342
U52
pclosszeado2x
t/home/edvinest/University/DigiElektro2/aritmetikai_aramkorok/aritmetikai_aramkorok.srcs/sources_1/new/pclnegybit.vhd2
818@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
pclosszeado2y
u/home/edvinest/University/DigiElektro2/aritmetikai_aramkorok/aritmetikai_aramkorok.srcs/sources_1/new/pclosszeado.vhd2
488@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pclosszeado2
02
12y
u/home/edvinest/University/DigiElektro2/aritmetikai_aramkorok/aritmetikai_aramkorok.srcs/sources_1/new/pclosszeado.vhd2
488@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

pclnegybit2
02
12x
t/home/edvinest/University/DigiElektro2/aritmetikai_aramkorok/aritmetikai_aramkorok.srcs/sources_1/new/pclnegybit.vhd2
498@Z8-256h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2
b22

pclnegybitZ8-7129h px� 
�
%s*synth2�
�Finished RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 2308.023 ; gain = 476.684 ; free physical = 4282 ; free virtual = 32039
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 2325.836 ; gain = 494.496 ; free physical = 4282 ; free virtual = 32039
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
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 2325.836 ; gain = 494.496 ; free physical = 4282 ; free virtual = 32039
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

2325.8362
0.0002
42822
32039Z17-722h px� 
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
179*designutils2y
u/home/edvinest/University/DigiElektro2/aritmetikai_aramkorok/aritmetikai_aramkorok.srcs/constrs_1/new/felosszeado.xdc8Z20-179h px� 
�
No ports matched '%s'.
584*	planAhead2
a2y
u/home/edvinest/University/DigiElektro2/aritmetikai_aramkorok/aritmetikai_aramkorok.srcs/constrs_1/new/felosszeado.xdc2
28@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2y
u/home/edvinest/University/DigiElektro2/aritmetikai_aramkorok/aritmetikai_aramkorok.srcs/constrs_1/new/felosszeado.xdc2
28@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
b2y
u/home/edvinest/University/DigiElektro2/aritmetikai_aramkorok/aritmetikai_aramkorok.srcs/constrs_1/new/felosszeado.xdc2
38@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2y
u/home/edvinest/University/DigiElektro2/aritmetikai_aramkorok/aritmetikai_aramkorok.srcs/constrs_1/new/felosszeado.xdc2
38@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
s2y
u/home/edvinest/University/DigiElektro2/aritmetikai_aramkorok/aritmetikai_aramkorok.srcs/constrs_1/new/felosszeado.xdc2
68@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2y
u/home/edvinest/University/DigiElektro2/aritmetikai_aramkorok/aritmetikai_aramkorok.srcs/constrs_1/new/felosszeado.xdc2
68@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
Cy2y
u/home/edvinest/University/DigiElektro2/aritmetikai_aramkorok/aritmetikai_aramkorok.srcs/constrs_1/new/felosszeado.xdc2
78@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2y
u/home/edvinest/University/DigiElektro2/aritmetikai_aramkorok/aritmetikai_aramkorok.srcs/constrs_1/new/felosszeado.xdc2
78@Z17-55h px�
�
Finished Parsing XDC File [%s]
178*designutils2y
u/home/edvinest/University/DigiElektro2/aritmetikai_aramkorok/aritmetikai_aramkorok.srcs/constrs_1/new/felosszeado.xdc8Z20-178h px� 
�
Parsing XDC File [%s]
179*designutils2}
y/home/edvinest/University/DigiElektro2/aritmetikai_aramkorok/aritmetikai_aramkorok.srcs/constrs_1/new/teljes_osszeado.xdc8Z20-179h px� 
�
No ports matched '%s'.
584*	planAhead2
a2}
y/home/edvinest/University/DigiElektro2/aritmetikai_aramkorok/aritmetikai_aramkorok.srcs/constrs_1/new/teljes_osszeado.xdc2
28@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2}
y/home/edvinest/University/DigiElektro2/aritmetikai_aramkorok/aritmetikai_aramkorok.srcs/constrs_1/new/teljes_osszeado.xdc2
28@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
b2}
y/home/edvinest/University/DigiElektro2/aritmetikai_aramkorok/aritmetikai_aramkorok.srcs/constrs_1/new/teljes_osszeado.xdc2
38@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2}
y/home/edvinest/University/DigiElektro2/aritmetikai_aramkorok/aritmetikai_aramkorok.srcs/constrs_1/new/teljes_osszeado.xdc2
38@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
Cin2}
y/home/edvinest/University/DigiElektro2/aritmetikai_aramkorok/aritmetikai_aramkorok.srcs/constrs_1/new/teljes_osszeado.xdc2
48@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2}
y/home/edvinest/University/DigiElektro2/aritmetikai_aramkorok/aritmetikai_aramkorok.srcs/constrs_1/new/teljes_osszeado.xdc2
48@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
S2}
y/home/edvinest/University/DigiElektro2/aritmetikai_aramkorok/aritmetikai_aramkorok.srcs/constrs_1/new/teljes_osszeado.xdc2
78@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2}
y/home/edvinest/University/DigiElektro2/aritmetikai_aramkorok/aritmetikai_aramkorok.srcs/constrs_1/new/teljes_osszeado.xdc2
78@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
Cy2}
y/home/edvinest/University/DigiElektro2/aritmetikai_aramkorok/aritmetikai_aramkorok.srcs/constrs_1/new/teljes_osszeado.xdc2
88@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2}
y/home/edvinest/University/DigiElektro2/aritmetikai_aramkorok/aritmetikai_aramkorok.srcs/constrs_1/new/teljes_osszeado.xdc2
88@Z17-55h px�
�
Finished Parsing XDC File [%s]
178*designutils2}
y/home/edvinest/University/DigiElektro2/aritmetikai_aramkorok/aritmetikai_aramkorok.srcs/constrs_1/new/teljes_osszeado.xdc8Z20-178h px� 
�
Parsing XDC File [%s]
179*designutils2
{/home/edvinest/University/DigiElektro2/aritmetikai_aramkorok/aritmetikai_aramkorok.srcs/constrs_1/new/negybitesosszeado.xdc8Z20-179h px� 
�
No ports matched '%s'.
584*	planAhead2
S42
{/home/edvinest/University/DigiElektro2/aritmetikai_aramkorok/aritmetikai_aramkorok.srcs/constrs_1/new/negybitesosszeado.xdc2
168@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2
{/home/edvinest/University/DigiElektro2/aritmetikai_aramkorok/aritmetikai_aramkorok.srcs/constrs_1/new/negybitesosszeado.xdc2
168@Z17-55h px�
�
Finished Parsing XDC File [%s]
178*designutils2
{/home/edvinest/University/DigiElektro2/aritmetikai_aramkorok/aritmetikai_aramkorok.srcs/constrs_1/new/negybitesosszeado.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2}
{/home/edvinest/University/DigiElektro2/aritmetikai_aramkorok/aritmetikai_aramkorok.srcs/constrs_1/new/negybitesosszeado.xdc2
.Xil/pclnegybit_propImpl.xdcZ1-236h px� 
�
Parsing XDC File [%s]
179*designutils2x
t/home/edvinest/University/DigiElektro2/aritmetikai_aramkorok/aritmetikai_aramkorok.srcs/constrs_1/new/plcnegybit.xdc8Z20-179h px� 
�
No ports matched '%s'.
584*	planAhead2
S42x
t/home/edvinest/University/DigiElektro2/aritmetikai_aramkorok/aritmetikai_aramkorok.srcs/constrs_1/new/plcnegybit.xdc2
148@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2x
t/home/edvinest/University/DigiElektro2/aritmetikai_aramkorok/aritmetikai_aramkorok.srcs/constrs_1/new/plcnegybit.xdc2
148@Z17-55h px�
�
Finished Parsing XDC File [%s]
178*designutils2x
t/home/edvinest/University/DigiElektro2/aritmetikai_aramkorok/aritmetikai_aramkorok.srcs/constrs_1/new/plcnegybit.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2v
t/home/edvinest/University/DigiElektro2/aritmetikai_aramkorok/aritmetikai_aramkorok.srcs/constrs_1/new/plcnegybit.xdc2
.Xil/pclnegybit_propImpl.xdcZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2471.5862
0.0002
42512
32020Z17-722h px� 
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

2471.6212
0.0002
42582
32027Z17-722h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Constraint Validation : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 2471.621 ; gain = 640.281 ; free physical = 4282 ; free virtual = 32052
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
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 2471.621 ; gain = 640.281 ; free physical = 4282 ; free virtual = 32052
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
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 2471.621 ; gain = 640.281 ; free physical = 4282 ; free virtual = 32052
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
�Finished Doing Graph Differ : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 2471.621 ; gain = 640.281 ; free physical = 4282 ; free virtual = 32052
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
�Finished Preparing Guide Design : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 2471.621 ; gain = 640.281 ; free physical = 4282 ; free virtual = 32052
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
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 2471.621 ; gain = 640.281 ; free physical = 4282 ; free virtual = 32052
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
&
%s
*synth2
+---XORs : 
h p
x
� 
H
%s
*synth20
.	   2 Input      1 Bit         XORs := 8     
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
9Port %s in module %s is either unconnected or has no load4866*oasys2
b22

pclnegybitZ8-7129h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 2471.621 ; gain = 640.281 ; free physical = 4258 ; free virtual = 32033
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
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:15 ; elapsed = 00:00:15 . Memory (MB): peak = 2471.621 ; gain = 640.281 ; free physical = 4250 ; free virtual = 32033
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
�Finished Timing Optimization : Time (s): cpu = 00:00:15 ; elapsed = 00:00:15 . Memory (MB): peak = 2471.621 ; gain = 640.281 ; free physical = 4250 ; free virtual = 32033
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
�Finished Technology Mapping : Time (s): cpu = 00:00:15 ; elapsed = 00:00:15 . Memory (MB): peak = 2471.621 ; gain = 640.281 ; free physical = 4250 ; free virtual = 32033
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
�Finished IO Insertion : Time (s): cpu = 00:00:18 ; elapsed = 00:00:19 . Memory (MB): peak = 2471.621 ; gain = 640.281 ; free physical = 4250 ; free virtual = 32033
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
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:18 ; elapsed = 00:00:19 . Memory (MB): peak = 2471.621 ; gain = 640.281 ; free physical = 4250 ; free virtual = 32033
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
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:18 ; elapsed = 00:00:19 . Memory (MB): peak = 2471.621 ; gain = 640.281 ; free physical = 4250 ; free virtual = 32033
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
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:18 ; elapsed = 00:00:19 . Memory (MB): peak = 2471.621 ; gain = 640.281 ; free physical = 4250 ; free virtual = 32033
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:18 ; elapsed = 00:00:19 . Memory (MB): peak = 2471.621 ; gain = 640.281 ; free physical = 4250 ; free virtual = 32033
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
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:18 ; elapsed = 00:00:19 . Memory (MB): peak = 2471.621 ; gain = 640.281 ; free physical = 4250 ; free virtual = 32033
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
0
%s*synth2
+------+-----+------+
h px� 
0
%s*synth2
|      |Cell |Count |
h px� 
0
%s*synth2
+------+-----+------+
h px� 
0
%s*synth2
|1     |LUT2 |     1|
h px� 
0
%s*synth2
|2     |LUT4 |     2|
h px� 
0
%s*synth2
|3     |LUT6 |     2|
h px� 
0
%s*synth2
|4     |IBUF |     7|
h px� 
0
%s*synth2
|5     |OBUF |     4|
h px� 
0
%s*synth2
+------+-----+------+
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
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:18 ; elapsed = 00:00:19 . Memory (MB): peak = 2471.621 ; gain = 640.281 ; free physical = 4250 ; free virtual = 32033
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
FSynthesis finished with 0 errors, 0 critical warnings and 2 warnings.
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:00:17 ; elapsed = 00:00:18 . Memory (MB): peak = 2471.621 ; gain = 494.496 ; free physical = 4250 ; free virtual = 32033
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:19 ; elapsed = 00:00:19 . Memory (MB): peak = 2471.621 ; gain = 640.281 ; free physical = 4250 ; free virtual = 32033
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

2471.6212
0.0002
42502
32033Z17-722h px� 
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

2471.6212
0.0002
45532
32336Z17-722h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

83071377Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
292
142
112
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
synth_design: 2

00:00:242

00:00:222

2471.6212	
948.3202
45522
32335Z17-722h px� 
�
%s peak %s Memory [%s] %s12246*common2
synth_design2

Physical2
PSS2=
;(MB): overall = 1797.884; main = 1497.341; forked = 377.048Z17-2834h px� 
�
%s peak %s Memory [%s] %s12246*common2
synth_design2	
Virtual2
VSS2>
<(MB): overall = 4040.074; main = 2471.590; forked = 1600.500Z17-2834h px� 
c
%s6*runtcl2G
ESynthesis results are not added to the cache due to CRITICAL_WARNING
h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write ShapeDB Complete: 2

00:00:002

00:00:002

2495.5982
0.0002
45522
32335Z17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2p
n/home/edvinest/University/DigiElektro2/aritmetikai_aramkorok/aritmetikai_aramkorok.runs/synth_1/pclnegybit.dcpZ17-1381h px� 
�
%s4*runtcl2l
jExecuting : report_utilization -file pclnegybit_utilization_synth.rpt -pb pclnegybit_utilization_synth.pb
h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Thu Mar 14 08:25:57 2024Z17-206h px� 


End Record