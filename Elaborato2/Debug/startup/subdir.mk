################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../startup/startup_stm32f407xx.s 

OBJS += \
./startup/startup_stm32f407xx.o 


# Each subdirectory must supply rules for building sources it contributes
startup/%.o: ../startup/%.s
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Assembler'
	@echo $(PWD)
	arm-none-eabi-as -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -I"/home/ciro/Ac6/workspace/led/inc" -I"/home/ciro/Ac6/workspace/led/Utilities/STM32F4-Discovery" -I"/home/ciro/Ac6/workspace/led/Utilities/Components/st7735" -I"/home/ciro/Ac6/workspace/led/Utilities/Components/stmpe811" -I"/home/ciro/Ac6/workspace/led/Utilities/Components/l3gd20" -I"/home/ciro/Ac6/workspace/led/Utilities/Components/ampire480272" -I"/home/ciro/Ac6/workspace/led/Utilities/Components/lsm303dlhc" -I"/home/ciro/Ac6/workspace/led/Utilities/Components/cs43l22" -I"/home/ciro/Ac6/workspace/led/Utilities/Components/st7789h2" -I"/home/ciro/Ac6/workspace/led/Utilities/Components/n25q128a" -I"/home/ciro/Ac6/workspace/led/Utilities/Components/ls016b8uy" -I"/home/ciro/Ac6/workspace/led/Utilities/Components/Common" -I"/home/ciro/Ac6/workspace/led/Utilities/Components/wm8994" -I"/home/ciro/Ac6/workspace/led/Utilities/Components/ampire640480" -I"/home/ciro/Ac6/workspace/led/Utilities/Components/ts3510" -I"/home/ciro/Ac6/workspace/led/Utilities/Components/stmpe1600" -I"/home/ciro/Ac6/workspace/led/Utilities/Components/n25q256a" -I"/home/ciro/Ac6/workspace/led/Utilities/Components/otm8009a" -I"/home/ciro/Ac6/workspace/led/Utilities/Components/s5k5cag" -I"/home/ciro/Ac6/workspace/led/Utilities/Components/exc7200" -I"/home/ciro/Ac6/workspace/led/Utilities/Components/lis3dsh" -I"/home/ciro/Ac6/workspace/led/Utilities/Components/lis302dl" -I"/home/ciro/Ac6/workspace/led/Utilities/Components/ov2640" -I"/home/ciro/Ac6/workspace/led/Utilities/Components/n25q512a" -I"/home/ciro/Ac6/workspace/led/Utilities/Components/ili9341" -I"/home/ciro/Ac6/workspace/led/Utilities/Components/ft6x06" -I"/home/ciro/Ac6/workspace/led/Utilities/Components/ili9325" -I"/home/ciro/Ac6/workspace/led/Utilities/Components/mfxstm32l152" -I"/home/ciro/Ac6/workspace/led/Utilities/Components/s25fl512s" -I"/home/ciro/Ac6/workspace/led/Utilities" -I"/home/ciro/Ac6/workspace/led/CMSIS/device" -I"/home/ciro/Ac6/workspace/led/CMSIS/core" -I"/home/ciro/Ac6/workspace/led/HAL_Driver/Inc" -I"/home/ciro/Ac6/workspace/led/HAL_Driver/Inc/Legacy" -g -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


