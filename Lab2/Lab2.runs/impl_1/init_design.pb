
_
Command: %s
53*	vivadotcl2.
,link_design -top lab2 -part xc7a200tsbg484-1Z4-113h px� 
U
#Design is defaulting to srcset: %s
437*	planAhead2
	sources_1Z12-437h px� 
X
&Design is defaulting to constrset: %s
434*	planAhead2
	constrs_1Z12-434h px� 
E
Loading part %s157*device2
xc7a200tsbg484-1Z21-403h px� 
�
-Reading design checkpoint '%s' for cell '%s'
275*project2_
]c:/Users/Grantham.Zimmerman/Desktop/ece383/Lab2/Lab2.gen/sources_1/ip/clk_wiz_1/clk_wiz_1.dcp2.
,datapath/Audio_Codec/audiocodec_master_clockZ1-454h px� 
�
-Reading design checkpoint '%s' for cell '%s'
275*project2_
]c:/Users/Grantham.Zimmerman/Desktop/ece383/Lab2/Lab2.gen/sources_1/ip/clk_wiz_0/clk_wiz_0.dcp22
0datapath/video_inst/mmcm_adv_inst_display_clocksZ1-454h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0162	
555.0232
0.000Z17-268h px� 
T
-Analyzing %s Unisim elements for replacement
17*netlist2
99Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
T
Netlist was created with %s %s291*project2
Vivado2
2024.2Z1-479h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
�
LRemoving redundant IBUF, %s, from the path connected to top-level port: %s 
35*opt2@
>datapath/Audio_Codec/audiocodec_master_clock/inst/clkin1_ibufg2
clkZ31-35h px� 
�
LRemoving redundant IBUF, %s, from the path connected to top-level port: %s 
35*opt2D
Bdatapath/video_inst/mmcm_adv_inst_display_clocks/inst/clkin1_ibufg2
clkZ31-35h px� 
�
�Could not create '%s' constraint because net '%s' is not directly connected to top level port. '%s' is ignored for synthesis but preserved for implementation.
528*constraints2
IBUF_LOW_PWR28
4datapath/Audio_Codec/audiocodec_master_clock/clk_in12
IBUF_LOW_PWR8Z18-550h px� 
�
�Could not create '%s' constraint because net '%s' is not directly connected to top level port. '%s' is ignored for synthesis but preserved for implementation.
528*constraints2
IBUF_LOW_PWR2<
8datapath/video_inst/mmcm_adv_inst_display_clocks/clk_in12
IBUF_LOW_PWR8Z18-550h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2g
cc:/Users/Grantham.Zimmerman/Desktop/ece383/Lab2/Lab2.gen/sources_1/ip/clk_wiz_1/clk_wiz_1_board.xdc25
1datapath/Audio_Codec/audiocodec_master_clock/inst	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2g
cc:/Users/Grantham.Zimmerman/Desktop/ece383/Lab2/Lab2.gen/sources_1/ip/clk_wiz_1/clk_wiz_1_board.xdc25
1datapath/Audio_Codec/audiocodec_master_clock/inst	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2a
]c:/Users/Grantham.Zimmerman/Desktop/ece383/Lab2/Lab2.gen/sources_1/ip/clk_wiz_1/clk_wiz_1.xdc25
1datapath/Audio_Codec/audiocodec_master_clock/inst	8Z20-848h px� 
�
%Done setting XDC timing constraints.
35*timing2a
]c:/Users/Grantham.Zimmerman/Desktop/ece383/Lab2/Lab2.gen/sources_1/ip/clk_wiz_1/clk_wiz_1.xdc2
548@Z38-35h px� 
�
Deriving generated clocks
2*timing2a
]c:/Users/Grantham.Zimmerman/Desktop/ece383/Lab2/Lab2.gen/sources_1/ip/clk_wiz_1/clk_wiz_1.xdc2
548@Z38-2h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
get_clocks: 2

00:00:062

00:00:072

1311.3872	
617.477Z17-268h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2a
]c:/Users/Grantham.Zimmerman/Desktop/ece383/Lab2/Lab2.gen/sources_1/ip/clk_wiz_1/clk_wiz_1.xdc25
1datapath/Audio_Codec/audiocodec_master_clock/inst	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2g
cc:/Users/Grantham.Zimmerman/Desktop/ece383/Lab2/Lab2.gen/sources_1/ip/clk_wiz_0/clk_wiz_0_board.xdc29
5datapath/video_inst/mmcm_adv_inst_display_clocks/inst	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2g
cc:/Users/Grantham.Zimmerman/Desktop/ece383/Lab2/Lab2.gen/sources_1/ip/clk_wiz_0/clk_wiz_0_board.xdc29
5datapath/video_inst/mmcm_adv_inst_display_clocks/inst	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2a
]c:/Users/Grantham.Zimmerman/Desktop/ece383/Lab2/Lab2.gen/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc29
5datapath/video_inst/mmcm_adv_inst_display_clocks/inst	8Z20-848h px� 
�
Deriving generated clocks
2*timing2a
]c:/Users/Grantham.Zimmerman/Desktop/ece383/Lab2/Lab2.gen/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc2
548@Z38-2h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2a
]c:/Users/Grantham.Zimmerman/Desktop/ece383/Lab2/Lab2.gen/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc29
5datapath/video_inst/mmcm_adv_inst_display_clocks/inst	8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2m
iC:/Users/Grantham.Zimmerman/Desktop/ece383/Lab2/Lab2.srcs/constrs_1/imports/lab2_code_for_cadets/Lab2.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2m
iC:/Users/Grantham.Zimmerman/Desktop/ece383/Lab2/Lab2.srcs/constrs_1/imports/lab2_code_for_cadets/Lab2.xdc8Z20-178h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1311.3872
0.000Z17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2y
w  A total of 6 instances were transformed.
  IOBUF => IOBUF (IBUF, OBUFT): 2 instances
  OBUFDS => OBUFDS: 4 instances
Z1-111h px� 
~
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
122
42
02
0Z4-41h px� 
K
%s completed successfully
29*	vivadotcl2
link_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
link_design: 2

00:00:112

00:00:132

1311.3872

1006.559Z17-268h px� 


End Record