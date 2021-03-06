vlib work
vlib msim

vlib msim/xil_defaultlib
vlib msim/xpm
vlib msim/processing_system7_bfm_v2_0_5
vlib msim/lib_cdc_v1_0_2
vlib msim/proc_sys_reset_v5_0_10
vlib msim/generic_baseblocks_v2_1_0
vlib msim/axi_infrastructure_v1_1_0
vlib msim/axi_register_slice_v2_1_11
vlib msim/fifo_generator_v13_1_3
vlib msim/axi_data_fifo_v2_1_10
vlib msim/axi_crossbar_v2_1_12
vlib msim/axi_protocol_converter_v2_1_11

vmap xil_defaultlib msim/xil_defaultlib
vmap xpm msim/xpm
vmap processing_system7_bfm_v2_0_5 msim/processing_system7_bfm_v2_0_5
vmap lib_cdc_v1_0_2 msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_10 msim/proc_sys_reset_v5_0_10
vmap generic_baseblocks_v2_1_0 msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_11 msim/axi_register_slice_v2_1_11
vmap fifo_generator_v13_1_3 msim/fifo_generator_v13_1_3
vmap axi_data_fifo_v2_1_10 msim/axi_data_fifo_v2_1_10
vmap axi_crossbar_v2_1_12 msim/axi_crossbar_v2_1_12
vmap axi_protocol_converter_v2_1_11 msim/axi_protocol_converter_v2_1_11

vlog -work xil_defaultlib -64 -incr -sv "+incdir+../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/7dd0/hdl" "+incdir+../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/7e3a/hdl" "+incdir+../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/7dd0/hdl" "+incdir+../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/7e3a/hdl" \
"/usr/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93 \
"/usr/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_for_gpio/hdl/design_for_gpio.vhd" \

vlog -work processing_system7_bfm_v2_0_5 -64 -incr "+incdir+../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/7dd0/hdl" "+incdir+../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/7e3a/hdl" "+incdir+../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/7dd0/hdl" "+incdir+../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/7e3a/hdl" \
"../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/7dd0/hdl/processing_system7_bfm_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/7dd0/hdl" "+incdir+../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/7e3a/hdl" "+incdir+../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/7dd0/hdl" "+incdir+../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/7e3a/hdl" \
"../../../bd/design_for_gpio/ip/design_for_gpio_processing_system7_0_1/sim/design_for_gpio_processing_system7_0_1.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_for_gpio/ipshared/324c/src/gpio.vhd" \
"../../../bd/design_for_gpio/ipshared/324c/src/gpio_array.vhd" \
"../../../bd/design_for_gpio/ipshared/324c/hdl/my_gpio_v1_0_S00_AXI.vhd" \
"../../../bd/design_for_gpio/ipshared/324c/hdl/my_gpio_v1_0.vhd" \
"../../../bd/design_for_gpio/ip/design_for_gpio_my_gpio_0_0/sim/design_for_gpio_my_gpio_0_0.vhd" \
"../../../bd/design_for_gpio/ip/design_for_gpio_my_gpio_0_1/sim/design_for_gpio_my_gpio_0_1.vhd" \
"../../../bd/design_for_gpio/ip/design_for_gpio_my_gpio_0_3/sim/design_for_gpio_my_gpio_0_3.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_10 -64 -93 \
"../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/04b4/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_for_gpio/ip/design_for_gpio_rst_ps7_0_100M_0/sim/design_for_gpio_rst_ps7_0_100M_0.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr "+incdir+../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/7dd0/hdl" "+incdir+../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/7e3a/hdl" "+incdir+../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/7dd0/hdl" "+incdir+../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/7e3a/hdl" \
"../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/7ee0/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/7dd0/hdl" "+incdir+../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/7e3a/hdl" "+incdir+../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/7dd0/hdl" "+incdir+../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/7e3a/hdl" \
"../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/7e3a/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_11 -64 -incr "+incdir+../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/7dd0/hdl" "+incdir+../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/7e3a/hdl" "+incdir+../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/7dd0/hdl" "+incdir+../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/7e3a/hdl" \
"../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/0b6b/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_1_3 -64 -incr "+incdir+../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/7dd0/hdl" "+incdir+../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/7e3a/hdl" "+incdir+../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/7dd0/hdl" "+incdir+../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/7e3a/hdl" \
"../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/564d/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_1_3 -64 -93 \
"../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/564d/hdl/fifo_generator_v13_1_rfs.vhd" \

vlog -work fifo_generator_v13_1_3 -64 -incr "+incdir+../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/7dd0/hdl" "+incdir+../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/7e3a/hdl" "+incdir+../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/7dd0/hdl" "+incdir+../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/7e3a/hdl" \
"../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/564d/hdl/fifo_generator_v13_1_rfs.v" \

vlog -work axi_data_fifo_v2_1_10 -64 -incr "+incdir+../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/7dd0/hdl" "+incdir+../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/7e3a/hdl" "+incdir+../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/7dd0/hdl" "+incdir+../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/7e3a/hdl" \
"../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/39ba/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_12 -64 -incr "+incdir+../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/7dd0/hdl" "+incdir+../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/7e3a/hdl" "+incdir+../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/7dd0/hdl" "+incdir+../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/7e3a/hdl" \
"../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/896d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/7dd0/hdl" "+incdir+../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/7e3a/hdl" "+incdir+../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/7dd0/hdl" "+incdir+../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/7e3a/hdl" \
"../../../bd/design_for_gpio/ip/design_for_gpio_xbar_1/sim/design_for_gpio_xbar_1.v" \

vlog -work axi_protocol_converter_v2_1_11 -64 -incr "+incdir+../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/7dd0/hdl" "+incdir+../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/7e3a/hdl" "+incdir+../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/7dd0/hdl" "+incdir+../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/7e3a/hdl" \
"../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/df1b/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/7dd0/hdl" "+incdir+../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/7e3a/hdl" "+incdir+../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/7dd0/hdl" "+incdir+../../../../project_gpio_custom.srcs/sources_1/bd/design_for_gpio/ipshared/7e3a/hdl" \
"../../../bd/design_for_gpio/ip/design_for_gpio_auto_pc_2/sim/design_for_gpio_auto_pc_2.v" \

vlog -work xil_defaultlib "glbl.v"

