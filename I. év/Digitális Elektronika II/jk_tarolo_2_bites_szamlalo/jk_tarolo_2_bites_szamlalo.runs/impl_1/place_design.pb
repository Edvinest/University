
?
Command: %s
53*	vivadotcl2
place_designZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
Implementation2

xc7a100tZ17-347h px� 
p
0Got license for feature '%s' and/or device '%s'
310*common2
Implementation2

xc7a100tZ17-349h px� 
H
Releasing license: %s
83*common2
ImplementationZ17-83h px� 
>
Running DRC with %s threads
24*drc2
8Z23-27h px� 
D
DRC finished with %s
79*	vivadotcl2

0 ErrorsZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
^
,Running DRC as a precondition to command %s
22*	vivadotcl2
place_designZ4-22h px� 
>
Running DRC with %s threads
24*drc2
8Z23-27h px� 
D
DRC finished with %s
79*	vivadotcl2

0 ErrorsZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
k
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
8Z30-611h px� 
C

Starting %s Task
103*constraints2
PlacerZ18-103h px� 
R

Phase %s%s
101*constraints2
1 2
Placer InitializationZ18-101h px� 
d

Phase %s%s
101*constraints2
1.1 2'
%Placer Initialization Netlist SortingZ18-101h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

3029.4802
0.0002
6742
30447Z17-722h px� 
`
%s*common2G
EPhase 1.1 Placer Initialization Netlist Sorting | Checksum: 4b5de316
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 3029.480 ; gain = 0.000 ; free physical = 674 ; free virtual = 30447h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

3029.4802
0.0002
6742
30447Z17-722h px� 
q

Phase %s%s
101*constraints2
1.2 24
2IO Placement/ Clock Placement/ Build Placer DeviceZ18-101h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
n
%s*common2U
SPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: 149ee3a46
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.38 ; elapsed = 00:00:00.2 . Memory (MB): peak = 3029.480 ; gain = 0.000 ; free physical = 659 ; free virtual = 30433h px� 
Y

Phase %s%s
101*constraints2
1.3 2
Build Placer Netlist ModelZ18-101h px� 
V
%s*common2=
;Phase 1.3 Build Placer Netlist Model | Checksum: 1f7629a14
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.44 ; elapsed = 00:00:00.22 . Memory (MB): peak = 3029.480 ; gain = 0.000 ; free physical = 667 ; free virtual = 30441h px� 
V

Phase %s%s
101*constraints2
1.4 2
Constrain Clocks/MacrosZ18-101h px� 
S
%s*common2:
8Phase 1.4 Constrain Clocks/Macros | Checksum: 1f7629a14
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.45 ; elapsed = 00:00:00.23 . Memory (MB): peak = 3029.480 ; gain = 0.000 ; free physical = 667 ; free virtual = 30441h px� 
O
%s*common26
4Phase 1 Placer Initialization | Checksum: 1f7629a14
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.45 ; elapsed = 00:00:00.23 . Memory (MB): peak = 3029.480 ; gain = 0.000 ; free physical = 666 ; free virtual = 30440h px� 
M

Phase %s%s
101*constraints2
2 2
Global PlacementZ18-101h px� 
L

Phase %s%s
101*constraints2
2.1 2
FloorplanningZ18-101h px� 
I
%s*common20
.Phase 2.1 Floorplanning | Checksum: 1f7629a14
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.45 ; elapsed = 00:00:00.24 . Memory (MB): peak = 3029.480 ; gain = 0.000 ; free physical = 665 ; free virtual = 30439h px� 
`

Phase %s%s
101*constraints2
2.2 2#
!Update Timing before SLR Path OptZ18-101h px� 
]
%s*common2D
BPhase 2.2 Update Timing before SLR Path Opt | Checksum: 1f7629a14
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.45 ; elapsed = 00:00:00.24 . Memory (MB): peak = 3029.480 ; gain = 0.000 ; free physical = 665 ; free virtual = 30439h px� 
_

Phase %s%s
101*constraints2
2.3 2"
 Post-Processing in FloorplanningZ18-101h px� 
\
%s*common2C
APhase 2.3 Post-Processing in Floorplanning | Checksum: 1f7629a14
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.45 ; elapsed = 00:00:00.24 . Memory (MB): peak = 3029.480 ; gain = 0.000 ; free physical = 665 ; free virtual = 30439h px� 
T

