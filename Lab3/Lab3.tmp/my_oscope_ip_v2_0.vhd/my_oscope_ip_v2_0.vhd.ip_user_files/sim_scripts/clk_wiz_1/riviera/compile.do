transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xpm
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -incr "+incdir+../../../../../../../ip_repo/My_Counter_IP9_1_0/src/clk_wiz_1" -l xpm -l xil_defaultlib \
"C:/Xilinx2/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93  -incr \
"C:/Xilinx2/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../../../../../ip_repo/My_Counter_IP9_1_0/src/clk_wiz_1/clk_wiz_1_sim_netlist.vhdl" \


vlog -work xil_defaultlib \
"glbl.v"

