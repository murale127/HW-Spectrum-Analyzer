
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2$
create_project: 2default:default2
00:00:042default:default2
00:00:062default:default2
2139.2732default:default2
4.0272default:default2
16052default:default2
55652default:defaultZ17-722h px� 
>
Refreshing IP repositories
234*coregenZ19-234h px� 
�
 Loaded user IP repository '%s'.
1135*coregen2a
M/home/arjunmenonv/Arjun_acads/Year3/CompOrg/HW-Spectrum-Analyzer/SpecAnalv2.92default:defaultZ19-1700h px� 
�
�If you move the project, the path for repository '%s' may become invalid. A better location for the repostory would be in a path adjacent to the project. (Current project location is '%s'.)1680*coregen2a
M/home/arjunmenonv/Arjun_acads/Year3/CompOrg/HW-Spectrum-Analyzer/SpecAnalv2.92default:default2�
�/home/arjunmenonv/Arjun_acads/Year3/CompOrg/HW-Spectrum-Analyzer/SpecAnalv2.9/FFT32v2.9_axis/FFT32v2.9_axis.runs/lite_32F_counter_0_0_synth_12default:defaultZ19-3656h px� 
�
"Loaded Vivado IP repository '%s'.
1332*coregen27
#/tools/Xilinx/Vivado/2020.1/data/ip2default:defaultZ19-2313h px� 
�
Command: %s
53*	vivadotcl2e
Qsynth_design -top lite_32F_counter_0_0 -part xc7z020clg400-1 -mode out_of_context2default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-349h px� 
V
Loading part %s157*device2#
xc7z020clg400-12default:defaultZ21-403h px� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
42default:defaultZ8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
`
#Helper process launched with PID %s4824*oasys2
175272default:defaultZ8-7075h px� 
�
%s*synth2�
�Starting RTL Elaboration : Time (s): cpu = 00:00:09 ; elapsed = 00:00:25 . Memory (MB): peak = 2139.402 ; gain = 0.000 ; free physical = 1136 ; free virtual = 3883
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2(
lite_32F_counter_0_02default:default2
 2default:default2�
�/home/arjunmenonv/Arjun_acads/Year3/CompOrg/HW-Spectrum-Analyzer/SpecAnalv2.9/FFT32v2.9_axis/FFT32v2.9_axis.srcs/sources_1/bd/lite_32F/ip/lite_32F_counter_0_0/synth/lite_32F_counter_0_0.v2default:default2
582default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
counter2default:default2
 2default:default2�
�/home/arjunmenonv/Arjun_acads/Year3/CompOrg/HW-Spectrum-Analyzer/SpecAnalv2.9/FFT32v2.9_axis/FFT32v2.9_axis.srcs/sources_1/bd/lite_32F/ipshared/8640/hdl/verilog/counter.v2default:default2
122default:default8@Z8-6157h px� 
X
%s
*synth2@
,	Parameter ap_ST_fsm_state1 bound to: 1'b1 
2default:defaulth p
x
� 
q
%s
*synth2Y
E	Parameter C_S_AXI_AXILITES_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
p
%s
*synth2X
D	Parameter C_S_AXI_AXILITES_ADDR_WIDTH bound to: 5 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter C_S_AXI_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
q
%s
*synth2Y
E	Parameter C_S_AXI_AXILITES_WSTRB_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter C_S_AXI_WSTRB_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2*
counter_AXILiteS_s_axi2default:default2
 2default:default2�
�/home/arjunmenonv/Arjun_acads/Year3/CompOrg/HW-Spectrum-Analyzer/SpecAnalv2.9/FFT32v2.9_axis/FFT32v2.9_axis.srcs/sources_1/bd/lite_32F/ipshared/8640/hdl/verilog/counter_AXILiteS_s_axi.v2default:default2
62default:default8@Z8-6157h px� 
g
%s
*synth2O
;	Parameter C_S_AXI_ADDR_WIDTH bound to: 5 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter C_S_AXI_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
X
%s
*synth2@
,	Parameter ADDR_AP_CTRL bound to: 5'b00000 
2default:defaulth p
x
� 
T
%s
*synth2<
(	Parameter ADDR_GIE bound to: 5'b00100 
2default:defaulth p
x
� 
T
%s
*synth2<
(	Parameter ADDR_IER bound to: 5'b01000 
2default:defaulth p
x
� 
T
%s
*synth2<
(	Parameter ADDR_ISR bound to: 5'b01100 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter ADDR_AP_RETURN_0 bound to: 5'b10000 
2default:defaulth p
x
� 
O
%s
*synth27
#	Parameter WRIDLE bound to: 2'b00 
2default:defaulth p
x
� 
O
%s
*synth27
#	Parameter WRDATA bound to: 2'b01 
2default:defaulth p
x
� 
O
%s
*synth27
#	Parameter WRRESP bound to: 2'b10 
2default:defaulth p
x
� 
P
%s
*synth28
$	Parameter WRRESET bound to: 2'b11 
2default:defaulth p
x
� 
O
%s
*synth27
#	Parameter RDIDLE bound to: 2'b00 
2default:defaulth p
x
� 
O
%s
*synth27
#	Parameter RDDATA bound to: 2'b01 
2default:defaulth p
x
� 
P
%s
*synth28
$	Parameter RDRESET bound to: 2'b10 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter ADDR_BITS bound to: 5 - type: integer 
2default:defaulth p
x
� 
�
-case statement is not full and has no default155*oasys2�
�/home/arjunmenonv/Arjun_acads/Year3/CompOrg/HW-Spectrum-Analyzer/SpecAnalv2.9/FFT32v2.9_axis/FFT32v2.9_axis.srcs/sources_1/bd/lite_32F/ipshared/8640/hdl/verilog/counter_AXILiteS_s_axi.v2default:default2
1892default:default8@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2*
counter_AXILiteS_s_axi2default:default2
 2default:default2
12default:default2
12default:default2�
�/home/arjunmenonv/Arjun_acads/Year3/CompOrg/HW-Spectrum-Analyzer/SpecAnalv2.9/FFT32v2.9_axis/FFT32v2.9_axis.srcs/sources_1/bd/lite_32F/ipshared/8640/hdl/verilog/counter_AXILiteS_s_axi.v2default:default2
62default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
counter2default:default2
 2default:default2
22default:default2
12default:default2�
�/home/arjunmenonv/Arjun_acads/Year3/CompOrg/HW-Spectrum-Analyzer/SpecAnalv2.9/FFT32v2.9_axis/FFT32v2.9_axis.srcs/sources_1/bd/lite_32F/ipshared/8640/hdl/verilog/counter.v2default:default2
122default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
lite_32F_counter_0_02default:default2
 2default:default2
32default:default2
12default:default2�
�/home/arjunmenonv/Arjun_acads/Year3/CompOrg/HW-Spectrum-Analyzer/SpecAnalv2.9/FFT32v2.9_axis/FFT32v2.9_axis.srcs/sources_1/bd/lite_32F/ip/lite_32F_counter_0_0/synth/lite_32F_counter_0_0.v2default:default2
582default:default8@Z8-6155h px� 
�
%s*synth2�
�Finished RTL Elaboration : Time (s): cpu = 00:00:11 ; elapsed = 00:00:30 . Memory (MB): peak = 2139.402 ; gain = 0.000 ; free physical = 696 ; free virtual = 3694
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:12 ; elapsed = 00:00:32 . Memory (MB): peak = 2142.242 ; gain = 2.840 ; free physical = 454 ; free virtual = 3525
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:12 ; elapsed = 00:00:32 . Memory (MB): peak = 2142.242 ; gain = 2.840 ; free physical = 453 ; free virtual = 3525
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:00.242default:default2
2142.2422default:default2
0.0002default:default2
2252default:default2
33052default:defaultZ17-722h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�/home/arjunmenonv/Arjun_acads/Year3/CompOrg/HW-Spectrum-Analyzer/SpecAnalv2.9/FFT32v2.9_axis/FFT32v2.9_axis.srcs/sources_1/bd/lite_32F/ip/lite_32F_counter_0_0/constraints/counter_ooc.xdc2default:default2
inst	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�/home/arjunmenonv/Arjun_acads/Year3/CompOrg/HW-Spectrum-Analyzer/SpecAnalv2.9/FFT32v2.9_axis/FFT32v2.9_axis.srcs/sources_1/bd/lite_32F/ip/lite_32F_counter_0_0/constraints/counter_ooc.xdc2default:default2
inst	2default:default8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2�
�/home/arjunmenonv/Arjun_acads/Year3/CompOrg/HW-Spectrum-Analyzer/SpecAnalv2.9/FFT32v2.9_axis/FFT32v2.9_axis.runs/lite_32F_counter_0_0_synth_1/dont_touch.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2�
�/home/arjunmenonv/Arjun_acads/Year3/CompOrg/HW-Spectrum-Analyzer/SpecAnalv2.9/FFT32v2.9_axis/FFT32v2.9_axis.runs/lite_32F_counter_0_0_synth_1/dont_touch.xdc2default:default8Z20-178h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2302.0552default:default2
0.0002default:default2
5642default:default2
37262default:defaultZ17-722h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common24
 Constraint Validation Runtime : 2default:default2
00:00:00.042default:default2
00:00:00.332default:default2
2305.0232default:default2
2.9692default:default2
5552default:default2
37232default:defaultZ17-722h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Constraint Validation : Time (s): cpu = 00:00:22 ; elapsed = 00:00:51 . Memory (MB): peak = 2305.023 ; gain = 165.621 ; free physical = 636 ; free virtual = 3814
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Loading part: xc7z020clg400-1
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:22 ; elapsed = 00:00:51 . Memory (MB): peak = 2305.023 ; gain = 165.621 ; free physical = 636 ; free virtual = 3814
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:23 ; elapsed = 00:00:51 . Memory (MB): peak = 2305.023 ; gain = 165.621 ; free physical = 636 ; free virtual = 3814
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2

wstate_reg2default:default2*
counter_AXILiteS_s_axi2default:defaultZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2

rstate_reg2default:default2*
counter_AXILiteS_s_axi2default:defaultZ8-802h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                  iSTATE |                             0001 |                               11
2default:defaulth p
x
� 
.
%s
*synth2
*
2default:defaulth p
x
� 
�
%s
*synth2s
_                  WRIDLE |                             0010 |                               00
2default:defaulth p
x
� 
�
%s
*synth2s
_                  WRDATA |                             0100 |                               01
2default:defaulth p
x
� 
�
%s
*synth2s
_                  WRRESP |                             1000 |                               10
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2

wstate_reg2default:default2
one-hot2default:default2*
counter_AXILiteS_s_axi2default:defaultZ8-3354h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                  iSTATE |                              001 |                               10
2default:defaulth p
x
� 
.
%s
*synth2
*
2default:defaulth p
x
� 
�
%s
*synth2s
_                  RDIDLE |                              010 |                               00
2default:defaulth p
x
� 
�
%s
*synth2s
_                  RDDATA |                              100 |                               01
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2

rstate_reg2default:default2
one-hot2default:default2*
counter_AXILiteS_s_axi2default:defaultZ8-3354h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:23 ; elapsed = 00:00:52 . Memory (MB): peak = 2305.023 ; gain = 165.621 ; free physical = 667 ; free virtual = 3845
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   32 Bit       Adders := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                5 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 9     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 3     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    3 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2k
WPart Resources:
DSPs: 220 (col length:60)
BRAMs: 280 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:25 ; elapsed = 00:00:54 . Memory (MB): peak = 2305.023 ; gain = 165.621 ; free physical = 648 ; free virtual = 3836
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:35 ; elapsed = 00:01:06 . Memory (MB): peak = 2305.023 ; gain = 165.621 ; free physical = 420 ; free virtual = 3645
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Timing Optimization : Time (s): cpu = 00:00:36 ; elapsed = 00:01:07 . Memory (MB): peak = 2305.023 ; gain = 165.621 ; free physical = 416 ; free virtual = 3640
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Technology Mapping : Time (s): cpu = 00:00:36 ; elapsed = 00:01:07 . Memory (MB): peak = 2305.023 ; gain = 165.621 ; free physical = 411 ; free virtual = 3635
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished IO Insertion : Time (s): cpu = 00:00:41 ; elapsed = 00:01:12 . Memory (MB): peak = 2305.023 ; gain = 165.621 ; free physical = 183 ; free virtual = 3408
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:41 ; elapsed = 00:01:12 . Memory (MB): peak = 2305.023 ; gain = 165.621 ; free physical = 183 ; free virtual = 3408
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:41 ; elapsed = 00:01:12 . Memory (MB): peak = 2305.023 ; gain = 165.621 ; free physical = 183 ; free virtual = 3408
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:41 ; elapsed = 00:01:12 . Memory (MB): peak = 2305.023 ; gain = 165.621 ; free physical = 183 ; free virtual = 3408
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:41 ; elapsed = 00:01:13 . Memory (MB): peak = 2305.023 ; gain = 165.621 ; free physical = 183 ; free virtual = 3408
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:41 ; elapsed = 00:01:13 . Memory (MB): peak = 2305.023 ; gain = 165.621 ; free physical = 183 ; free virtual = 3408
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
D
%s*synth2,
|1     |CARRY4 |    16|
2default:defaulth px� 
D
%s*synth2,
|2     |LUT1   |     4|
2default:defaulth px� 
D
%s*synth2,
|3     |LUT2   |     4|
2default:defaulth px� 
D
%s*synth2,
|4     |LUT3   |     1|
2default:defaulth px� 
D
%s*synth2,
|5     |LUT4   |     8|
2default:defaulth px� 
D
%s*synth2,
|6     |LUT5   |     4|
2default:defaulth px� 
D
%s*synth2,
|7     |LUT6   |    14|
2default:defaulth px� 
D
%s*synth2,
|8     |FDRE   |   116|
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:41 ; elapsed = 00:01:13 . Memory (MB): peak = 2305.023 ; gain = 165.621 ; free physical = 183 ; free virtual = 3408
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 0 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:00:38 ; elapsed = 00:01:03 . Memory (MB): peak = 2305.023 ; gain = 2.840 ; free physical = 237 ; free virtual = 3463
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:42 ; elapsed = 00:01:13 . Memory (MB): peak = 2305.023 ; gain = 165.621 ; free physical = 237 ; free virtual = 3463
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:00.012default:default2
2305.0232default:default2
0.0002default:default2
2302default:default2
34592default:defaultZ17-722h px� 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
162default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:002default:default2
2305.0232default:default2
0.0002default:default2
2462default:default2
34792default:defaultZ17-722h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
282default:default2
12default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
synth_design: 2default:default2
00:01:002default:default2
00:01:312default:default2
2305.0232default:default2
165.7502default:default2
3832default:default2
36172default:defaultZ17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2�
�/home/arjunmenonv/Arjun_acads/Year3/CompOrg/HW-Spectrum-Analyzer/SpecAnalv2.9/FFT32v2.9_axis/FFT32v2.9_axis.runs/lite_32F_counter_0_0_synth_1/lite_32F_counter_0_0.dcp2default:defaultZ17-1381h px� 
�
'%s' is deprecated. %s
384*common2#
use_project_ipc2default:default2A
-This option is deprecated and no longer used.2default:defaultZ17-576h px� 
�
<Added synthesis output to IP cache for IP %s, cache-ID = %s
485*coretcl2(
lite_32F_counter_0_02default:default2$
b11e6059c08855992default:defaultZ2-1648h px� 
P
Renamed %s cell refs.
330*coretcl2
22default:defaultZ2-1174h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2�
�/home/arjunmenonv/Arjun_acads/Year3/CompOrg/HW-Spectrum-Analyzer/SpecAnalv2.9/FFT32v2.9_axis/FFT32v2.9_axis.runs/lite_32F_counter_0_0_synth_1/lite_32F_counter_0_0.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2�
~Executing : report_utilization -file lite_32F_counter_0_0_utilization_synth.rpt -pb lite_32F_counter_0_0_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Mon Jan  4 11:23:32 20212default:defaultZ17-206h px� 


End Record