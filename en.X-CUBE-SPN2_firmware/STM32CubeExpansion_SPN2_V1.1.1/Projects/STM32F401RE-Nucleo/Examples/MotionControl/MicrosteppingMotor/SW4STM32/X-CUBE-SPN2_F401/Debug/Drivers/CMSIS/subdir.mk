################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/ssvis/dev/MTE325Lab/en.X-CUBE-SPN2_firmware/STM32CubeExpansion_SPN2_V1.1.1/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c 

OBJS += \
./Drivers/CMSIS/system_stm32f4xx.o 

C_DEPS += \
./Drivers/CMSIS/system_stm32f4xx.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/system_stm32f4xx.o: C:/Users/ssvis/dev/MTE325Lab/en.X-CUBE-SPN2_firmware/STM32CubeExpansion_SPN2_V1.1.1/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c Drivers/CMSIS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../../../Inc -I../../../Inc/NUCLEO-F401RE -I../../../../../../../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../../../../../../../Drivers/BSP/Components/L6470 -I../../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../../Drivers/BSP/STM32F4xx-Nucleo -I../../../../../../../../Drivers/BSP/X-NUCLEO-IHM02A1 -I../../../../../../../../Drivers/BSP/X-NUCLEO-IHM02A1/NUCLEO-F401RE -O1 -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS

clean-Drivers-2f-CMSIS:
	-$(RM) ./Drivers/CMSIS/system_stm32f4xx.cyclo ./Drivers/CMSIS/system_stm32f4xx.d ./Drivers/CMSIS/system_stm32f4xx.o ./Drivers/CMSIS/system_stm32f4xx.su

.PHONY: clean-Drivers-2f-CMSIS

