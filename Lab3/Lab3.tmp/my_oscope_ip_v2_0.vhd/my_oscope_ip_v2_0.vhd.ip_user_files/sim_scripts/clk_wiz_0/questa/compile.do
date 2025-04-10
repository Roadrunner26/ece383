vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib

vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xpm  -incr -mfcu  -sv "+incdir+../../../../../../../ip_repo/My_Counter_IP9_1_0/src/clk_wiz_0" \
"C:/Xilinx2/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm  -93  \
"C:/Xilinx2/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../../../../../ip_repo/My_Counter_IP9_1_0/src/clk_wiz_0/clk_wiz_0_sim_netlist.vhdl" \


vlog -work xil_defaultlib \
"glbl.v"

