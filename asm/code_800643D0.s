# Mario Party (U) disassembly and split file
# generated by n64split v0.4a - N64 ROM splitter

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64

.include "globals.inc"
.include "macros.inc"

glabel func_800643D0
/* 064FD0 800643D0 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 064FD4 800643D4 AFBF003C */  sw    $ra, 0x3c($sp)
/* 064FD8 800643D8 AFB20038 */  sw    $s2, 0x38($sp)
/* 064FDC 800643DC AFB10034 */  sw    $s1, 0x34($sp)
/* 064FE0 800643E0 AFB00030 */  sw    $s0, 0x30($sp)
/* 064FE4 800643E4 00808821 */  addu  $s1, $a0, $zero
/* 064FE8 800643E8 00A09021 */  addu  $s2, $a1, $zero
/* 064FEC 800643EC 8E420000 */  lw    $v0, ($s2)
/* 064FF0 800643F0 AE220044 */  sw    $v0, 0x44($s1)
/* 064FF4 800643F4 2402FFFF */  li    $v0, -1
/* 064FF8 800643F8 AE22003C */  sw    $v0, 0x3c($s1)
/* 064FFC 800643FC 24023E80 */  li    $v0, 16000
/* 065000 80064400 AE220048 */  sw    $v0, 0x48($s1)
/* 065004 80064404 8E430000 */  lw    $v1, ($s2)
/* 065008 80064408 00031040 */  sll   $v0, $v1, 1
/* 06500C 8006440C 00431021 */  addu  $v0, $v0, $v1
/* 065010 80064410 00021100 */  sll   $v0, $v0, 4
/* 065014 80064414 AFA20010 */  sw    $v0, 0x10($sp)
/* 065018 80064418 00002021 */  addu  $a0, $zero, $zero
/* 06501C 8006441C 00002821 */  addu  $a1, $zero, $zero
/* 065020 80064420 8E460008 */  lw    $a2, 8($s2)
/* 065024 80064424 0C02266C */  jal   func_800899B0
/* 065028 80064428 24070001 */   li    $a3, 1
/* 06502C 8006442C 00402021 */  addu  $a0, $v0, $zero
/* 065030 80064430 AE240040 */  sw    $a0, 0x40($s1)
/* 065034 80064434 8E420000 */  lw    $v0, ($s2)
/* 065038 80064438 1040000B */  beqz  $v0, .L80064468
/* 06503C 8006443C 00001821 */   addu  $v1, $zero, $zero
/* 065040 80064440 00031040 */  sll   $v0, $v1, 1
.L80064444:
/* 065044 80064444 00431021 */  addu  $v0, $v0, $v1
/* 065048 80064448 00021100 */  sll   $v0, $v0, 4
/* 06504C 8006444C 00441021 */  addu  $v0, $v0, $a0
/* 065050 80064450 AC40001C */  sw    $zero, 0x1c($v0)
/* 065054 80064454 24630001 */  addiu $v1, $v1, 1
/* 065058 80064458 8E420000 */  lw    $v0, ($s2)
/* 06505C 8006445C 0062102B */  sltu  $v0, $v1, $v0
/* 065060 80064460 1440FFF8 */  bnez  $v0, .L80064444
/* 065064 80064464 00031040 */   sll   $v0, $v1, 1
.L80064468:
/* 065068 80064468 8E430004 */  lw    $v1, 4($s2)
/* 06506C 8006446C 000310C0 */  sll   $v0, $v1, 3
/* 065070 80064470 00431023 */  subu  $v0, $v0, $v1
/* 065074 80064474 00021080 */  sll   $v0, $v0, 2
/* 065078 80064478 AFA20010 */  sw    $v0, 0x10($sp)
/* 06507C 8006447C 00002021 */  addu  $a0, $zero, $zero
/* 065080 80064480 00002821 */  addu  $a1, $zero, $zero
/* 065084 80064484 8E460008 */  lw    $a2, 8($s2)
/* 065088 80064488 0C02266C */  jal   func_800899B0
/* 06508C 8006448C 24070001 */   li    $a3, 1
/* 065090 80064490 26300014 */  addiu $s0, $s1, 0x14
/* 065094 80064494 02002021 */  addu  $a0, $s0, $zero
/* 065098 80064498 8E460004 */  lw    $a2, 4($s2)
/* 06509C 8006449C 0C02255C */  jal   func_80089570
/* 0650A0 800644A0 00402821 */   addu  $a1, $v0, $zero
/* 0650A4 800644A4 3C02800C */  lui   $v0, %hi(D_800C64D0) # $v0, 0x800c
/* 0650A8 800644A8 8C4264D0 */  lw    $v0, %lo(D_800C64D0)($v0)
/* 0650AC 800644AC AE220038 */  sw    $v0, 0x38($s1)
/* 0650B0 800644B0 AE200000 */  sw    $zero, ($s1)
/* 0650B4 800644B4 3C028006 */  lui   $v0, %hi(D_80064510) # $v0, 0x8006
/* 0650B8 800644B8 24424510 */  addiu $v0, %lo(D_80064510) # addiu $v0, $v0, 0x4510
/* 0650BC 800644BC AE220008 */  sw    $v0, 8($s1)
/* 0650C0 800644C0 AE310004 */  sw    $s1, 4($s1)
/* 0650C4 800644C4 8E240038 */  lw    $a0, 0x38($s1)
/* 0650C8 800644C8 0C022AE0 */  jal   func_8008AB80
/* 0650CC 800644CC 02202821 */   addu  $a1, $s1, $zero
/* 0650D0 800644D0 24020005 */  li    $v0, 5
/* 0650D4 800644D4 A7A20018 */  sh    $v0, 0x18($sp)
/* 0650D8 800644D8 02002021 */  addu  $a0, $s0, $zero
/* 0650DC 800644DC 8E260048 */  lw    $a2, 0x48($s1)
/* 0650E0 800644E0 0C0225A1 */  jal   func_80089684
/* 0650E4 800644E4 27A50018 */   addiu $a1, $sp, 0x18
/* 0650E8 800644E8 02002021 */  addu  $a0, $s0, $zero
/* 0650EC 800644EC 0C02257B */  jal   func_800895EC
/* 0650F0 800644F0 26250028 */   addiu $a1, $s1, 0x28
/* 0650F4 800644F4 AE22004C */  sw    $v0, 0x4c($s1)
/* 0650F8 800644F8 8FBF003C */  lw    $ra, 0x3c($sp)
/* 0650FC 800644FC 8FB20038 */  lw    $s2, 0x38($sp)
/* 065100 80064500 8FB10034 */  lw    $s1, 0x34($sp)
/* 065104 80064504 8FB00030 */  lw    $s0, 0x30($sp)
/* 065108 80064508 03E00008 */  jr    $ra
/* 06510C 8006450C 27BD0040 */   addiu $sp, $sp, 0x40

