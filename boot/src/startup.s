/**************************************************************************
 * @file     startup_<Device>.S
 * @brief    CMSIS-Core(M) Device Startup File for
 *           Device <Device> (using Arm Compiler 6 with scatter file)
 * @version  V1.0.0
 * @date     20. January 2021
 *************************************************************************/

.syntax unified

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

.section ".text"

.global startup

startup:
    mov r1, #10
    b   main