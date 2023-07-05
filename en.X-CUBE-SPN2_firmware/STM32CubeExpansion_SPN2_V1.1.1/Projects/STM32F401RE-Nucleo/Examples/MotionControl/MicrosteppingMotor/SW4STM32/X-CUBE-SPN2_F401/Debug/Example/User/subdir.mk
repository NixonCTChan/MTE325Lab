################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/ssvis/dev/MTE325Lab/en.X-CUBE-SPN2_firmware/STM32CubeExpansion_SPN2_V1.1.1/Projects/STM32F401RE-Nucleo/Examples/MotionControl/MicrosteppingMotor/Src/example.c \
C:/Users/ssvis/dev/MTE325Lab/en.X-CUBE-SPN2_firmware/STM32CubeExpansion_SPN2_V1.1.1/Projects/STM32F401RE-Nucleo/Examples/MotionControl/MicrosteppingMotor/Src/example_usart.c \
C:/Users/ssvis/dev/MTE325Lab/en.X-CUBE-SPN2_firmware/STM32CubeExpansion_SPN2_V1.1.1/Projects/STM32F401RE-Nucleo/Examples/MotionControl/MicrosteppingMotor/Src/main.c \
C:/Users/ssvis/dev/MTE325Lab/en.X-CUBE-SPN2_firmware/STM32CubeExpansion_SPN2_V1.1.1/Projects/STM32F401RE-Nucleo/Examples/MotionControl/MicrosteppingMotor/Src/params.c \
C:/Users/ssvis/dev/MTE325Lab/en.X-CUBE-SPN2_firmware/STM32CubeExpansion_SPN2_V1.1.1/Projects/STM32F401RE-Nucleo/Examples/MotionControl/MicrosteppingMotor/Src/stm32f4xx_hal_msp.c \
C:/Users/ssvis/dev/MTE325Lab/en.X-CUBE-SPN2_firmware/STM32CubeExpansion_SPN2_V1.1.1/Projects/STM32F401RE-Nucleo/Examples/MotionControl/MicrosteppingMotor/Src/stm32f4xx_it.c 

OBJS += \
./Example/User/example.o \
./Example/User/example_usart.o \
./Example/User/main.o \
./Example/User/params.o \
./Example/User/stm32f4xx_hal_msp.o \
./Example/User/stm32f4xx_it.o 

C_DEPS += \
./Example/User/example.d \
./Example/User/example_usart.d \
./Example/User/main.d \
./Example/User/params.d \
./Example/User/stm32f4xx_hal_msp.d \
./Example/User/stm32f4xx_it.d 


