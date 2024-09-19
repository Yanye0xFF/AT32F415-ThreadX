################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/app/main.c 

C_DEPS += \
./src/app/main.d 

OBJS += \
./src/app/main.o 


# Each subdirectory must supply rules for building sources it contributes
src/app/%.o: ../src/app/%.c src/app/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -march=armv7e-m -mthumb -mlittle-endian -mfloat-abi=soft -munaligned-access -O2 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -ffreestanding -Wunused -Wuninitialized -Wall -Wextra -Wshadow -Wlogical-op -Waggregate-return -Wfloat-equal -g -ggdb -DAT32F415RCT7 -DUSE_STDPERIPH_DRIVER -DTX_INCLUDE_USER_DEFINE_FILE -I"../src/cmsis" -I"../src/device" -I"../src/stdperiph/inc" -I"../src/threadx/inc" -I"../src/rtthread/include" -I"../src/bsp" -I"../src/components/rtt" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


