# assembler directives
.set noat      # allow manual use of $1
.set noreorder # don't insert nops after branches

.include "globals.inc"
.include "macros.inc"

glabel func_8004E3E0
/* 04EFE0 8004E3E0 27BDFFD0 */  addiu $29, $29, -0x30
/* 04EFE4 8004E3E4 AFBF0028 */  sw    $31, 0x28($29)
/* 04EFE8 8004E3E8 AFB30024 */  sw    $19, 0x24($29)
/* 04EFEC 8004E3EC AFB20020 */  sw    $18, 0x20($29)
/* 04EFF0 8004E3F0 AFB1001C */  sw    $17, 0x1c($29)
/* 04EFF4 8004E3F4 AFB00018 */  sw    $16, 0x18($29)
/* 04EFF8 8004E3F8 00808821 */  addu  $17, $4, $0
/* 04EFFC 8004E3FC 00A08021 */  addu  $16, $5, $0
/* 04F000 8004E400 00C09021 */  addu  $18, $6, $0
/* 04F004 8004E404 00E09821 */  addu  $19, $7, $0
/* 04F008 8004E408 3C028005 */  lui   $2, %hi(func_8004E248) # $2, 0x8005
/* 04F00C 8004E40C 2442E248 */  addiu $2, %lo(func_8004E248) # addiu $2, $2, -0x1db8
/* 04F010 8004E410 AFA20010 */  sw    $2, 0x10($29)
/* 04F014 8004E414 24041000 */  li    $4, 4096
/* 04F018 8004E418 00002821 */  addu  $5, $0, $0
/* 04F01C 8004E41C 00003021 */  addu  $6, $0, $0
/* 04F020 8004E420 0C0174E1 */  jal   func_8005D384
/* 04F024 8004E424 2407FFFF */   li    $7, -1
/* 04F028 8004E428 00402821 */  addu  $5, $2, $0
/* 04F02C 8004E42C A0B1004C */  sb    $17, 0x4c($5)
/* 04F030 8004E430 A0B2004D */  sb    $18, 0x4d($5)
/* 04F034 8004E434 C6000000 */  lwc1  $f0, ($16)
/* 04F038 8004E438 E4A00018 */  swc1  $f0, 0x18($5)
/* 04F03C 8004E43C C6000004 */  lwc1  $f0, 4($16)
/* 04F040 8004E440 E4A0001C */  swc1  $f0, 0x1c($5)
/* 04F044 8004E444 C6000008 */  lwc1  $f0, 8($16)
/* 04F048 8004E448 16600020 */  bnez  $19, .L8004E4CC
/* 04F04C 8004E44C E4A00020 */   swc1  $f0, 0x20($5)
/* 04F050 8004E450 00111040 */  sll   $2, $17, 1
/* 04F054 8004E454 00511021 */  addu  $2, $2, $17
/* 04F058 8004E458 00021100 */  sll   $2, $2, 4
/* 04F05C 8004E45C 3C03800F */  lui   $3, 0x800f
/* 04F060 8004E460 00621821 */  addu  $3, $3, $2
/* 04F064 8004E464 8C6332D0 */  lw    $3, 0x32d0($3)
/* 04F068 8004E468 C6000000 */  lwc1  $f0, ($16)
/* 04F06C 8004E46C C462000C */  lwc1  $f2, 0xc($3)
/* 04F070 8004E470 46020001 */  sub.s $f0, $f0, $f2
/* 04F074 8004E474 44922000 */  mtc1  $18, $f4
/* 04F078 8004E478 00000000 */  nop   
/* 04F07C 8004E47C 46802120 */  cvt.s.w $f4, $f4
/* 04F080 8004E480 46040003 */  div.s $f0, $f0, $f4
/* 04F084 8004E484 E4A00030 */  swc1  $f0, 0x30($5)
/* 04F088 8004E488 3C03800F */  lui   $3, 0x800f
/* 04F08C 8004E48C 00621821 */  addu  $3, $3, $2
/* 04F090 8004E490 8C6332D0 */  lw    $3, 0x32d0($3)
/* 04F094 8004E494 C6000004 */  lwc1  $f0, 4($16)
/* 04F098 8004E498 C4620010 */  lwc1  $f2, 0x10($3)
/* 04F09C 8004E49C 46020001 */  sub.s $f0, $f0, $f2
/* 04F0A0 8004E4A0 46040003 */  div.s $f0, $f0, $f4
/* 04F0A4 8004E4A4 E4A00034 */  swc1  $f0, 0x34($5)
/* 04F0A8 8004E4A8 3C01800F */  lui   $1, 0x800f
/* 04F0AC 8004E4AC 00220821 */  addu  $1, $1, $2
/* 04F0B0 8004E4B0 8C2232D0 */  lw    $2, 0x32d0($1)
/* 04F0B4 8004E4B4 C6000008 */  lwc1  $f0, 8($16)
/* 04F0B8 8004E4B8 C4420014 */  lwc1  $f2, 0x14($2)
/* 04F0BC 8004E4BC 08013943 */  j     .L8004E50C
/* 04F0C0 8004E4C0 46020001 */   sub.s $f0, $f0, $f2

