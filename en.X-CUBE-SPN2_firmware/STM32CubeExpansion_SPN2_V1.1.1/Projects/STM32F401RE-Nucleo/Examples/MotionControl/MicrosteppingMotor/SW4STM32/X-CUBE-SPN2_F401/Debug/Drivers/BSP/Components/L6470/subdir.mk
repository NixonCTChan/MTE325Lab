################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/ssvis/dev/MTE325Lab/en.X-CUBE-SPN2_firmware/STM32CubeExpansion_SPN2_V1.1.1/Drivers/BSP/Components/L6470/L6470.c 

OBJS += \
./Drivers/BSP/Components/L6470/L6470.o 

C_DEPS += \
./Drivers/BSP/Components/L6470/L6470.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/Components/L6470/L6470.o: C:/Users/ssvis/dev/MTE325Lab/en.X-CUBE-SPN2_firmware/STM32CubeExpansion_SPN2_V1.1.1/Drivers/BSP/Components/L6470/L6470.c Drivers/BSP/Components/L6470/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../../../Inc -I../../../Inc/NUCLEO-F401RE -I../../../../../../../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../../../../../../../Drivers/BSP/Components/L6470 -I../../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../../Drivers/BSP/STM32F4xx-Nucleo -I../../../../../../../../Drivers/BSP/X-NUCLEO-IHM02A1 -I../../../../../../../../Drivers/BSP/X-NUCLEO-IHM02A1/NUCLEO-F401RE -O1 -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-BSP-2f-Components-2f-L6470

clean-Drivers-2f-BSP-2f-Components-2f-L6470:
	-$(RM) ./Drivers/BSP/Components/L6470/L6470.cyclo ./Drivers/BSP/Components/L6470/L6470.d ./Drivers/BSP/Components/L6470/L6470.o ./Drivers/BSP/Components/L6470/L6470.su

.PHONY: clean-Drivers-2f-BSP-2f-Components-2f-L6470