D_80064510:
/* 065110 80064510 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 065114 80064514 AFBF002C */  sw    $ra, 0x2c($sp)
/* 065118 80064518 AFB20028 */  sw    $s2, 0x28($sp)
/* 06511C 8006451C AFB10024 */  sw    $s1, 0x24($sp)
/* 065120 80064520 AFB00020 */  sw    $s0, 0x20($sp)
/* 065124 80064524 00808021 */  addu  $s0, $a0, $zero
/* 065128 80064528 24110005 */  li    $s1, 5
/* 06512C 8006452C 2412FFFF */  li    $s2, -1
.L80064530:
/* 065130 80064530 86020028 */  lh    $v0, 0x28($s0)
/* 065134 80064534 14510009 */  bne   $v0, $s1, .L8006455C
/* 065138 80064538 02002021 */   addu  $a0, $s0, $zero
/* 06513C 8006453C A7B10010 */  sh    $s1, 0x10($sp)
/* 065140 80064540 AFB20014 */  sw    $s2, 0x14($sp)
/* 065144 80064544 26040014 */  addiu $a0, $s0, 0x14
/* 065148 80064548 8E060048 */  lw    $a2, 0x48($s0)
/* 06514C 8006454C 0C0225A1 */  jal   func_80089684
/* 065150 80064550 27A50010 */   addiu $a1, $sp, 0x10
/* 065154 80064554 0801915A */  j     func_80064568
/* 065158 80064558 26040014 */   addiu $a0, $s0, 0x14

.L8006455C:
/* 06515C 8006455C 0C019169 */  jal   func_800645A4
/* 065160 80064560 26050028 */   addiu $a1, $s0, 0x28
/* 065164 80064564 26040014 */  addiu $a0, $s0, 0x14
glabel func_80064568
/* 065168 80064568 0C02257B */  jal   func_800895EC
/* 06516C 8006456C 26050028 */   addiu $a1, $s0, 0x28
/* 065170 80064570 1040FFEF */  beqz  $v0, .L80064530
/* 065174 80064574 AE02004C */   sw    $v0, 0x4c($s0)
/* 065178 80064578 8E020050 */  lw    $v0, 0x50($s0)
/* 06517C 8006457C 8E03004C */  lw    $v1, 0x4c($s0)
/* 065180 80064580 00431021 */  addu  $v0, $v0, $v1
/* 065184 80064584 AE020050 */  sw    $v0, 0x50($s0)
/* 065188 80064588 8E02004C */  lw    $v0, 0x4c($s0)
/* 06518C 8006458C 8FBF002C */  lw    $ra, 0x2c($sp)
/* 065190 80064590 8FB20028 */  lw    $s2, 0x28($sp)
/* 065194 80064594 8FB10024 */  lw    $s1, 0x24($sp)
/* 065198 80064598 8FB00020 */  lw    $s0, 0x20($sp)
/* 06519C 8006459C 03E00008 */  jr    $ra
/* 0651A0 800645A0 27BD0030 */   addiu $sp, $sp, 0x30

