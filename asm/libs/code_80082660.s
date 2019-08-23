# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64

.include "globals.inc"
.include "macros.inc"

glabel func_80082660
/* 083260 80082660 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 083264 80082664 AFBF001C */  sw    $ra, 0x1c($sp)
/* 083268 80082668 0C022FE9 */  jal   func_8008BFA4
/* 08326C 8008266C AFB00018 */   sw    $s0, 0x18($sp)
/* 083270 80082670 3C0E800C */  lui   $t6, %hi(D_800C63E0) # $t6, 0x800c
/* 083274 80082674 8DCE63E0 */  lw    $t6, %lo(D_800C63E0)($t6)
/* 083278 80082678 3C10800F */  lui   $s0, %hi(D_800E9890) # $s0, 0x800f
/* 08327C 8008267C 26109890 */  addiu $s0, %lo(D_800E9890) # addiu $s0, $s0, -0x6770
/* 083280 80082680 15C00006 */  bnez  $t6, .L8008269C
/* 083284 80082684 3C01800C */   lui   $at, %hi(D_800C63E0) # $at, 0x800c
/* 083288 80082688 0C023004 */  jal   func_8008C010
/* 08328C 8008268C 00000000 */   nop
/* 083290 80082690 3C10800F */  lui   $s0, %hi(D_800F0005) # $s0, 0x800f
/* 083294 80082694 10000043 */  b     .L800827A4
/* 083298 80082698 26029890 */   addiu $v0, $s0, -0x6770
.L8008269C:
/* 08329C 8008269C AC2063E0 */  sw    $zero, %lo(D_800C63E0)($at)
/* 0832A0 800826A0 240F0001 */  li    $t7, 1
/* 0832A4 800826A4 3C18A600 */  lui   $t8, 0xa600
/* 0832A8 800826A8 3C04800F */  lui   $a0, %hi(D_800E98A4) # $a0, 0x800f
/* 0832AC 800826AC A20F0004 */  sb    $t7, %lo(D_800F0004)($s0)
/* 0832B0 800826B0 AE18000C */  sw    $t8, %lo(D_800F000C)($s0)
/* 0832B4 800826B4 A2000009 */  sb    $zero, %lo(D_800F0009)($s0)
/* 0832B8 800826B8 AE000010 */  sw    $zero, %lo(D_800F0010)($s0)
/* 0832BC 800826BC 248498A4 */  addiu $a0, %lo(D_800E98A4) # addiu $a0, $a0, -0x675c
/* 0832C0 800826C0 0C0230D8 */  jal   bzero
/* 0832C4 800826C4 24050060 */   li    $a1, 96
/* 0832C8 800826C8 3C03A460 */  lui   $v1, (0xA4600010 >> 16) # lui $v1, 0xa460
/* 0832CC 800826CC 34630010 */  ori   $v1, (0xA4600010 & 0xFFFF) # ori $v1, $v1, 0x10
/* 0832D0 800826D0 8C620000 */  lw    $v0, ($v1)
/* 0832D4 800826D4 3C07A460 */  lui   $a3, (0xA4600014 >> 16) # lui $a3, 0xa460
/* 0832D8 800826D8 34E70014 */  ori   $a3, (0xA4600014 & 0xFFFF) # ori $a3, $a3, 0x14
/* 0832DC 800826DC 30590003 */  andi  $t9, $v0, 3
/* 0832E0 800826E0 13200005 */  beqz  $t9, .L800826F8
/* 0832E4 800826E4 3C08A460 */   lui   $t0, (0xA460001C >> 16) # lui $t0, 0xa460
/* 0832E8 800826E8 8C620000 */  lw    $v0, ($v1)
.L800826EC:
/* 0832EC 800826EC 304C0003 */  andi  $t4, $v0, 3
/* 0832F0 800826F0 5580FFFE */  bnezl $t4, .L800826EC
/* 0832F4 800826F4 8C620000 */   lw    $v0, ($v1)
.L800826F8:
/* 0832F8 800826F8 8CE30000 */  lw    $v1, ($a3)
/* 0832FC 800826FC 3508001C */  ori   $t0, (0xA460001C & 0xFFFF) # ori $t0, $t0, 0x1c
/* 083300 80082700 3C09A460 */  lui   $t1, (0xA4600020 >> 16) # lui $t1, 0xa460
/* 083304 80082704 8D040000 */  lw    $a0, ($t0)
/* 083308 80082708 35290020 */  ori   $t1, (0xA4600020 & 0xFFFF) # ori $t1, $t1, 0x20
/* 08330C 8008270C 3C0AA460 */  lui   $t2, (0xA4600018 >> 16) # lui $t2, 0xa460
/* 083310 80082710 8D250000 */  lw    $a1, ($t1)
/* 083314 80082714 354A0018 */  ori   $t2, (0xA4600018 & 0xFFFF) # ori $t2, $t2, 0x18
/* 083318 80082718 8D460000 */  lw    $a2, ($t2)
/* 08331C 8008271C 240B00FF */  li    $t3, 255
/* 083320 80082720 ACEB0000 */  sw    $t3, ($a3)
/* 083324 80082724 AD000000 */  sw    $zero, ($t0)
/* 083328 80082728 240D0003 */  li    $t5, 3
/* 08332C 8008272C AD2D0000 */  sw    $t5, ($t1)
/* 083330 80082730 AD4B0000 */  sw    $t3, ($t2)
/* 083334 80082734 8E0E000C */  lw    $t6, %lo(D_800F000C)($s0)
/* 083338 80082738 3C01A000 */  lui   $at, 0xa000
/* 08333C 8008273C 01C17825 */  or    $t7, $t6, $at
/* 083340 80082740 8DE20000 */  lw    $v0, ($t7)
/* 083344 80082744 0002CC02 */  srl   $t9, $v0, 0x10
/* 083348 80082748 00026D02 */  srl   $t5, $v0, 0x14
/* 08334C 8008274C 332C000F */  andi  $t4, $t9, 0xf
/* 083350 80082750 31AE000F */  andi  $t6, $t5, 0xf
/* 083354 80082754 0002C202 */  srl   $t8, $v0, 8
/* 083358 80082758 A20C0006 */  sb    $t4, %lo(D_800F0006)($s0)
/* 08335C 8008275C A20E0007 */  sb    $t6, %lo(D_800F0007)($s0)
/* 083360 80082760 A2180008 */  sb    $t8, %lo(D_800F0008)($s0)
/* 083364 80082764 A2020005 */  sb    $v0, %lo(D_800F0005)($s0)
/* 083368 80082768 ACE30000 */  sw    $v1, ($a3)
/* 08336C 8008276C AD040000 */  sw    $a0, ($t0)
/* 083370 80082770 AD250000 */  sw    $a1, ($t1)
/* 083374 80082774 0C024D48 */  jal   func_80093520
/* 083378 80082778 AD460000 */   sw    $a2, ($t2)
/* 08337C 8008277C 3C03800C */  lui   $v1, %hi(D_800C653C) # $v1, 0x800c
/* 083380 80082780 2463653C */  addiu $v1, %lo(D_800C653C) # addiu $v1, $v1, 0x653c
/* 083384 80082784 8C790000 */  lw    $t9, ($v1)
/* 083388 80082788 AC700000 */  sw    $s0, ($v1)
/* 08338C 8008278C 00402025 */   or  $a0, $v0, $zero
/* 083390 80082790 0C024D64 */  jal   func_80093590
/* 083394 80082794 AE190000 */   sw    $t9, ($s0)
/* 083398 80082798 0C023004 */  jal   func_8008C010
/* 08339C 8008279C 00000000 */   nop
/* 0833A0 800827A0 02001025 */   or  $v0, $s0, $zero
.L800827A4:
/* 0833A4 800827A4 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0833A8 800827A8 8FB00018 */  lw    $s0, 0x18($sp)
/* 0833AC 800827AC 27BD0020 */  addiu $sp, $sp, 0x20
/* 0833B0 800827B0 03E00008 */  jr    $ra
/* 0833B4 800827B4 00000000 */   nop

/* 0833B8 800827B8 00000000 */  nop
/* 0833BC 800827BC 00000000 */  nop
