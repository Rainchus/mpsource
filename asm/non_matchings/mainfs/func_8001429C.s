.include "globals.inc"
.include "macros.inc"

.set noat
.set noreorder

glabel func_8001429C
/* 014E9C 8001429C 27BDFFF8 */  addiu $29, $29, -8
/* 014EA0 800142A0 00004021 */  addu  $8, $0, $0
/* 014EA4 800142A4 3C0D800F */  lui   $13, %hi(D_800F3396) # $13, 0x800f
/* 014EA8 800142A8 25AD3396 */  addiu $13, %lo(D_800F3396) # addiu $13, $13, 0x3396
/* 014EAC 800142AC 3C0C800F */  lui   $12, %hi(D_800F544C) # $12, 0x800f
/* 014EB0 800142B0 258C544C */  addiu $12, %lo(D_800F544C) # addiu $12, $12, 0x544c
/* 014EB4 800142B4 3C0E800F */  lui   $14, %hi(D_800EDEB4) # $14, 0x800f
/* 014EB8 800142B8 25CEDEB4 */  addiu $14, %lo(D_800EDEB4) # addiu $14, $14, -0x214c
/* 014EBC 800142BC 3C0B800F */  lui   $11, %hi(D_800EC6EA) # $11, 0x800f
/* 014EC0 800142C0 256BC6EA */  addiu $11, %lo(D_800EC6EA) # addiu $11, $11, -0x3916
/* 014EC4 800142C4 3C0A800F */  lui   $10, %hi(D_800F32A4) # $10, 0x800f
/* 014EC8 800142C8 254A32A4 */  addiu $10, %lo(D_800F32A4) # addiu $10, $10, 0x32a4
/* 014ECC 800142CC 3C09800F */  lui   $9, %hi(D_800F2CF0) # $9, 0x800f
/* 014ED0 800142D0 25292CF0 */  addiu $9, %lo(D_800F2CF0) # addiu $9, $9, 0x2cf0
/* 014ED4 800142D4 00082400 */  sll   $4, $8, 0x10
.L800142D8:
/* 014ED8 800142D8 00042403 */  sra   $4, $4, 0x10
/* 014EDC 800142DC 00041840 */  sll   $3, $4, 1
/* 014EE0 800142E0 006D2821 */  addu  $5, $3, $13
/* 014EE4 800142E4 006C1021 */  addu  $2, $3, $12
/* 014EE8 800142E8 94420000 */  lhu   $2, ($2)
/* 014EEC 800142EC A4A20000 */  sh    $2, ($5)
/* 014EF0 800142F0 006E1821 */  addu  $3, $3, $14
/* 014EF4 800142F4 94660000 */  lhu   $6, ($3)
/* 014EF8 800142F8 3C02800F */  lui   $2, 0x800f
/* 014EFC 800142FC 00441021 */  addu  $2, $2, $4
/* 014F00 80014300 9042CE14 */  lbu   $2, -0x31ec($2)
/* 014F04 80014304 00021600 */  sll   $2, $2, 0x18
/* 014F08 80014308 00021E03 */  sra   $3, $2, 0x18
/* 014F0C 8001430C 000217C3 */  sra   $2, $2, 0x1f
/* 014F10 80014310 34420001 */  ori   $2, $2, 1
/* 014F14 80014314 00620018 */  mult  $3, $2
/* 014F18 80014318 00001812 */  mflo  $3
/* 014F1C 8001431C 2463FFE2 */  addiu $3, $3, -0x1e
/* 014F20 80014320 00000000 */  nop   
/* 014F24 80014324 58600008 */  blezl $3, .L80014348
/* 014F28 80014328 00081400 */   sll   $2, $8, 0x10
/* 014F2C 8001432C 18400003 */  blez  $2, .L8001433C
/* 014F30 80014330 30C2FDFF */   andi  $2, $6, 0xfdff
/* 014F34 80014334 080050D1 */  j   .L80014344
/* 014F38 80014338 34460100 */   ori   $6, $2, 0x100

.L8001433C:
/* 014F3C 8001433C 30C2FEFF */  andi  $2, $6, 0xfeff
/* 014F40 80014340 34460200 */  ori   $6, $2, 0x200
.L80014344:
/* 014F44 80014344 00081400 */  sll   $2, $8, 0x10
.L80014348:
/* 014F48 80014348 00021403 */  sra   $2, $2, 0x10
/* 014F4C 8001434C 3C01800F */  lui   $1, 0x800f
/* 014F50 80014350 00220821 */  addu  $1, $1, $2
/* 014F54 80014354 90223843 */  lbu   $2, 0x3843($1)
/* 014F58 80014358 00021600 */  sll   $2, $2, 0x18
/* 014F5C 8001435C 00021E03 */  sra   $3, $2, 0x18
/* 014F60 80014360 000217C3 */  sra   $2, $2, 0x1f
/* 014F64 80014364 34420001 */  ori   $2, $2, 1
/* 014F68 80014368 00620018 */  mult  $3, $2
/* 014F6C 8001436C 00001812 */  mflo  $3
/* 014F70 80014370 2463FFE2 */  addiu $3, $3, -0x1e
/* 014F74 80014374 00000000 */  nop   
/* 014F78 80014378 58600008 */  blezl $3, .L8001439C
/* 014F7C 8001437C 00081400 */   sll   $2, $8, 0x10
/* 014F80 80014380 18400003 */  blez  $2, .L80014390
/* 014F84 80014384 30C2FBFF */   andi  $2, $6, 0xfbff
/* 014F88 80014388 080050E6 */  j     .L80014398
/* 014F8C 8001438C 34460800 */   ori   $6, $2, 0x800