glabel func_800645A4
/* 0651A4 800645A4 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 0651A8 800645A8 AFBF0044 */  sw    $ra, 0x44($sp)
/* 0651AC 800645AC AFB60040 */  sw    $s6, 0x40($sp)
/* 0651B0 800645B0 AFB5003C */  sw    $s5, 0x3c($sp)
/* 0651B4 800645B4 AFB40038 */  sw    $s4, 0x38($sp)
/* 0651B8 800645B8 AFB30034 */  sw    $s3, 0x34($sp)
/* 0651BC 800645BC AFB20030 */  sw    $s2, 0x30($sp)
/* 0651C0 800645C0 AFB1002C */  sw    $s1, 0x2c($sp)
/* 0651C4 800645C4 AFB00028 */  sw    $s0, 0x28($sp)
/* 0651C8 800645C8 F7B40048 */  sdc1  $f20, 0x48($sp)
/* 0651CC 800645CC 8CB10004 */  lw    $s1, 4($a1)
/* 0651D0 800645D0 8E34001C */  lw    $s4, 0x1c($s1)
/* 0651D4 800645D4 84A30000 */  lh    $v1, ($a1)
/* 0651D8 800645D8 2C620009 */  sltiu $v0, $v1, 9
/* 0651DC 800645DC 10400104 */  beqz  $v0, .L800649F0
/* 0651E0 800645E0 00809821 */   addu  $s3, $a0, $zero
/* 0651E4 800645E4 00031080 */  sll   $v0, $v1, 2
/* 0651E8 800645E8 3C01800D */  lui   $at, 0x800d
/* 0651EC 800645EC 00220821 */  addu  $at, $at, $v0
/* 0651F0 800645F0 8C22B5D0 */  lw    $v0, -0x4a30($at)
/* 0651F4 800645F4 00400008 */  jr    $v0
/* 0651F8 800645F8 00000000 */   nop   
/* 0651FC 800645FC 8E220028 */  lw    $v0, 0x28($s1)
/* 065200 80064600 0002102B */  sltu  $v0, $zero, $v0
/* 065204 80064604 2E830001 */  sltiu $v1, $s4, 1
/* 065208 80064608 00431025 */  or    $v0, $v0, $v1
/* 06520C 8006460C 144000F8 */  bnez  $v0, .L800649F0
/* 065210 80064610 0220A821 */   addu  $s5, $s1, $zero
/* 065214 80064614 A7A00012 */  sh    $zero, 0x12($sp)
/* 065218 80064618 96220020 */  lhu   $v0, 0x20($s1)
/* 06521C 8006461C A7A20010 */  sh    $v0, 0x10($sp)
/* 065220 80064620 A3A00014 */  sb    $zero, 0x14($sp)
/* 065224 80064624 8E640038 */  lw    $a0, 0x38($s3)
/* 065228 80064628 02202821 */  addu  $a1, $s1, $zero
/* 06522C 8006462C 0C022B44 */  jal   func_8008AD10
/* 065230 80064630 27A60010 */   addiu $a2, $sp, 0x10
/* 065234 80064634 8E820000 */  lw    $v0, ($s4)
/* 065238 80064638 9042000C */  lbu   $v0, 0xc($v0)
/* 06523C 8006463C 8623002C */  lh    $v1, 0x2c($s1)
/* 065240 80064640 00430018 */  mult  $v0, $v1
/* 065244 80064644 00001012 */  mflo  $v0
/* 065248 80064648 3C038102 */  lui   $v1, (0x81020409 >> 16) # lui $v1, 0x8102
/* 06524C 8006464C 34630409 */  ori   $v1, (0x81020409 & 0xFFFF) # ori $v1, $v1, 0x409
/* 065250 80064650 00430018 */  mult  $v0, $v1
/* 065254 80064654 00004010 */  mfhi  $t0
/* 065258 80064658 01021821 */  addu  $v1, $t0, $v0
/* 06525C 8006465C 00031983 */  sra   $v1, $v1, 6
/* 065260 80064660 000217C3 */  sra   $v0, $v0, 0x1f
/* 065264 80064664 0062B023 */  subu  $s6, $v1, $v0
/* 065268 80064668 9223002E */  lbu   $v1, 0x2e($s1)
/* 06526C 8006466C 3402FFC0 */  li    $v0, 65472
/* 065270 80064670 00621021 */  addu  $v0, $v1, $v0
/* 065274 80064674 9283000C */  lbu   $v1, 0xc($s4)
/* 065278 80064678 00621821 */  addu  $v1, $v1, $v0
/* 06527C 8006467C 00031400 */  sll   $v0, $v1, 0x10
/* 065280 80064680 00021403 */  sra   $v0, $v0, 0x10
/* 065284 80064684 00021027 */  nor   $v0, $zero, $v0
/* 065288 80064688 000217C3 */  sra   $v0, $v0, 0x1f
/* 06528C 8006468C 00621824 */  and   $v1, $v1, $v0
/* 065290 80064690 00031C00 */  sll   $v1, $v1, 0x10
/* 065294 80064694 00031C03 */  sra   $v1, $v1, 0x10
/* 065298 80064698 28620080 */  slti  $v0, $v1, 0x80
/* 06529C 8006469C 50400001 */  beql  $v0, $zero, .L800646A4
/* 0652A0 800646A0 2403007F */   li    $v1, 127
.L800646A4:
/* 0652A4 800646A4 00608021 */  addu  $s0, $v1, $zero
/* 0652A8 800646A8 C6340024 */  lwc1  $f20, 0x24($s1)
/* 0652AC 800646AC 8E820000 */  lw    $v0, ($s4)
/* 0652B0 800646B0 8C520000 */  lw    $s2, ($v0)
/* 0652B4 800646B4 8E640038 */  lw    $a0, 0x38($s3)
/* 0652B8 800646B8 8E860008 */  lw    $a2, 8($s4)
/* 0652BC 800646BC 0C022BDC */  jal   func_8008AF70
/* 0652C0 800646C0 02A02821 */   addu  $a1, $s5, $zero
/* 0652C4 800646C4 24020001 */  li    $v0, 1
/* 0652C8 800646C8 AE220028 */  sw    $v0, 0x28($s1)
/* 0652CC 800646CC 8E640038 */  lw    $a0, 0x38($s3)
/* 0652D0 800646D0 02A02821 */  addu  $a1, $s5, $zero
/* 0652D4 800646D4 0C01EFE0 */  jal   func_8007BF80
/* 0652D8 800646D8 320600FF */   andi  $a2, $s0, 0xff
/* 0652DC 800646DC 00163400 */  sll   $a2, $s6, 0x10
/* 0652E0 800646E0 8E640038 */  lw    $a0, 0x38($s3)
/* 0652E4 800646E4 02A02821 */  addu  $a1, $s5, $zero
/* 0652E8 800646E8 00063403 */  sra   $a2, $a2, 0x10
/* 0652EC 800646EC 0C022C28 */  jal   func_8008B0A0
/* 0652F0 800646F0 02403821 */   addu  $a3, $s2, $zero
/* 0652F4 800646F4 8E640038 */  lw    $a0, 0x38($s3)
/* 0652F8 800646F8 4406A000 */  mfc1  $a2, $f20
/* 0652FC 800646FC 00000000 */  nop   
/* 065300 80064700 0C022C04 */  jal   func_8008B010
/* 065304 80064704 02A02821 */   addu  $a1, $s5, $zero
/* 065308 80064708 8E640038 */  lw    $a0, 0x38($s3)
/* 06530C 8006470C 9226002F */  lbu   $a2, 0x2f($s1)
/* 065310 80064710 0C023C54 */  jal   func_8008F150
/* 065314 80064714 02A02821 */   addu  $a1, $s5, $zero
/* 065318 80064718 24020006 */  li    $v0, 6
/* 06531C 8006471C A7A20018 */  sh    $v0, 0x18($sp)
/* 065320 80064720 AFB1001C */  sw    $s1, 0x1c($sp)
/* 065324 80064724 8E820000 */  lw    $v0, ($s4)
/* 065328 80064728 8C440000 */  lw    $a0, ($v0)
/* 06532C 8006472C 0C0192B1 */  jal   func_80064AC4
/* 065330 80064730 8E250024 */   lw    $a1, 0x24($s1)
/* 065334 80064734 26640014 */  addiu $a0, $s3, 0x14
/* 065338 80064738 27A50018 */  addiu $a1, $sp, 0x18
/* 06533C 8006473C 0C0225A1 */  jal   func_80089684
/* 065340 80064740 00403021 */   addu  $a2, $v0, $zero
/* 065344 80064744 0801927C */  j     func_800649F0
/* 065348 80064748 00000000 */   nop   

