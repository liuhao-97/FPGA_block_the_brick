
h
Command: %s
53*	vivadotcl27
#write_bitstream -force game_top.bit2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-349h px? 
x
,Running DRC as a precondition to command %s
1349*	planAhead2#
write_bitstream2default:defaultZ12-1349h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
?
?Missing CFGBVS and CONFIG_VOLTAGE Design Properties: Neither the CFGBVS nor CONFIG_VOLTAGE voltage property is set in the current_design.  Configuration bank voltage select (CFGBVS) must be set to VCCO or GND, and CONFIG_VOLTAGE must be set to the correct configuration voltage, in order to determine the I/O voltage support for the pins in bank 0.  It is suggested to specify these either using the 'Edit Device Properties' function in the GUI or directly in the XDC file using the following syntax:

 set_property CFGBVS value1 [current_design]
 #where value1 is either VCCO or GND

 set_property CONFIG_VOLTAGE value2 [current_design]
 #where value2 is the voltage provided to configuration bank 0

Refer to the device configuration user guide for more information.%s*DRC2(
 DRC|Pin Planning2default:default8ZCFGBVS-1h px? 
?
?PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2T
 ">
draw/addra_welcome2	draw/addra_welcome22default:default2default:default2^
 "H
draw/addra_welcome2/P[47:0]draw/addra_welcome2/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px? 
?
?PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2T
 ">
draw/addra_welcome3	draw/addra_welcome32default:default2default:default2^
 "H
draw/addra_welcome3/P[47:0]draw/addra_welcome3/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px? 
?
?PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2L
 "6
draw/addra_win3	draw/addra_win32default:default2default:default2V
 "@
draw/addra_win3/P[47:0]draw/addra_win3/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px? 
?
?MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2T
 ">
draw/addra_welcome2	draw/addra_welcome22default:default2default:default2^
 "H
draw/addra_welcome2/P[47:0]draw/addra_welcome2/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px? 
?
?MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2T
 ">
draw/addra_welcome3	draw/addra_welcome32default:default2default:default2^
 "H
draw/addra_welcome3/P[47:0]draw/addra_welcome3/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px? 
?
?MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2L
 "6
draw/addra_win3	draw/addra_win32default:default2default:default2V
 "@
draw/addra_win3/P[47:0]draw/addra_win3/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2N
 "8
draw/addra_ball0draw/addra_ball02default:default2default:default2f
 "P
draw/addra_ball_reg[8]_i_2/Odraw/addra_ball_reg[8]_i_2/O2default:default2default:default2b
 "L
draw/addra_ball_reg[8]_i_2	draw/addra_ball_reg[8]_i_22default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2_
 "I
draw/allbrick/brick11/E[0]draw/allbrick/brick11/E2default:default2default:default2?
 "r
-draw/allbrick/brick11/addra_win_reg[15]_i_2/O-draw/allbrick/brick11/addra_win_reg[15]_i_2/O2default:default2default:default2?
 "n
+draw/allbrick/brick11/addra_win_reg[15]_i_2	+draw/allbrick/brick11/addra_win_reg[15]_i_22default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2m
 "W
!draw/ball_pos/show_welcome_reg[0]draw/ball_pos/show_welcome_reg2default:default2default:default2?
 "j
)draw/ball_pos/addra_welcome_reg[15]_i_2/O)draw/ball_pos/addra_welcome_reg[15]_i_2/O2default:default2default:default2|
 "f
'draw/ball_pos/addra_welcome_reg[15]_i_2	'draw/ball_pos/addra_welcome_reg[15]_i_22default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2\
 "F
vga_show/draw/addra_bg1vga_show/draw/addra_bg12default:default2default:default2l
 "V
vga_show/addra_bg_reg[13]_i_5/Ovga_show/addra_bg_reg[13]_i_5/O2default:default2default:default2h
 "R
vga_show/addra_bg_reg[13]_i_5	vga_show/addra_bg_reg[13]_i_52default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2U
 "?
vga_show/hit_reg_8[0]vga_show/hit_reg_82default:default2default:default2f
 "P
vga_show/addra_reg[12]_i_2/Ovga_show/addra_reg[12]_i_2/O2default:default2default:default2b
 "L
vga_show/addra_reg[12]_i_2	vga_show/addra_reg[12]_i_22default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
g
DRC finished with %s
1905*	planAhead2)
0 Errors, 12 Warnings2default:defaultZ12-3199h px? 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px? 
i
)Running write_bitstream with %s threads.
1750*designutils2
82default:defaultZ20-2272h px? 
?
Loading data files...
1271*designutilsZ12-1165h px? 
>
Loading site data...
1273*designutilsZ12-1167h px? 
?
Loading route data...
1272*designutilsZ12-1166h px? 
?
Processing options...
1362*designutilsZ12-1514h px? 
<
Creating bitmap...
1249*designutilsZ12-1141h px? 
7
Creating bitstream...
7*	bitstreamZ40-7h px? 
_
Writing bitstream %s...
11*	bitstream2"
./game_top.bit2default:defaultZ40-11h px? 
F
Bitgen Completed Successfully.
1606*	planAheadZ12-1842h px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
112default:default2
122default:default2
02default:default2
02default:defaultZ4-41h px? 
a
%s completed successfully
29*	vivadotcl2#
write_bitstream2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2%
write_bitstream: 2default:default2
00:00:192default:default2
00:00:222default:default2
3606.5552default:default2
284.1682default:default2
4792402default:default2
5016622default:defaultZ17-722h px? 


End Record