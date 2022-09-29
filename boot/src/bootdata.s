
.global startup
.global _estack
.global _flashimagelen

.section ".vectors"
    .long   0x20010000

.section ".bootdata"
    .long   0x20010000

.section ".ivt"
    .long   0x20010000

.section ".flashconfig"
    .long   0x20010000