/* 06534C 8006474C 8E220028 */  lw    $v0, 0x28($s1)
/* 065350 80064750 38420001 */  xori  $v0, $v0, 1
/* 065354 80064754 0002102B */  sltu  $v0, $zero, $v0
/* 065358 80064758 2E830001 */  sltiu $v1, $s4, 1
/* 06535C 8006475C 00431025 */  or    $v0, $v0, $v1
/* 065360 80064760 144000A3 */  bnez  $v0, .L800649F0
/* 065364 80064764 00000000 */   nop   
/* 065368 80064768 8E820000 */  lw    $v0, ($s4)
/* 06536C 8006476C 8C440008 */  lw    $a0, 8($v0)
/* 065370 80064770 0C0192B1 */  jal   func_80064AC4
/* 065374 80064774 8E250024 */   lw    $a1, 0x24($s1)
/* 065378 80064778 00409021 */  addu  $s2, $v0, $zero
/* 06537C 8006477C 8E640038 */  lw    $a0, 0x38($s3)
/* 065380 80064780 02202821 */  addu  $a1, $s1, $zero
/* 065384 80064784 00003021 */  addu  $a2, $zero, $zero
/* 065388 80064788 0C022C28 */  jal   func_8008B0A0
/* 06538C 8006478C 02403821 */   addu  $a3, $s2, $zero
/* 065390 80064790 1240008D */  beqz  $s2, .L800649C8
/* 065394 80064794 24020007 */   li    $v0, 7
/* 065398 80064798 A7A20018 */  sh    $v0, 0x18($sp)
/* 06539C 8006479C AFB1001C */  sw    $s1, 0x1c($sp)
/* 0653A0 800647A0 26640014 */  addiu $a0, $s3, 0x14
/* 0653A4 800647A4 27A50018 */  addiu $a1, $sp, 0x18
/* 0653A8 800647A8 0C0225A1 */  jal   func_80089684
/* 0653AC 800647AC 02403021 */   addu  $a2, $s2, $zero
/* 0653B0 800647B0 24020002 */  li    $v0, 2
/* 0653B4 800647B4 0801927C */  j     func_800649F0
/* 0653B8 800647B8 AE220028 */   sw    $v0, 0x28($s1)