# Each subdirectory must supply rules for building sources it contributes
Example/User/example.o: C:/Users/ssvis/dev/MTE325Lab/en.X-CUBE-SPN2_firmware/STM32CubeExpansion_SPN2_V1.1.1/Projects/STM32F401RE-Nucleo/Examples/MotionControl/MicrosteppingMotor/Src/example.c Example/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../../../Inc -I../../../Inc/NUCLEO-F401RE -I../../../../../../../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../../../../../../../Drivers/BSP/Components/L6470 -I../../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../../Drivers/BSP/STM32F4xx-Nucleo -I../../../../../../../../Drivers/BSP/X-NUCLEO-IHM02A1 -I../../../../../../../../Drivers/BSP/X-NUCLEO-IHM02A1/NUCLEO-F401RE -O1 -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Example/User/example_usart.o: C:/Users/ssvis/dev/MTE325Lab/en.X-CUBE-SPN2_firmware/STM32CubeExpansion_SPN2_V1.1.1/Projects/STM32F401RE-Nucleo/Examples/MotionControl/MicrosteppingMotor/Src/example_usart.c Example/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../../../Inc -I../../../Inc/NUCLEO-F401RE -I../../../../../../../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../../../../../../../Drivers/BSP/Components/L6470 -I../../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../../Drivers/BSP/STM32F4xx-Nucleo -I../../../../../../../../Drivers/BSP/X-NUCLEO-IHM02A1 -I../../../../../../../../Drivers/BSP/X-NUCLEO-IHM02A1/NUCLEO-F401RE -O1 -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Example/User/main.o: C:/Users/ssvis/dev/MTE325Lab/en.X-CUBE-SPN2_firmware/STM32CubeExpansion_SPN2_V1.1.1/Projects/STM32F401RE-Nucleo/Examples/MotionControl/MicrosteppingMotor/Src/main.c Example/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../../../Inc -I../../../Inc/NUCLEO-F401RE -I../../../../../../../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../../../../../../../Drivers/BSP/Components/L6470 -I../../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../../Drivers/BSP/STM32F4xx-Nucleo -I../../../../../../../../Drivers/BSP/X-NUCLEO-IHM02A1 -I../../../../../../../../Drivers/BSP/X-NUCLEO-IHM02A1/NUCLEO-F401RE -O1 -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Example/User/params.o: C:/Users/ssvis/dev/MTE325Lab/en.X-CUBE-SPN2_firmware/STM32CubeExpansion_SPN2_V1.1.1/Projects/STM32F401RE-Nucleo/Examples/MotionControl/MicrosteppingMotor/Src/params.c Example/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../../../Inc -I../../../Inc/NUCLEO-F401RE -I../../../../../../../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../../../../../../../Drivers/BSP/Components/L6470 -I../../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../../Drivers/BSP/STM32F4xx-Nucleo -I../../../../../../../../Drivers/BSP/X-NUCLEO-IHM02A1 -I../../../../../../../../Drivers/BSP/X-NUCLEO-IHM02A1/NUCLEO-F401RE -O1 -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Example/User/stm32f4xx_hal_msp.o: C:/Users/ssvis/dev/MTE325Lab/en.X-CUBE-SPN2_firmware/STM32CubeExpansion_SPN2_V1.1.1/Projects/STM32F401RE-Nucleo/Examples/MotionControl/MicrosteppingMotor/Src/stm32f4xx_hal_msp.c Example/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../../../Inc -I../../../Inc/NUCLEO-F401RE -I../../../../../../../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../../../../../../../Drivers/BSP/Components/L6470 -I../../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../../Drivers/BSP/STM32F4xx-Nucleo -I../../../../../../../../Drivers/BSP/X-NUCLEO-IHM02A1 -I../../../../../../../../Drivers/BSP/X-NUCLEO-IHM02A1/NUCLEO-F401RE -O1 -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Example/User/stm32f4xx_it.o: C:/Users/ssvis/dev/MTE325Lab/en.X-CUBE-SPN2_firmware/STM32CubeExpansion_SPN2_V1.1.1/Projects/STM32F401RE-Nucleo/Examples/MotionControl/MicrosteppingMotor/Src/stm32f4xx_it.c Example/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../../../Inc -I../../../Inc/NUCLEO-F401RE -I../../../../../../../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../../../../../../../Drivers/BSP/Components/L6470 -I../../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../../Drivers/BSP/STM32F4xx-Nucleo -I../../../../../../../../Drivers/BSP/X-NUCLEO-IHM02A1 -I../../../../../../../../Drivers/BSP/X-NUCLEO-IHM02A1/NUCLEO-F401RE -O1 -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Example-2f-User

clean-Example-2f-User:
	-$(RM) ./Example/User/example.cyclo ./Example/User/example.d ./Example/User/example.o ./Example/User/example.su ./Example/User/example_usart.cyclo ./Example/User/example_usart.d ./Example/User/example_usart.o ./Example/User/example_usart.su ./Example/User/main.cyclo ./Example/User/main.d ./Example/User/main.o ./Example/User/main.su ./Example/User/params.cyclo ./Example/User/params.d ./Example/User/params.o ./Example/User/params.su ./Example/User/stm32f4xx_hal_msp.cyclo ./Example/User/stm32f4xx_hal_msp.d ./Example/User/stm32f4xx_hal_msp.o ./Example/User/stm32f4xx_hal_msp.su ./Example/User/stm32f4xx_it.cyclo ./Example/User/stm32f4xx_it.d ./Example/User/stm32f4xx_it.o ./Example/User/stm32f4xx_it.su

.PHONY: clean-Example-2f-User

