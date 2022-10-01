/**************************************************************************
 * @file     startup_<Device>.S
 * @brief    CMSIS-Core(M) Device Startup File for
 *           Device <Device> (using Arm Compiler 6 with scatter file)
 * @version  V1.0.0
 * @date     20. January 2021
 *************************************************************************/

    .syntax unified
    .arch   armv7e-m

    .global _stextload
    .global _stext
    .global _etext
    .global _sdataload
    .global _sdata
    .global _edata
    .global _sbss
    .global _ebss
    .global _flexram_bank_config
    .global _estack
    .global main

    .section .startup
    .global __startup
__startup:
    mov r1, #10
    bl  __main_veneer

    .global __main_veneer
__main_veneer:
    mov r0, main
    ldr pc, r0