/* 0653BC 800647BC 90A20008 */  lbu   $v0, 8($a1)
/* 0653C0 800647C0 A222002E */  sb    $v0, 0x2e($s1)
/* 0653C4 800647C4 8E220028 */  lw    $v0, 0x28($s1)
/* 0653C8 800647C8 38420001 */  xori  $v0, $v0, 1
/* 0653CC 800647CC 2C420001 */  sltiu $v0, $v0, 1
/* 0653D0 800647D0 0014182B */  sltu  $v1, $zero, $s4
/* 0653D4 800647D4 00431024 */  and   $v0, $v0, $v1
/* 0653D8 800647D8 10400085 */  beqz  $v0, .L800649F0
/* 0653DC 800647DC 3402FFC0 */   li    $v0, 65472
/* 0653E0 800647E0 9223002E */  lbu   $v1, 0x2e($s1)
/* 0653E4 800647E4 00621021 */  addu  $v0, $v1, $v0
/* 0653E8 800647E8 9283000C */  lbu   $v1, 0xc($s4)
/* 0653EC 800647EC 00621821 */  addu  $v1, $v1, $v0
/* 0653F0 800647F0 00031400 */  sll   $v0, $v1, 0x10
/* 0653F4 800647F4 00021403 */  sra   $v0, $v0, 0x10
/* 0653F8 800647F8 00021027 */  nor   $v0, $zero, $v0
/* 0653FC 800647FC 000217C3 */  sra   $v0, $v0, 0x1f
/* 065400 80064800 00621824 */  and   $v1, $v1, $v0
/* 065404 80064804 00031C00 */  sll   $v1, $v1, 0x10
/* 065408 80064808 00031C03 */  sra   $v1, $v1, 0x10
/* 06540C 8006480C 28620080 */  slti  $v0, $v1, 0x80
/* 065410 80064810 50400001 */  beql  $v0, $zero, .L80064818
/* 065414 80064814 2403007F */   li    $v1, 127
.L80064818:
/* 065418 80064818 8E640038 */  lw    $a0, 0x38($s3)
/* 06541C 8006481C 02202821 */  addu  $a1, $s1, $zero
/* 065420 80064820 0C01EFE0 */  jal   func_8007BF80
/* 065424 80064824 306600FF */   andi  $a2, $v1, 0xff
/* 065428 80064828 0801927C */  j     func_800649F0
/* 06542C 8006482C 00000000 */   nop   

/* 065430 80064830 C4A00008 */  lwc1  $f0, 8($a1)
/* 065434 80064834 E6200024 */  swc1  $f0, 0x24($s1)
/* 065438 80064838 46000021 */  cvt.d.s $f0, $f0
/* 06543C 8006483C 3C01800D */  lui   $at, 0x800d
/* 065440 80064840 D422B5F8 */  ldc1  $f2, -0x4a08($at)
/* 065444 80064844 4622003C */  c.lt.d $f0, $f2
/* 065448 80064848 00000000 */  nop   
/* 06544C 8006484C 45000006 */  bc1f  .L80064868
/* 065450 80064850 00000000 */   nop   
/* 065454 80064854 3C0138D1 */  li    $at, 0x38D10000 # 0.000100
/* 065458 80064858 3421B717 */  ori   $at, (0x38D1B717 & 0xFFFF) # ori $at, $at, 0xb717
/* 06545C 8006485C 44810000 */  mtc1  $at, $f0
/* 065460 80064860 00000000 */  nop   
/* 065464 80064864 E6200024 */  swc1  $f0, 0x24($s1)
.L80064868:
/* 065468 80064868 8E230028 */  lw    $v1, 0x28($s1)
/* 06546C 8006486C 24020001 */  li    $v0, 1
/* 065470 80064870 1462005F */  bne   $v1, $v0, .L800649F0
/* 065474 80064874 00000000 */   nop   
/* 065478 80064878 8E640038 */  lw    $a0, 0x38($s3)
/* 06547C 8006487C 8E260024 */  lw    $a2, 0x24($s1)
/* 065480 80064880 0C022C04 */  jal   func_8008B010
/* 065484 80064884 02202821 */   addu  $a1, $s1, $zero
/* 065488 80064888 0801927C */  j     func_800649F0
/* 06548C 8006488C 00000000 */   nop   

