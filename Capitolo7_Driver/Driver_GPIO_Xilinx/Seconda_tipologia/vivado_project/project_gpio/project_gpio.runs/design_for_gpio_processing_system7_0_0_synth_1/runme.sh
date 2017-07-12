#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/usr/Xilinx/SDK/2016.4/bin:/usr/Xilinx/Vivado/2016.4/ids_lite/ISE/bin/lin64:/usr/Xilinx/Vivado/2016.4/bin
else
  PATH=/usr/Xilinx/SDK/2016.4/bin:/usr/Xilinx/Vivado/2016.4/ids_lite/ISE/bin/lin64:/usr/Xilinx/Vivado/2016.4/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=/usr/Xilinx/Vivado/2016.4/ids_lite/ISE/lib/lin64
else
  LD_LIBRARY_PATH=/usr/Xilinx/Vivado/2016.4/ids_lite/ISE/lib/lin64:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/daniele/Sistemi_Embedded/Esercitazione_7/Driver/Esercitazione_7/Driver_GPIO_Xilinx/Prima tipologia/vivado_project/project_gpio/project_gpio.runs/design_for_gpio_processing_system7_0_0_synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log design_for_gpio_processing_system7_0_0.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source design_for_gpio_processing_system7_0_0.tcl
