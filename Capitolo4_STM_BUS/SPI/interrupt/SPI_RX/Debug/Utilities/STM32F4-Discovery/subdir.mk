################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Utilities/STM32F4-Discovery/stm32f4_discovery.c \
../Utilities/STM32F4-Discovery/stm32f4_discovery_accelerometer.c \
../Utilities/STM32F4-Discovery/stm32f4_discovery_audio.c 

OBJS += \
./Utilities/STM32F4-Discovery/stm32f4_discovery.o \
./Utilities/STM32F4-Discovery/stm32f4_discovery_accelerometer.o \
./Utilities/STM32F4-Discovery/stm32f4_discovery_audio.o 

C_DEPS += \
./Utilities/STM32F4-Discovery/stm32f4_discovery.d \
./Utilities/STM32F4-Discovery/stm32f4_discovery_accelerometer.d \
./Utilities/STM32F4-Discovery/stm32f4_discovery_audio.d 


# Each subdirectory must supply rules for building sources it contributes
Utilities/STM32F4-Discovery/%.o: ../Utilities/STM32F4-Discovery/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F407VGTx -DSTM32F4 -DSTM32F4DISCOVERY -DSTM32 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -I"/home/gianni/Ricevimento_STM/SPI_RX/inc" -I"/home/gianni/Ricevimento_STM/SPI_RX/CMSIS/device" -I"/home/gianni/Ricevimento_STM/SPI_RX/CMSIS/core" -I"/home/gianni/Ricevimento_STM/SPI_RX/Utilities/STM32F4-Discovery" -I"/home/gianni/Ricevimento_STM/SPI_RX/Utilities/Components/exc7200" -I"/home/gianni/Ricevimento_STM/SPI_RX/Utilities/Components/l3gd20" -I"/home/gianni/Ricevimento_STM/SPI_RX/Utilities/Components/s25fl512s" -I"/home/gianni/Ricevimento_STM/SPI_RX/Utilities/Components/st7789h2" -I"/home/gianni/Ricevimento_STM/SPI_RX/Utilities/Components/ov2640" -I"/home/gianni/Ricevimento_STM/SPI_RX/Utilities/Components/ampire480272" -I"/home/gianni/Ricevimento_STM/SPI_RX/Utilities/Components/lis302dl" -I"/home/gianni/Ricevimento_STM/SPI_RX/Utilities/Components/otm8009a" -I"/home/gianni/Ricevimento_STM/SPI_RX/Utilities/Components/ft6x06" -I"/home/gianni/Ricevimento_STM/SPI_RX/Utilities/Components/ili9341" -I"/home/gianni/Ricevimento_STM/SPI_RX/Utilities/Components/n25q128a" -I"/home/gianni/Ricevimento_STM/SPI_RX/Utilities/Components/Common" -I"/home/gianni/Ricevimento_STM/SPI_RX/Utilities/Components/lsm303dlhc" -I"/home/gianni/Ricevimento_STM/SPI_RX/Utilities/Components/n25q256a" -I"/home/gianni/Ricevimento_STM/SPI_RX/Utilities/Components/ili9325" -I"/home/gianni/Ricevimento_STM/SPI_RX/Utilities/Components/n25q512a" -I"/home/gianni/Ricevimento_STM/SPI_RX/Utilities/Components/stmpe811" -I"/home/gianni/Ricevimento_STM/SPI_RX/Utilities/Components/cs43l22" -I"/home/gianni/Ricevimento_STM/SPI_RX/Utilities/Components/ls016b8uy" -I"/home/gianni/Ricevimento_STM/SPI_RX/Utilities/Components/lis3dsh" -I"/home/gianni/Ricevimento_STM/SPI_RX/Utilities/Components/wm8994" -I"/home/gianni/Ricevimento_STM/SPI_RX/Utilities/Components/mfxstm32l152" -I"/home/gianni/Ricevimento_STM/SPI_RX/Utilities/Components/stmpe1600" -I"/home/gianni/Ricevimento_STM/SPI_RX/Utilities/Components/st7735" -I"/home/gianni/Ricevimento_STM/SPI_RX/Utilities/Components/ts3510" -I"/home/gianni/Ricevimento_STM/SPI_RX/Utilities/Components/ampire640480" -I"/home/gianni/Ricevimento_STM/SPI_RX/Utilities/Components/s5k5cag" -I"/home/gianni/Ricevimento_STM/SPI_RX/Utilities" -I"/home/gianni/Ricevimento_STM/SPI_RX/HAL_Driver/Inc" -I"/home/gianni/Ricevimento_STM/SPI_RX/HAL_Driver/Inc/Legacy" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