.L80014390:
/* 014F90 80014390 30C2F7FF */  andi  $2, $6, 0xf7ff
/* 014F94 80014394 34460400 */  ori   $6, $2, 0x400
.L80014398:
/* 014F98 80014398 00081400 */  sll   $2, $8, 0x10
.L8001439C:
/* 014F9C 8001439C 00022BC3 */  sra   $5, $2, 0xf
/* 014FA0 800143A0 00AC1021 */  addu  $2, $5, $12
/* 014FA4 800143A4 A4460000 */  sh    $6, ($2)
/* 014FA8 800143A8 00AB3821 */  addu  $7, $5, $11
/* 014FAC 800143AC 00AD2021 */  addu  $4, $5, $13
/* 014FB0 800143B0 94820000 */  lhu   $2, ($4)
/* 014FB4 800143B4 00C21026 */  xor   $2, $6, $2
/* 014FB8 800143B8 00C21024 */  and   $2, $6, $2
/* 014FBC 800143BC A4E20000 */  sh    $2, ($7)
/* 014FC0 800143C0 30C3FFFF */  andi  $3, $6, 0xffff
/* 014FC4 800143C4 94820000 */  lhu   $2, ($4)
/* 014FC8 800143C8 10620007 */  beq   $3, $2, .L800143E8
/* 014FCC 800143CC 2402000F */   li    $2, 15
/* 014FD0 800143D0 00AA1821 */  addu  $3, $5, $10
/* 014FD4 800143D4 A4620000 */  sh    $2, ($3)
/* 014FD8 800143D8 00A91821 */  addu  $3, $5, $9
/* 014FDC 800143DC 94E20000 */  lhu   $2, ($7)
/* 014FE0 800143E0 0800510E */  j     .L80014438
/* 014FE4 800143E4 A4620000 */   sh    $2, ($3)

.L800143E8:
/* 014FE8 800143E8 00081400 */  sll   $2, $8, 0x10
/* 014FEC 800143EC 000223C3 */  sra   $4, $2, 0xf
/* 014FF0 800143F0 008A2821 */  addu  $5, $4, $10
/* 014FF4 800143F4 84A20000 */  lh    $2, ($5)
/* 014FF8 800143F8 18400008 */  blez  $2, .L8001441C
/* 014FFC 800143FC 00401821 */   addu  $3, $2, $0
/* 015000 80014400 2462FFFF */  addiu $2, $3, -1
/* 015004 80014404 A4A20000 */  sh    $2, ($5)
/* 015008 80014408 00891821 */  addu  $3, $4, $9
/* 01500C 8001440C 008B1021 */  addu  $2, $4, $11
/* 015010 80014410 94420000 */  lhu   $2, ($2)
/* 015014 80014414 0800510E */  j     .L80014438
/* 015018 80014418 A4620000 */   sh    $2, ($3)

.L8001441C:
/* 01501C 8001441C 00081400 */  sll   $2, $8, 0x10
/* 015020 80014420 000213C3 */  sra   $2, $2, 0xf
/* 015024 80014424 004A2021 */  addu  $4, $2, $10
/* 015028 80014428 24030005 */  li    $3, 5
/* 01502C 8001442C A4830000 */  sh    $3, ($4)
/* 015030 80014430 00491021 */  addu  $2, $2, $9
/* 015034 80014434 A4460000 */  sh    $6, ($2)
.L80014438:
/* 015038 80014438 25020001 */  addiu $2, $8, 1
/* 01503C 8001443C 00404021 */  addu  $8, $2, $0
/* 015040 80014440 00021400 */  sll   $2, $2, 0x10
/* 015044 80014444 00021403 */  sra   $2, $2, 0x10
/* 015048 80014448 28420004 */  slti  $2, $2, 4
/* 01504C 8001444C 1440FFA2 */  bnez  $2, .L800142D8
/* 015050 80014450 00082400 */   sll   $4, $8, 0x10
/* 015054 80014454 27BD0008 */  addiu $29, $29, 8
/* 015058 80014458 03E00008 */  jr    $31
/* 01505C 8001445C 00000000 */   nop

.set at
.set reorder