Phase %s%s
101*constraints2
2.4 2
Global Placement CoreZ18-101h px� 
�
dTiming had been disabled during Placer and, therefore, physical synthesis in Placer will be skipped.29*	placeflowZ46-29h px� 
Q
%s*common28
6Phase 2.4 Global Placement Core | Checksum: 1e28a6bc4
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.54 . Memory (MB): peak = 3029.480 ; gain = 0.000 ; free physical = 655 ; free virtual = 30429h px� 
J
%s*common21
/Phase 2 Global Placement | Checksum: 1e28a6bc4
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.55 . Memory (MB): peak = 3029.480 ; gain = 0.000 ; free physical = 655 ; free virtual = 30429h px� 
M

Phase %s%s
101*constraints2
3 2
Detail PlacementZ18-101h px� 
Y

Phase %s%s
101*constraints2
3.1 2
Commit Multi Column MacrosZ18-101h px� 
V
%s*common2=
;Phase 3.1 Commit Multi Column Macros | Checksum: 1e28a6bc4
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.56 . Memory (MB): peak = 3029.480 ; gain = 0.000 ; free physical = 655 ; free virtual = 30429h px� 
[

Phase %s%s
101*constraints2
3.2 2
Commit Most Macros & LUTRAMsZ18-101h px� 
X
%s*common2?
=Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 19ba15fc1
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.57 . Memory (MB): peak = 3029.480 ; gain = 0.000 ; free physical = 655 ; free virtual = 30429h px� 
U

Phase %s%s
101*constraints2
3.3 2
Area Swap OptimizationZ18-101h px� 
Q
%s*common28
6Phase 3.3 Area Swap Optimization | Checksum: f2f53b1c
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.58 . Memory (MB): peak = 3029.480 ; gain = 0.000 ; free physical = 655 ; free virtual = 30429h px� 
]

Phase %s%s
101*constraints2
3.4 2 
Pipeline Register OptimizationZ18-101h px� 
Y
%s*common2@
>Phase 3.4 Pipeline Register Optimization | Checksum: f2f53b1c
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.58 . Memory (MB): peak = 3029.480 ; gain = 0.000 ; free physical = 655 ; free virtual = 30429h px� 
[

Phase %s%s
101*constraints2
3.5 2
Small Shape Detail PlacementZ18-101h px� 
X
%s*common2?
=Phase 3.5 Small Shape Detail Placement | Checksum: 103122dce
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.73 . Memory (MB): peak = 3029.480 ; gain = 0.000 ; free physical = 652 ; free virtual = 30426h px� 
Q

Phase %s%s
101*constraints2
3.6 2
Re-assign LUT pinsZ18-101h px� 
N
%s*common25
3Phase 3.6 Re-assign LUT pins | Checksum: 103122dce
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.74 . Memory (MB): peak = 3029.480 ; gain = 0.000 ; free physical = 652 ; free virtual = 30426h px� 
]

Phase %s%s
101*constraints2
3.7 2 
Pipeline Register OptimizationZ18-101h px� 
Z
%s*common2A
?Phase 3.7 Pipeline Register Optimization | Checksum: 103122dce
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.74 . Memory (MB): peak = 3029.480 ; gain = 0.000 ; free physical = 652 ; free virtual = 30426h px� 
J
%s*common21
/Phase 3 Detail Placement | Checksum: 103122dce
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.74 . Memory (MB): peak = 3029.480 ; gain = 0.000 ; free physical = 652 ; free virtual = 30426h px� 
e

