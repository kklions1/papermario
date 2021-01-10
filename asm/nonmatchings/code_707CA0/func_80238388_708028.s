.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80238388_708028
/* 708028 80238388 27BDFFC8 */  addiu     $sp, $sp, -0x38
/* 70802C 8023838C 3C02800E */  lui       $v0, %hi(gBattleStatus)
/* 708030 80238390 2442C070 */  addiu     $v0, $v0, %lo(gBattleStatus)
/* 708034 80238394 AFBF0030 */  sw        $ra, 0x30($sp)
/* 708038 80238398 AFB1002C */  sw        $s1, 0x2c($sp)
/* 70803C 8023839C AFB00028 */  sw        $s0, 0x28($sp)
/* 708040 802383A0 8C5000DC */  lw        $s0, 0xdc($v0)
/* 708044 802383A4 8C5100D8 */  lw        $s1, 0xd8($v0)
/* 708048 802383A8 0C00A67F */  jal       rand_int
/* 70804C 802383AC 2404000A */   addiu    $a0, $zero, 0xa
/* 708050 802383B0 3C018024 */  lui       $at, %hi(D_8023C060)
/* 708054 802383B4 D422C060 */  ldc1      $f2, %lo(D_8023C060)($at)
/* 708058 802383B8 C6200144 */  lwc1      $f0, 0x144($s1)
/* 70805C 802383BC C6040144 */  lwc1      $f4, 0x144($s0)
/* 708060 802383C0 C6060148 */  lwc1      $f6, 0x148($s0)
/* 708064 802383C4 C60A014C */  lwc1      $f10, 0x14c($s0)
/* 708068 802383C8 E7A00010 */  swc1      $f0, 0x10($sp)
/* 70806C 802383CC 44820000 */  mtc1      $v0, $f0
/* 708070 802383D0 00000000 */  nop       
/* 708074 802383D4 46800021 */  cvt.d.w   $f0, $f0
/* 708078 802383D8 46220002 */  mul.d     $f0, $f0, $f2
/* 70807C 802383DC 00000000 */  nop       
/* 708080 802383E0 24040001 */  addiu     $a0, $zero, 1
/* 708084 802383E4 C6220148 */  lwc1      $f2, 0x148($s1)
/* 708088 802383E8 2402001E */  addiu     $v0, $zero, 0x1e
/* 70808C 802383EC E7A20014 */  swc1      $f2, 0x14($sp)
/* 708090 802383F0 3C013FF0 */  lui       $at, 0x3ff0
/* 708094 802383F4 44811800 */  mtc1      $at, $f3
/* 708098 802383F8 44801000 */  mtc1      $zero, $f2
/* 70809C 802383FC 46002121 */  cvt.d.s   $f4, $f4
/* 7080A0 80238400 46220000 */  add.d     $f0, $f0, $f2
/* 7080A4 80238404 3C014016 */  lui       $at, 0x4016
/* 7080A8 80238408 44811800 */  mtc1      $at, $f3
/* 7080AC 8023840C 44801000 */  mtc1      $zero, $f2
/* 7080B0 80238410 C628014C */  lwc1      $f8, 0x14c($s1)
/* 7080B4 80238414 46222101 */  sub.d     $f4, $f4, $f2
/* 7080B8 80238418 3C01402F */  lui       $at, 0x402f
/* 7080BC 8023841C 44811800 */  mtc1      $at, $f3
/* 7080C0 80238420 44801000 */  mtc1      $zero, $f2
/* 7080C4 80238424 460031A1 */  cvt.d.s   $f6, $f6
/* 7080C8 80238428 AFA20020 */  sw        $v0, 0x20($sp)
/* 7080CC 8023842C E7A80018 */  swc1      $f8, 0x18($sp)
/* 7080D0 80238430 46223180 */  add.d     $f6, $f6, $f2
/* 7080D4 80238434 3C0140A0 */  lui       $at, 0x40a0
/* 7080D8 80238438 44811000 */  mtc1      $at, $f2
/* 7080DC 8023843C 46202120 */  cvt.s.d   $f4, $f4
/* 7080E0 80238440 46025280 */  add.s     $f10, $f10, $f2
/* 7080E4 80238444 44052000 */  mfc1      $a1, $f4
/* 7080E8 80238448 462031A0 */  cvt.s.d   $f6, $f6
/* 7080EC 8023844C 44063000 */  mfc1      $a2, $f6
/* 7080F0 80238450 44075000 */  mfc1      $a3, $f10
/* 7080F4 80238454 46200020 */  cvt.s.d   $f0, $f0
/* 7080F8 80238458 0C01C67C */  jal       func_800719F0
/* 7080FC 8023845C E7A0001C */   swc1     $f0, 0x1c($sp)
/* 708100 80238460 8FBF0030 */  lw        $ra, 0x30($sp)
/* 708104 80238464 8FB1002C */  lw        $s1, 0x2c($sp)
/* 708108 80238468 8FB00028 */  lw        $s0, 0x28($sp)
/* 70810C 8023846C 3C018024 */  lui       $at, %hi(D_8023C070)
/* 708110 80238470 AC22C070 */  sw        $v0, %lo(D_8023C070)($at)
/* 708114 80238474 24020002 */  addiu     $v0, $zero, 2
/* 708118 80238478 03E00008 */  jr        $ra
/* 70811C 8023847C 27BD0038 */   addiu    $sp, $sp, 0x38