.L8004E4C4:
/* 04F0C4 8004E4C4 08013951 */  j     .L8004E544
/* 04F0C8 8004E4C8 AC850000 */   sw    $5, ($4)

.L8004E4CC:
/* 04F0CC 8004E4CC C6000000 */  lwc1  $f0, ($16)
/* 04F0D0 8004E4D0 C662000C */  lwc1  $f2, 0xc($19)
/* 04F0D4 8004E4D4 46020001 */  sub.s $f0, $f0, $f2
/* 04F0D8 8004E4D8 44922000 */  mtc1  $18, $f4
/* 04F0DC 8004E4DC 00000000 */  nop   
/* 04F0E0 8004E4E0 46802120 */  cvt.s.w $f4, $f4
/* 04F0E4 8004E4E4 46040003 */  div.s $f0, $f0, $f4
/* 04F0E8 8004E4E8 E4A00030 */  swc1  $f0, 0x30($5)
/* 04F0EC 8004E4EC C6000004 */  lwc1  $f0, 4($16)
/* 04F0F0 8004E4F0 C6620010 */  lwc1  $f2, 0x10($19)
/* 04F0F4 8004E4F4 46020001 */  sub.s $f0, $f0, $f2
/* 04F0F8 8004E4F8 46040003 */  div.s $f0, $f0, $f4
/* 04F0FC 8004E4FC E4A00034 */  swc1  $f0, 0x34($5)
/* 04F100 8004E500 C6000008 */  lwc1  $f0, 8($16)
/* 04F104 8004E504 C6620014 */  lwc1  $f2, 0x14($19)
/* 04F108 8004E508 46020001 */  sub.s $f0, $f0, $f2
.L8004E50C:
/* 04F10C 8004E50C 46040003 */  div.s $f0, $f0, $f4
/* 04F110 8004E510 E4A00038 */  swc1  $f0, 0x38($5)
/* 04F114 8004E514 ACB30050 */  sw    $19, 0x50($5)
/* 04F118 8004E518 00001821 */  addu  $3, $0, $0
/* 04F11C 8004E51C 3C06800F */  lui   $6, %hi(D_800F50C0) # $6, 0x800f
/* 04F120 8004E520 24C650C0 */  addiu $6, %lo(D_800F50C0) # addiu $6, $6, 0x50c0
/* 04F124 8004E524 00031080 */  sll   $2, $3, 2
.L8004E528:
/* 04F128 8004E528 00462021 */  addu  $4, $2, $6
/* 04F12C 8004E52C 8C820000 */  lw    $2, ($4)
/* 04F130 8004E530 1040FFE4 */  beqz  $2, .L8004E4C4
/* 04F134 8004E534 24630001 */   addiu $3, $3, 1
/* 04F138 8004E538 28620020 */  slti  $2, $3, 0x20
/* 04F13C 8004E53C 1440FFFA */  bnez  $2, .L8004E528
/* 04F140 8004E540 00031080 */   sll   $2, $3, 2
.L8004E544:
/* 04F144 8004E544 00A01021 */  addu  $2, $5, $0
/* 04F148 8004E548 8FBF0028 */  lw    $31, 0x28($29)
/* 04F14C 8004E54C 8FB30024 */  lw    $19, 0x24($29)
/* 04F150 8004E550 8FB20020 */  lw    $18, 0x20($29)
/* 04F154 8004E554 8FB1001C */  lw    $17, 0x1c($29)
/* 04F158 8004E558 8FB00018 */  lw    $16, 0x18($29)
/* 04F15C 8004E55C 03E00008 */  jr    $31
/* 04F160 8004E560 27BD0030 */   addiu $29, $29, 0x30

.set at
.set reorder