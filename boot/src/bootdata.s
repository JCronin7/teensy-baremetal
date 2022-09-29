
.global startup
.global _estack
.global _flashimagelen

.section ".vectors"
    .long   0x20010000 /* 64K DTCM for boot, ResetHandler configures stack after ITCM/DTCM setup */
    .long   startup

.section ".bootdata"
    .long   0x60000000
    .long   _flashimagelen
    .long   0x00000000

.section ".ivt"
    .long   0x402000D1                  /* header */
    .long   vector_table                /* docs are wrong, needs to be vec table, not start addr */
    .long   0x00000000                  /* reserved */
    .long   0x00000000                  /* dcd */
    .long   BootData                    /* abs address of boot data */
    .long   ImageVectorTable            /* self */
    .long   0x00000000                  /* command sequence file */
    .long   0x00000000                  /* reserved */

.section ".flashconfig"
    /* 448 byte common FlexSPI configuration block, 8.6.3.1 page 223 (RT1060 rev 0) */
    /* MCU_Flashloader_Reference_Manual.pdf, 8.2.1, Table 8-2, page 72-75 */
    .long   0x42464346  /* Tag 0x00 */
    .long   0x56010000  /* Version */
    .long   0           /* reserved */
    .long   0x00020101  /* columnAdressWidth,dataSetupTime,dataHoldTime,readSampleClkSrc */

    .long   0x00000000  /* waitTimeCfgCommands,-,deviceModeCfgEnable */
    .long   0           /* deviceModeSeq */
    .long   0           /* deviceModeArg */
    .long   0x00000000  /* -,-,-,configCmdEnable */

    .long   0  /* configCmdSeqs 0x20 */
    .long   0
    .long   0
    .long   0

    .long   0  /* cfgCmdArgs 0x30 */
    .long   0
    .long   0
    .long   0

    .long   0x00000000  /* controllerMiscOption 0x40 */
    .long   0x00030401  /* lutCustomSeqEnable,serialClkFreq,sflashPadType,deviceType */
    .long   0           /* reserved */
    .long   0           /* reserved */

    .long   0x00200000  /* sflashA1Size 0x50 */
    .long   0           /* sflashA2Size */
    .long   0           /* sflashB1Size */
    .long   0           /* sflashB2Size */

    .long   0  /* csPadSettingOverride 0x60 */
    .long   0  /* sclkPadSettingOverride */
    .long   0  /* dataPadSettingOverride */
    .long   0  /* dqsPadSettingOverride */

    .long   0           /* timeoutInMs 0x70 */
    .long   0           /* commandInterval */
    .long   0           /* dataValidTime */
    .long   0x00000000  /* busyBitPolarity,busyOffset */

    .long   0x0A1804EB  /* lookupTable[0] 0x80 */
    .long   0x26043206  /* lookupTable[1] */
    .long   0           /* lookupTable[2] */
    .long   0           /* lookupTable[3] */

    .long   0x24040405  /* lookupTable[4]        0x90 */
    .long   0           /* lookupTable[5] */
    .long   0           /* lookupTable[6] */
    .long   0           /* lookupTable[7] */

    .long   0  /* lookupTable[8]        0xA0 */
    .long   0  /* lookupTable[9] */
    .long   0  /* lookupTable[10] */
    .long   0  /* lookupTable[11] */

    .long   0x00000406  /* lookupTable[12]        0xB0 */
    .long   0           /* lookupTable[13] */
    .long   0           /* lookupTable[14] */
    .long   0           /* lookupTable[15] */

    .long   0  /* lookupTable[16]        0xC0 */
    .long   0  /* lookupTable[17] */
    .long   0  /* lookupTable[18] */
    .long   0  /* lookupTable[19] */

    .long   0x08180420  /* lookupTable[20]        0xD0 */
    .long   0           /* lookupTable[21] */
    .long   0           /* lookupTable[22] */
    .long   0           /* lookupTable[23] */

    .long   0  /* lookupTable[24]        0xE0 */
    .long   0  /* lookupTable[25] */
    .long   0  /* lookupTable[26] */
    .long   0  /* lookupTable[27] */

    .long   0  /* lookupTable[28]        0xF0 */
    .long   0  /* lookupTable[29] */
    .long   0  /* lookupTable[30] */
    .long   0  /* lookupTable[31] */

    .long   0x081804D8  /* lookupTable[32]        0x100 */
    .long   0           /* lookupTable[33] */
    .long   0           /* lookupTable[34] */
    .long   0           /* lookupTable[35] */

    .long   0x08180402  /* lookupTable[36]        0x110 */
    .long   0x00002004  /* lookupTable[37] */
    .long   0           /* lookupTable[38] */
    .long   0           /* lookupTable[39] */

    .long   0  /* lookupTable[40]        0x120 */
    .long   0  /* lookupTable[41] */
    .long   0  /* lookupTable[42] */
    .long   0  /* lookupTable[43] */

    .long   0x00000460  /* lookupTable[44]        0x130 */
    .long   0           /* lookupTable[45] */
    .long   0           /* lookupTable[46] */
    .long   0           /* lookupTable[47] */

    .long   0  /* lookupTable[48]        0x140 */
    .long   0  /* lookupTable[49] */
    .long   0  /* lookupTable[50] */
    .long   0  /* lookupTable[51] */

    .long   0  /* lookupTable[52]        0x150 */
    .long   0  /* lookupTable[53] */
    .long   0  /* lookupTable[54] */
    .long   0  /* lookupTable[55] */

    .long   0  /* lookupTable[56]        0x160 */
    .long   0  /* lookupTable[57] */
    .long   0  /* lookupTable[58] */
    .long   0  /* lookupTable[59] */

    .long   0  /* lookupTable[60]        0x170 */
    .long   0  /* lookupTable[61] */
    .long   0  /* lookupTable[62] */
    .long   0  /* lookupTable[63] */

    .long   0  /* LUT 0: Read            0x180 */
    .long   0  /* LUT 1: ReadStatus */
    .long   0  /* LUT 3: WriteEnable */
    .long   0  /* LUT 5: EraseSector */

    .long   0  /* LUT 9: PageProgram        0x190 */
    .long   0  /* LUT 11: ChipErase */
    .long   0  /* LUT 15: Dummy */
    .long   0  /* LUT unused? */

    .long   0  /* LUT unused?            0x1A0 */
    .long   0  /* LUT unused? */
    .long   0  /* LUT unused? */
    .long   0  /* LUT unused? */

    .long   0  /* reserved            0x1B0 */
    .long   0  /* reserved */
    .long   0  /* reserved */
    .long   0  /* reserved */

    /* 64 byte Serial NOR configuration block, 8.6.3.2, page 346

    .long   256   /* pageSize            0x1C0 */
    .long   4096  /* sectorSize */
    .long   1     /* ipCmdSerialClkFreq */
    .long   0     /* reserved */

    .long   0x00010000  /* block size            0x1D0 */
    .long   0           /* reserved */
    .long   0           /* reserved */
    .long   0           /* reserved */

    .long   0  /* reserved            0x1E0 */
    .long   0  /* reserved */
    .long   0  /* reserved */
    .long   0  /* reserved */

    .long   0  /* reserved            0x1F0 */
    .long   0  /* reserved */
    .long   0  /* reserved */
    .long   0  /* reserved */
