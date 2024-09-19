################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../src/libcpu/at32f415_crt0.S \
../src/libcpu/exception_gcc.S \
../src/libcpu/tx_initialize_low_level.S \
../src/libcpu/tx_thread_context_restore.S \
../src/libcpu/tx_thread_context_save.S \
../src/libcpu/tx_thread_interrupt_control.S \
../src/libcpu/tx_thread_interrupt_disable.S \
../src/libcpu/tx_thread_interrupt_restore.S \
../src/libcpu/tx_thread_schedule.S \
../src/libcpu/tx_thread_stack_build.S \
../src/libcpu/tx_thread_system_return.S \
../src/libcpu/tx_timer_interrupt.S 

C_SRCS += \
../src/libcpu/cpuport.c 

C_DEPS += \
./src/libcpu/cpuport.d 

OBJS += \
./src/libcpu/at32f415_crt0.o \
./src/libcpu/cpuport.o \
./src/libcpu/exception_gcc.o \
./src/libcpu/tx_initialize_low_level.o \
./src/libcpu/tx_thread_context_restore.o \
./src/libcpu/tx_thread_context_save.o \
./src/libcpu/tx_thread_interrupt_control.o \
./src/libcpu/tx_thread_interrupt_disable.o \
./src/libcpu/tx_thread_interrupt_restore.o \
./src/libcpu/tx_thread_schedule.o \
./src/libcpu/tx_thread_stack_build.o \
./src/libcpu/tx_thread_system_return.o \
./src/libcpu/tx_timer_interrupt.o 

S_UPPER_DEPS += \
./src/libcpu/at32f415_crt0.d \
./src/libcpu/exception_gcc.d \
./src/libcpu/tx_initialize_low_level.d \
./src/libcpu/tx_thread_context_restore.d \
./src/libcpu/tx_thread_context_save.d \
./src/libcpu/tx_thread_interrupt_control.d \
./src/libcpu/tx_thread_interrupt_disable.d \
./src/libcpu/tx_thread_interrupt_restore.d \
./src/libcpu/tx_thread_schedule.d \
./src/libcpu/tx_thread_stack_build.d \
./src/libcpu/tx_thread_system_return.d \
./src/libcpu/tx_timer_interrupt.d 


# Each subdirectory must supply rules for building sources it contributes
src/libcpu/%.o: ../src/libcpu/%.S src/libcpu/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross Assembler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -march=armv7e-m -mthumb -mlittle-endian -mfloat-abi=soft -munaligned-access -O2 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -ffreestanding -Wunused -Wuninitialized -Wall -Wextra -Wshadow -Wlogical-op -Waggregate-return -Wfloat-equal -g -ggdb -x assembler-with-cpp -DAT32F415RCT7 -DUSE_STDPERIPH_DRIVER -DTX_INCLUDE_USER_DEFINE_FILE -I"../src/cmsis" -I"../src/device" -I"../src/threadx/inc" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/libcpu/%.o: ../src/libcpu/%.c src/libcpu/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -march=armv7e-m -mthumb -mlittle-endian -mfloat-abi=soft -munaligned-access -O2 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -ffreestanding -Wunused -Wuninitialized -Wall -Wextra -Wshadow -Wlogical-op -Waggregate-return -Wfloat-equal -g -ggdb -DAT32F415RCT7 -DUSE_STDPERIPH_DRIVER -DTX_INCLUDE_USER_DEFINE_FILE -I"../src/cmsis" -I"../src/device" -I"../src/stdperiph/inc" -I"../src/threadx/inc" -I"../src/rtthread/include" -I"../src/bsp" -I"../src/components/rtt" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


