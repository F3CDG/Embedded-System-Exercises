onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -pli "/usr/Xilinx/Vivado/2016.4/lib/lnx64.o/libxil_vsim.so" -lib xil_defaultlib design_for_gpio_opt

do {wave.do}

view wave
view structure
view signals

do {design_for_gpio.udo}

run -all

quit -force