Phase %s%s
101*constraints2
4 2*
(Post Placement Optimization and Clean-UpZ18-101h px� 
W

Phase %s%s
101*constraints2
4.1 2
Post Commit OptimizationZ18-101h px� 
T
%s*common2;
9Phase 4.1 Post Commit Optimization | Checksum: 103122dce
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:03 ; elapsed = 00:00:00.79 . Memory (MB): peak = 3029.480 ; gain = 0.000 ; free physical = 651 ; free virtual = 30425h px� 
U

Phase %s%s
101*constraints2
4.2 2
Post Placement CleanupZ18-101h px� 
R
%s*common29
7Phase 4.2 Post Placement Cleanup | Checksum: 103122dce
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:03 ; elapsed = 00:00:00.8 . Memory (MB): peak = 3029.480 ; gain = 0.000 ; free physical = 651 ; free virtual = 30425h px� 
O

Phase %s%s
101*constraints2
4.3 2
Placer ReportingZ18-101h px� 
[

Phase %s%s
101*constraints2
4.3.1 2
Print Estimated CongestionZ18-101h px� 
�
'Post-Placement Estimated Congestion %s
38*	placeflow2�
�
 ____________________________________________________
|           | Global Congestion | Short Congestion  |
| Direction | Region Size       | Region Size       |
|___________|___________________|___________________|
|      North|                1x1|                1x1|
|___________|___________________|___________________|
|      South|                1x1|                1x1|
|___________|___________________|___________________|
|       East|                1x1|                1x1|
|___________|___________________|___________________|
|       West|                1x1|                1x1|
|___________|___________________|___________________|
Z30-612h px� 
X
%s*common2?
=Phase 4.3.1 Print Estimated Congestion | Checksum: 103122dce
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:03 ; elapsed = 00:00:00.8 . Memory (MB): peak = 3029.480 ; gain = 0.000 ; free physical = 651 ; free virtual = 30425h px� 
L
%s*common23
1Phase 4.3 Placer Reporting | Checksum: 103122dce
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:03 ; elapsed = 00:00:00.8 . Memory (MB): peak = 3029.480 ; gain = 0.000 ; free physical = 651 ; free virtual = 30425h px� 
V

Phase %s%s
101*constraints2
4.4 2
Final Placement CleanupZ18-101h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

3029.4802
0.0002
6512
30425Z17-722h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:03 ; elapsed = 00:00:00.81 . Memory (MB): peak = 3029.480 ; gain = 0.000 ; free physical = 651 ; free virtual = 30425h px� 
a
%s*common2H
FPhase 4 Post Placement Optimization and Clean-Up | Checksum: 824abb3c
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:03 ; elapsed = 00:00:00.81 . Memory (MB): peak = 3029.480 ; gain = 0.000 ; free physical = 651 ; free virtual = 30425h px� 
C
%s*common2*
(Ending Placer Task | Checksum: 4384f8d7
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:03 ; elapsed = 00:00:00.81 . Memory (MB): peak = 3029.480 ; gain = 0.000 ; free physical = 651 ; free virtual = 30425h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
442
102
92
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
place_designZ4-42h px� 
Y
%s4*runtcl2=
;Executing : report_io -file counter_ThreeBit_io_placed.rpt
h px� 
�
�report_io: Time (s): cpu = 00:00:00.06 ; elapsed = 00:00:00.14 . Memory (MB): peak = 3029.480 ; gain = 0.000 ; free physical = 640 ; free virtual = 30414
*commonh px� 
�
%s4*runtcl2z
xExecuting : report_utilization -file counter_ThreeBit_utilization_placed.rpt -pb counter_ThreeBit_utilization_placed.pb
h px� 
v
%s4*runtcl2Z
XExecuting : report_control_sets -verbose -file counter_ThreeBit_control_sets_placed.rpt
h px� 
�
�report_control_sets: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.07 . Memory (MB): peak = 3029.480 ; gain = 0.000 ; free physical = 639 ; free virtual = 30413
*commonh px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write ShapeDB Complete: 2
00:00:00.012

00:00:002

3029.4802
0.0002
6392
30413Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote PlaceDB: 2
00:00:00.022
00:00:00.012

3029.4802
0.0002
6392
30413Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote PulsedLatchDB: 2

00:00:002

00:00:002

3029.4802
0.0002
6392
30413Z17-722h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote RouteStorage: 2
00:00:00.032
00:00:00.012

3029.4802
0.0002
6392
30413Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote Netlist Cache: 2

00:00:002

00:00:002

3029.4802
0.0002
6392
30413Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote Device Cache: 2
00:00:00.012
00:00:00.012

3029.4802
0.0002
6392
30414Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write Physdb Complete: 2
00:00:00.072
00:00:00.032

3029.4802
0.0002
6392
30414Z17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2�
�/home/edvinest/University/DigiElektro2/jk_tarolo_2_bites_szamlalo/jk_tarolo_2_bites_szamlalo.runs/impl_1/counter_ThreeBit_placed.dcpZ17-1381h px� 


End Record