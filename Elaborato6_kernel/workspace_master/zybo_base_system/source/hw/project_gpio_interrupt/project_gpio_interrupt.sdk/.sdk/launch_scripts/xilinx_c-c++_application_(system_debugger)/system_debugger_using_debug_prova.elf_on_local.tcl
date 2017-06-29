connect -url tcp:127.0.0.1:3121
source /home/daniele/Scrivania/workspace_master/zybo_base_system/source/hw/project_gpio_interrupt/project_gpio_interrupt.sdk/design_gpio_interrupt_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo 210279652999A"} -index 0
loadhw /home/daniele/Scrivania/workspace_master/zybo_base_system/source/hw/project_gpio_interrupt/project_gpio_interrupt.sdk/design_gpio_interrupt_wrapper_hw_platform_0/system.hdf
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo 210279652999A"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo 210279652999A"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo 210279652999A"} -index 0
dow /home/daniele/Scrivania/workspace_master/zybo_base_system/source/hw/project_gpio_interrupt/project_gpio_interrupt.sdk/prova/Debug/prova.elf
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo 210279652999A"} -index 0
con