/* 065490 80064890 90A20008 */  lbu   $v0, 8($a1)
/* 065494 80064894 A222002F */  sb    $v0, 0x2f($s1)
/* 065498 80064898 8E230028 */  lw    $v1, 0x28($s1)
/* 06549C 8006489C 24020001 */  li    $v0, 1
/* 0654A0 800648A0 14620053 */  bne   $v1, $v0, .L800649F0
/* 0654A4 800648A4 00000000 */   nop   
/* 0654A8 800648A8 8E640038 */  lw    $a0, 0x38($s3)
/* 0654AC 800648AC 9226002F */  lbu   $a2, 0x2f($s1)
/* 0654B0 800648B0 0C023C54 */  jal   func_8008F150
/* 0654B4 800648B4 02202821 */   addu  $a1, $s1, $zero
/* 0654B8 800648B8 0801927C */  j     func_800649F0
/* 0654BC 800648BC 00000000 */   nop   

/* 0654C0 800648C0 94A50008 */  lhu   $a1, 8($a1)
/* 0654C4 800648C4 A625002C */  sh    $a1, 0x2c($s1)
/* 0654C8 800648C8 8E220028 */  lw    $v0, 0x28($s1)
/* 0654CC 800648CC 38420001 */  xori  $v0, $v0, 1
/* 0654D0 800648D0 2C420001 */  sltiu $v0, $v0, 1
/* 0654D4 800648D4 0014182B */  sltu  $v1, $zero, $s4
/* 0654D8 800648D8 00431024 */  and   $v0, $v0, $v1
/* 0654DC 800648DC 10400044 */  beqz  $v0, .L800649F0
/* 0654E0 800648E0 00000000 */   nop   
/* 0654E4 800648E4 8E820000 */  lw    $v0, ($s4)
/* 0654E8 800648E8 9050000D */  lbu   $s0, 0xd($v0)
/* 0654EC 800648EC 00051400 */  sll   $v0, $a1, 0x10
/* 0654F0 800648F0 00021403 */  sra   $v0, $v0, 0x10
/* 0654F4 800648F4 02020018 */  mult  $s0, $v0
/* 0654F8 800648F8 00008012 */  mflo  $s0
/* 0654FC 800648FC 3C028102 */  lui   $v0, (0x81020409 >> 16) # lui $v0, 0x8102
/* 065500 80064900 34420409 */  ori   $v0, (0x81020409 & 0xFFFF) # ori $v0, $v0, 0x409
/* 065504 80064904 02020018 */  mult  $s0, $v0
/* 065508 80064908 00004010 */  mfhi  $t0
/* 06550C 8006490C 01101021 */  addu  $v0, $t0, $s0
/* 065510 80064910 00021183 */  sra   $v0, $v0, 6
/* 065514 80064914 00101FC3 */  sra   $v1, $s0, 0x1f
/* 065518 80064918 00438023 */  subu  $s0, $v0, $v1
/* 06551C 8006491C 00103400 */  sll   $a2, $s0, 0x10
/* 065520 80064920 8E640038 */  lw    $a0, 0x38($s3)
/* 065524 80064924 02202821 */  addu  $a1, $s1, $zero
/* 065528 80064928 00063403 */  sra   $a2, $a2, 0x10
/* 06552C 8006492C 0C022C28 */  jal   func_8008B0A0
/* 065530 80064930 240703E8 */   li    $a3, 1000
/* 065534 80064934 0801927C */  j     func_800649F0
/* 065538 80064938 00000000 */   nop   

/* 06553C 8006493C 8E830000 */  lw    $v1, ($s4)
/* 065540 80064940 8C640004 */  lw    $a0, 4($v1)
/* 065544 80064944 2402FFFF */  li    $v0, -1
/* 065548 80064948 10820029 */  beq   $a0, $v0, .L800649F0
/* 06554C 8006494C 00000000 */   nop   
/* 065550 80064950 9070000D */  lbu   $s0, 0xd($v1)
/* 065554 80064954 8622002C */  lh    $v0, 0x2c($s1)
/* 065558 80064958 02020018 */  mult  $s0, $v0
/* 06555C 8006495C 00008012 */  mflo  $s0
/* 065560 80064960 3C028102 */  lui   $v0, (0x81020409 >> 16) # lui $v0, 0x8102
/* 065564 80064964 34420409 */  ori   $v0, (0x81020409 & 0xFFFF) # ori $v0, $v0, 0x409
/* 065568 80064968 02020018 */  mult  $s0, $v0
/* 06556C 8006496C 00004010 */  mfhi  $t0
/* 065570 80064970 01101021 */  addu  $v0, $t0, $s0
/* 065574 80064974 00021183 */  sra   $v0, $v0, 6
/* 065578 80064978 00101FC3 */  sra   $v1, $s0, 0x1f
/* 06557C 8006497C 8E250024 */  lw    $a1, 0x24($s1)
/* 065580 80064980 0C0192B1 */  jal   func_80064AC4
/* 065584 80064984 00438023 */   subu  $s0, $v0, $v1
/* 065588 80064988 00409021 */  addu  $s2, $v0, $zero
/* 06558C 8006498C 00103400 */  sll   $a2, $s0, 0x10
/* 065590 80064990 8E640038 */  lw    $a0, 0x38($s3)
/* 065594 80064994 02202821 */  addu  $a1, $s1, $zero
/* 065598 80064998 00063403 */  sra   $a2, $a2, 0x10
/* 06559C 8006499C 0C022C28 */  jal   func_8008B0A0
/* 0655A0 800649A0 02403821 */   addu  $a3, $s2, $zero
/* 0655A4 800649A4 24020001 */  li    $v0, 1
/* 0655A8 800649A8 A7A20018 */  sh    $v0, 0x18($sp)
/* 0655AC 800649AC AFB1001C */  sw    $s1, 0x1c($sp)
/* 0655B0 800649B0 26640014 */  addiu $a0, $s3, 0x14
/* 0655B4 800649B4 27A50018 */  addiu $a1, $sp, 0x18
/* 0655B8 800649B8 0C0225A1 */  jal   func_80089684
/* 0655BC 800649BC 02403021 */   addu  $a2, $s2, $zero
/* 0655C0 800649C0 0801927C */  j     func_800649F0
/* 0655C4 800649C4 00000000 */   nop   

