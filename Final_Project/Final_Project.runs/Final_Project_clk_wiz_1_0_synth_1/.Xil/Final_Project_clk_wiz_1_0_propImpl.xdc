set_property SRC_FILE_INFO {cfile:c:/ece383/Final_Project/Final_Project.gen/sources_1/bd/Final_Project/ip/Final_Project_clk_wiz_1_0/Final_Project_clk_wiz_1_0.xdc rfile:../../../Final_Project.gen/sources_1/bd/Final_Project/ip/Final_Project_clk_wiz_1_0/Final_Project_clk_wiz_1_0.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:54 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.100
