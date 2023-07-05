################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
C:/Users/ssvis/dev/MTE325Lab/en.X-CUBE-SPN2_firmware/STM32CubeExpansion_SPN2_V1.1.1/Projects/STM32F401RE-Nucleo/Examples/MotionControl/MicrosteppingMotor/SW4STM32/startup_stm32f401xe.s 

C_SRCS += \
C:/Users/ssvis/dev/MTE325Lab/en.X-CUBE-SPN2_firmware/STM32CubeExpansion_SPN2_V1.1.1/Projects/STM32F401RE-Nucleo/Examples/MotionControl/MicrosteppingMotor/SW4STM32/syscalls.c 

OBJS += \
./Example/SW4STM32/startup_stm32f401xe.o \
./Example/SW4STM32/syscalls.o 

S_DEPS += \
./Example/SW4STM32/startup_stm32f401xe.d 

C_DEPS += \
./Example/SW4STM32/syscalls.d 


# Each subdirectory must supply rules for building sources it contributes
Example/SW4STM32/startup_stm32f401xe.o: C:/Users/ssvis/dev/MTE325Lab/en.X-CUBE-SPN2_firmware/STM32CubeExpansion_SPN2_V1.1.1/Projects/STM32F401RE-Nucleo/Examples/MotionControl/MicrosteppingMotor/SW4STM32/startup_stm32f401xe.s Example/SW4STM32/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Example/SW4STM32/syscalls.o: C:/Users/ssvis/dev/MTE325Lab/en.X-CUBE-SPN2_firmware/STM32CubeExpansion_SPN2_V1.1.1/Projects/STM32F401RE-Nucleo/Examples/MotionControl/MicrosteppingMotor/SW4STM32/syscalls.c Example/SW4STM32/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../../../Inc -I../../../Inc/NUCLEO-F401RE -I../../../../../../../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../../../../../../../Drivers/BSP/Components/L6470 -I../../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../../Drivers/BSP/STM32F4xx-Nucleo -I../../../../../../../../Drivers/BSP/X-NUCLEO-IHM02A1 -I../../../../../../../../Drivers/BSP/X-NUCLEO-IHM02A1/NUCLEO-F401RE -O1 -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Example-2f-SW4STM32

clean-Example-2f-SW4STM32:
	-$(RM) ./Example/SW4STM32/startup_stm32f401xe.d ./Example/SW4STM32/startup_stm32f401xe.o ./Example/SW4STM32/syscalls.cyclo ./Example/SW4STM32/syscalls.d ./Example/SW4STM32/syscalls.o ./Example/SW4STM32/syscalls.su

.PHONY: clean-Example-2f-SW4STM32