.L800649C8:
/* 0655C8 800649C8 8E640038 */  lw    $a0, 0x38($s3)
/* 0655CC 800649CC 0C022BBC */  jal   func_8008AEF0
/* 0655D0 800649D0 02202821 */   addu  $a1, $s1, $zero
/* 0655D4 800649D4 8E640038 */  lw    $a0, 0x38($s3)
/* 0655D8 800649D8 0C022B1C */  jal   func_8008AC70
/* 0655DC 800649DC 02202821 */   addu  $a1, $s1, $zero
/* 0655E0 800649E0 26640014 */  addiu $a0, $s3, 0x14
/* 0655E4 800649E4 0C019287 */  jal   func_80064A1C
/* 0655E8 800649E8 02202821 */   addu  $a1, $s1, $zero
/* 0655EC 800649EC AE200028 */  sw    $zero, 0x28($s1)
glabel func_800649F0
.L800649F0:
/* 0655F0 800649F0 8FBF0044 */  lw    $ra, 0x44($sp)
/* 0655F4 800649F4 8FB60040 */  lw    $s6, 0x40($sp)
/* 0655F8 800649F8 8FB5003C */  lw    $s5, 0x3c($sp)
/* 0655FC 800649FC 8FB40038 */  lw    $s4, 0x38($sp)
/* 065600 80064A00 8FB30034 */  lw    $s3, 0x34($sp)
/* 065604 80064A04 8FB20030 */  lw    $s2, 0x30($sp)
/* 065608 80064A08 8FB1002C */  lw    $s1, 0x2c($sp)
/* 06560C 80064A0C 8FB00028 */  lw    $s0, 0x28($sp)
/* 065610 80064A10 D7B40048 */  ldc1  $f20, 0x48($sp)
/* 065614 80064A14 03E00008 */  jr    $ra
/* 065618 80064A18 27BD0050 */   addiu $sp, $sp, 0x50

glabel func_80064A1C
/* 06561C 80064A1C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 065620 80064A20 AFBF0024 */  sw    $ra, 0x24($sp)
/* 065624 80064A24 AFB40020 */  sw    $s4, 0x20($sp)
/* 065628 80064A28 AFB3001C */  sw    $s3, 0x1c($sp)
/* 06562C 80064A2C AFB20018 */  sw    $s2, 0x18($sp)
/* 065630 80064A30 AFB10014 */  sw    $s1, 0x14($sp)
/* 065634 80064A34 AFB00010 */  sw    $s0, 0x10($sp)
/* 065638 80064A38 00809021 */  addu  $s2, $a0, $zero
/* 06563C 80064A3C 00A09821 */  addu  $s3, $a1, $zero
/* 065640 80064A40 0C022124 */  jal   osSetIntMask
/* 065644 80064A44 24040001 */   li    $a0, 1
/* 065648 80064A48 8E500008 */  lw    $s0, 8($s2)
/* 06564C 80064A4C 12000013 */  beqz  $s0, .L80064A9C
/* 065650 80064A50 0040A021 */   addu  $s4, $v0, $zero
.L80064A54:
/* 065654 80064A54 8E110000 */  lw    $s1, ($s0)
/* 065658 80064A58 8E020010 */  lw    $v0, 0x10($s0)
/* 06565C 80064A5C 5453000D */  bnel  $v0, $s3, .L80064A94
/* 065660 80064A60 02208021 */   addu  $s0, $s1, $zero
/* 065664 80064A64 12200005 */  beqz  $s1, .L80064A7C
/* 065668 80064A68 00000000 */   nop   
/* 06566C 80064A6C 8E220008 */  lw    $v0, 8($s1)
/* 065670 80064A70 8E030008 */  lw    $v1, 8($s0)
/* 065674 80064A74 00431021 */  addu  $v0, $v0, $v1
/* 065678 80064A78 AE220008 */  sw    $v0, 8($s1)
.L80064A7C:
/* 06567C 80064A7C 0C02264F */  jal   func_8008993C
/* 065680 80064A80 02002021 */   addu  $a0, $s0, $zero
/* 065684 80064A84 02002021 */  addu  $a0, $s0, $zero
/* 065688 80064A88 0C022647 */  jal   func_8008991C
/* 06568C 80064A8C 02402821 */   addu  $a1, $s2, $zero
/* 065690 80064A90 02208021 */  addu  $s0, $s1, $zero
.L80064A94:
/* 065694 80064A94 1600FFEF */  bnez  $s0, .L80064A54
/* 065698 80064A98 00000000 */   nop   
.L80064A9C:
/* 06569C 80064A9C 0C022124 */  jal   osSetIntMask
/* 0656A0 80064AA0 02802021 */   addu  $a0, $s4, $zero
/* 0656A4 80064AA4 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0656A8 80064AA8 8FB40020 */  lw    $s4, 0x20($sp)
/* 0656AC 80064AAC 8FB3001C */  lw    $s3, 0x1c($sp)
/* 0656B0 80064AB0 8FB20018 */  lw    $s2, 0x18($sp)
/* 0656B4 80064AB4 8FB10014 */  lw    $s1, 0x14($sp)
/* 0656B8 80064AB8 8FB00010 */  lw    $s0, 0x10($sp)
/* 0656BC 80064ABC 03E00008 */  jr    $ra
/* 0656C0 80064AC0 27BD0028 */   addiu $sp, $sp, 0x28

