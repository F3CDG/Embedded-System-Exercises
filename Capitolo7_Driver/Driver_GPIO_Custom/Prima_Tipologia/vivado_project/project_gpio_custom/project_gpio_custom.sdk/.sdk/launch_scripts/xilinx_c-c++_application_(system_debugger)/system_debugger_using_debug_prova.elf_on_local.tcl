connect -url tcp:127.0.0.1:3121
source /home/daniele/Sistemi_Embedded/Esercitazione_7/Driver/Esercitazione_7/Driver_GPIO_Custom/Prima_Tipologia/vivado_project/project_gpio_custom/project_gpio_custom.sdk/design_for_gpio_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo 210279760109A"} -index 0
loadhw /home/daniele/Sistemi_Embedded/Esercitazione_7/Driver/Esercitazione_7/Driver_GPIO_Custom/Prima_Tipologia/vivado_project/project_gpio_custom/project_gpio_custom.sdk/design_for_gpio_wrapper_hw_platform_0/system.hdf
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo 210279760109A"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo 210279760109A"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo 210279760109A"} -index 0
dow /home/daniele/Sistemi_Embedded/Esercitazione_7/Driver/Esercitazione_7/Driver_GPIO_Custom/Prima_Tipologia/vivado_project/project_gpio_custom/project_gpio_custom.sdk/prova/Debug/prova.elf
bpadd -addr &main
