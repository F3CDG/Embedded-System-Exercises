# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z010clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/daniele/Sistemi_Embedded/Esercitazione_7/Driver/Esercitazione_7/Driver_GPIO_Custom/Prima_Tipologia/vivado_project/project_gpio_custom/project_gpio_custom.cache/wt [current_project]
set_property parent.project_path /home/daniele/Sistemi_Embedded/Esercitazione_7/Driver/Esercitazione_7/Driver_GPIO_Custom/Prima_Tipologia/vivado_project/project_gpio_custom/project_gpio_custom.xpr [current_project]
set_property XPM_LIBRARIES XPM_CDC [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part digilentinc.com:zybo:part0:1.0 [current_project]
set_property ip_repo_paths {
  /home/daniele/Sistemi_Embedded/Esercitazione_7/Driver/Esercitazione_7/Driver_GPIO_Custom/Prima_Tipologia/vivado_project/ip_repo/my_gpio_1.0
  /home/daniele/Sistemi_Embedded/Esercitazione_7/Driver/Esercitazione_7/Driver_GPIO_Custom/Prima_Tipologia/vivado_project/ip_repo/my_gpio_1.0
} [current_project]
set_property ip_cache_permissions disable [current_project]
read_vhdl -library xil_defaultlib /home/daniele/Scrivania/Elaborato1_NoInt_Driver_C/gpio_project/gpio_project.srcs/sources_1/bd/design_for_gpio/hdl/design_for_gpio_wrapper.vhd
add_files /home/daniele/Scrivania/Elaborato1_NoInt_Driver_C/gpio_project/gpio_project.srcs/sources_1/bd/design_for_gpio/design_for_gpio.bd
set_property used_in_implementation false [get_files -all /home/daniele/Scrivania/Elaborato1_NoInt_Driver_C/gpio_project/gpio_project.srcs/sources_1/bd/design_for_gpio/ip/design_for_gpio_processing_system7_0_1/design_for_gpio_processing_system7_0_1.xdc]
set_property used_in_implementation false [get_files -all /home/daniele/Scrivania/Elaborato1_NoInt_Driver_C/gpio_project/gpio_project.srcs/sources_1/bd/design_for_gpio/ip/design_for_gpio_rst_ps7_0_100M_0/design_for_gpio_rst_ps7_0_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/daniele/Scrivania/Elaborato1_NoInt_Driver_C/gpio_project/gpio_project.srcs/sources_1/bd/design_for_gpio/ip/design_for_gpio_rst_ps7_0_100M_0/design_for_gpio_rst_ps7_0_100M_0.xdc]
set_property used_in_implementation false [get_files -all /home/daniele/Scrivania/Elaborato1_NoInt_Driver_C/gpio_project/gpio_project.srcs/sources_1/bd/design_for_gpio/ip/design_for_gpio_rst_ps7_0_100M_0/design_for_gpio_rst_ps7_0_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/daniele/Scrivania/Elaborato1_NoInt_Driver_C/gpio_project/gpio_project.srcs/sources_1/bd/design_for_gpio/ip/design_for_gpio_xbar_1/design_for_gpio_xbar_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/daniele/Scrivania/Elaborato1_NoInt_Driver_C/gpio_project/gpio_project.srcs/sources_1/bd/design_for_gpio/ip/design_for_gpio_auto_pc_2/design_for_gpio_auto_pc_2_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/daniele/Scrivania/Elaborato1_NoInt_Driver_C/gpio_project/gpio_project.srcs/sources_1/bd/design_for_gpio/design_for_gpio_ooc.xdc]
set_property is_locked true [get_files /home/daniele/Scrivania/Elaborato1_NoInt_Driver_C/gpio_project/gpio_project.srcs/sources_1/bd/design_for_gpio/design_for_gpio.bd]

foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc /home/daniele/Scrivania/Elaborato1_NoInt_Driver_C/gpio_project/gpio_project.srcs/constrs_1/new/pad_location.xdc
set_property used_in_implementation false [get_files /home/daniele/Scrivania/Elaborato1_NoInt_Driver_C/gpio_project/gpio_project.srcs/constrs_1/new/pad_location.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top design_for_gpio_wrapper -part xc7z010clg400-1


write_checkpoint -force -noxdef design_for_gpio_wrapper.dcp

catch { report_utilization -file design_for_gpio_wrapper_utilization_synth.rpt -pb design_for_gpio_wrapper_utilization_synth.pb }