glabel func_80064AC4
/* 0656C4 80064AC4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0656C8 80064AC8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0656CC 80064ACC AFB00010 */  sw    $s0, 0x10($sp)
/* 0656D0 80064AD0 F7B40018 */  sdc1  $f20, 0x18($sp)
/* 0656D4 80064AD4 4485A000 */  mtc1  $a1, $f20
/* 0656D8 80064AD8 44800000 */  mtc1  $zero, $f0
/* 0656DC 80064ADC 00000000 */  nop   
/* 0656E0 80064AE0 4600A032 */  c.eq.s $f20, $f0
/* 0656E4 80064AE4 00000000 */  nop   
/* 0656E8 80064AE8 00000000 */  nop   
/* 0656EC 80064AEC 45000007 */  bc1f  .L80064B0C
/* 0656F0 80064AF0 00808021 */   addu  $s0, $a0, $zero
/* 0656F4 80064AF4 3C04800D */  lui   $a0, %hi(D_800CB600) # $a0, 0x800d
/* 0656F8 80064AF8 2484B600 */  addiu $a0, %lo(D_800CB600) # addiu $a0, $a0, -0x4a00
/* 0656FC 80064AFC 3C05800D */  lui   $a1, %hi(D_800CB604) # $a1, 0x800d
/* 065700 80064B00 24A5B604 */  addiu $a1, %lo(D_800CB604) # addiu $a1, $a1, -0x49fc
/* 065704 80064B04 0C0224A4 */  jal   func_80089290
/* 065708 80064B08 2406011E */   li    $a2, 286
.L80064B0C:
/* 06570C 80064B0C 44900000 */  mtc1  $s0, $f0
/* 065710 80064B10 00000000 */  nop   
/* 065714 80064B14 46800020 */  cvt.s.w $f0, $f0
/* 065718 80064B18 46140003 */  div.s $f0, $f0, $f20
/* 06571C 80064B1C 460000A1 */  cvt.d.s $f2, $f0
/* 065720 80064B20 3C01800D */  lui   $at, 0x800d
/* 065724 80064B24 D420B618 */  ldc1  $f0, -0x49e8($at)
/* 065728 80064B28 4622003C */  c.lt.d $f0, $f2
/* 06572C 80064B2C 00000000 */  nop   
/* 065730 80064B30 00000000 */  nop   
/* 065734 80064B34 45000003 */  bc1f  .L80064B44
/* 065738 80064B38 3C037FFF */   lui   $v1, (0x7FFFFFFF >> 16) # lui $v1, 0x7fff
/* 06573C 80064B3C 080192D4 */  j     func_80064B50
/* 065740 80064B40 3463FFFF */   ori   $v1, (0x7FFFFFFF & 0xFFFF) # ori $v1, $v1, 0xffff

.L80064B44:
/* 065744 80064B44 4620100D */  trunc.w.d $f0, $f2
/* 065748 80064B48 44030000 */  mfc1  $v1, $f0
/* 06574C 80064B4C 00000000 */  nop   
glabel func_80064B50
/* 065750 80064B50 00601021 */  addu  $v0, $v1, $zero
/* 065754 80064B54 8FBF0014 */  lw    $ra, 0x14($sp)
/* 065758 80064B58 8FB00010 */  lw    $s0, 0x10($sp)
/* 06575C 80064B5C D7B40018 */  ldc1  $f20, 0x18($sp)
/* 065760 80064B60 03E00008 */  jr    $ra
/* 065764 80064B64 27BD0020 */   addiu $sp, $sp, 0x20

/* 065768 80064B68 00000000 */  nop   
/* 06576C 80064B6C 00000000 */  nop   
