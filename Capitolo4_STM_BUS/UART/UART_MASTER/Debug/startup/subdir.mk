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
	arm-none-eabi-as -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -I"/home/gianni/Ricevimento_STM/UART_MASTER/inc" -I"/home/gianni/Ricevimento_STM/UART_MASTER/CMSIS/device" -I"/home/gianni/Ricevimento_STM/UART_MASTER/CMSIS/core" -I"/home/gianni/Ricevimento_STM/UART_MASTER/Utilities/STM32F4-Discovery" -I"/home/gianni/Ricevimento_STM/UART_MASTER/Utilities/Components/exc7200" -I"/home/gianni/Ricevimento_STM/UART_MASTER/Utilities/Components/l3gd20" -I"/home/gianni/Ricevimento_STM/UART_MASTER/Utilities/Components/s25fl512s" -I"/home/gianni/Ricevimento_STM/UART_MASTER/Utilities/Components/st7789h2" -I"/home/gianni/Ricevimento_STM/UART_MASTER/Utilities/Components/ov2640" -I"/home/gianni/Ricevimento_STM/UART_MASTER/Utilities/Components/ampire480272" -I"/home/gianni/Ricevimento_STM/UART_MASTER/Utilities/Components/lis302dl" -I"/home/gianni/Ricevimento_STM/UART_MASTER/Utilities/Components/otm8009a" -I"/home/gianni/Ricevimento_STM/UART_MASTER/Utilities/Components/ft6x06" -I"/home/gianni/Ricevimento_STM/UART_MASTER/Utilities/Components/ili9341" -I"/home/gianni/Ricevimento_STM/UART_MASTER/Utilities/Components/n25q128a" -I"/home/gianni/Ricevimento_STM/UART_MASTER/Utilities/Components/Common" -I"/home/gianni/Ricevimento_STM/UART_MASTER/Utilities/Components/lsm303dlhc" -I"/home/gianni/Ricevimento_STM/UART_MASTER/Utilities/Components/n25q256a" -I"/home/gianni/Ricevimento_STM/UART_MASTER/Utilities/Components/ili9325" -I"/home/gianni/Ricevimento_STM/UART_MASTER/Utilities/Components/n25q512a" -I"/home/gianni/Ricevimento_STM/UART_MASTER/Utilities/Components/stmpe811" -I"/home/gianni/Ricevimento_STM/UART_MASTER/Utilities/Components/cs43l22" -I"/home/gianni/Ricevimento_STM/UART_MASTER/Utilities/Components/ls016b8uy" -I"/home/gianni/Ricevimento_STM/UART_MASTER/Utilities/Components/lis3dsh" -I"/home/gianni/Ricevimento_STM/UART_MASTER/Utilities/Components/wm8994" -I"/home/gianni/Ricevimento_STM/UART_MASTER/Utilities/Components/mfxstm32l152" -I"/home/gianni/Ricevimento_STM/UART_MASTER/Utilities/Components/stmpe1600" -I"/home/gianni/Ricevimento_STM/UART_MASTER/Utilities/Components/st7735" -I"/home/gianni/Ricevimento_STM/UART_MASTER/Utilities/Components/ts3510" -I"/home/gianni/Ricevimento_STM/UART_MASTER/Utilities/Components/ampire640480" -I"/home/gianni/Ricevimento_STM/UART_MASTER/Utilities/Components/s5k5cag" -I"/home/gianni/Ricevimento_STM/UART_MASTER/Utilities" -I"/home/gianni/Ricevimento_STM/UART_MASTER/HAL_Driver/Inc" -I"/home/gianni/Ricevimento_STM/UART_MASTER/HAL_Driver/Inc/Legacy" -g -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


