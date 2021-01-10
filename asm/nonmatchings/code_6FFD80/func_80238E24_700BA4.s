.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80238E24_700BA4
/* 700BA4 80238E24 27BDFFC0 */  addiu     $sp, $sp, -0x40
/* 700BA8 80238E28 AFB60030 */  sw        $s6, 0x30($sp)
/* 700BAC 80238E2C 3C16800E */  lui       $s6, %hi(gBattleStatus)
/* 700BB0 80238E30 26D6C070 */  addiu     $s6, $s6, %lo(gBattleStatus)
/* 700BB4 80238E34 AFBF0034 */  sw        $ra, 0x34($sp)
/* 700BB8 80238E38 AFB5002C */  sw        $s5, 0x2c($sp)
/* 700BBC 80238E3C AFB40028 */  sw        $s4, 0x28($sp)
/* 700BC0 80238E40 AFB30024 */  sw        $s3, 0x24($sp)
/* 700BC4 80238E44 AFB20020 */  sw        $s2, 0x20($sp)
/* 700BC8 80238E48 AFB1001C */  sw        $s1, 0x1c($sp)
/* 700BCC 80238E4C AFB00018 */  sw        $s0, 0x18($sp)
/* 700BD0 80238E50 F7B40038 */  sdc1      $f20, 0x38($sp)
/* 700BD4 80238E54 8ED000DC */  lw        $s0, 0xdc($s6)
/* 700BD8 80238E58 0080902D */  daddu     $s2, $a0, $zero
/* 700BDC 80238E5C 8E1501F4 */  lw        $s5, 0x1f4($s0)
/* 700BE0 80238E60 10A00006 */  beqz      $a1, .L80238E7C
/* 700BE4 80238E64 2611000C */   addiu    $s1, $s0, 0xc
/* 700BE8 80238E68 86040428 */  lh        $a0, 0x428($s0)
/* 700BEC 80238E6C 0C09A75B */  jal       get_actor
/* 700BF0 80238E70 00000000 */   nop      
/* 700BF4 80238E74 AE420074 */  sw        $v0, 0x74($s2)
/* 700BF8 80238E78 AE400070 */  sw        $zero, 0x70($s2)
.L80238E7C:
/* 700BFC 80238E7C 8E540070 */  lw        $s4, 0x70($s2)
/* 700C00 80238E80 8E530074 */  lw        $s3, 0x74($s2)
/* 700C04 80238E84 12800005 */  beqz      $s4, .L80238E9C
/* 700C08 80238E88 24020001 */   addiu    $v0, $zero, 1
/* 700C0C 80238E8C 12820015 */  beq       $s4, $v0, .L80238EE4
/* 700C10 80238E90 00000000 */   nop      
/* 700C14 80238E94 0808E40F */  j         .L8023903C
/* 700C18 80238E98 00000000 */   nop      
.L80238E9C:
/* 700C1C 80238E9C C6600144 */  lwc1      $f0, 0x144($s3)
/* 700C20 80238EA0 C6020144 */  lwc1      $f2, 0x144($s0)
/* 700C24 80238EA4 46020001 */  sub.s     $f0, $f0, $f2
/* 700C28 80238EA8 C6020148 */  lwc1      $f2, 0x148($s0)
/* 700C2C 80238EAC E6000018 */  swc1      $f0, 0x18($s0)
/* 700C30 80238EB0 C6600148 */  lwc1      $f0, 0x148($s3)
/* 700C34 80238EB4 46020001 */  sub.s     $f0, $f0, $f2
/* 700C38 80238EB8 C602014C */  lwc1      $f2, 0x14c($s0)
/* 700C3C 80238EBC E600001C */  swc1      $f0, 0x1c($s0)
/* 700C40 80238EC0 C660014C */  lwc1      $f0, 0x14c($s3)
/* 700C44 80238EC4 3C014000 */  lui       $at, 0x4000
/* 700C48 80238EC8 44812000 */  mtc1      $at, $f4
/* 700C4C 80238ECC 46020001 */  sub.s     $f0, $f0, $f2
/* 700C50 80238ED0 E604004C */  swc1      $f4, 0x4c($s0)
/* 700C54 80238ED4 A6000070 */  sh        $zero, 0x70($s0)
/* 700C58 80238ED8 E6000020 */  swc1      $f0, 0x20($s0)
/* 700C5C 80238EDC 0808E40F */  j         .L8023903C
/* 700C60 80238EE0 AE420070 */   sw       $v0, 0x70($s2)
.L80238EE4:
/* 700C64 80238EE4 C600000C */  lwc1      $f0, 0xc($s0)
/* 700C68 80238EE8 C602004C */  lwc1      $f2, 0x4c($s0)
/* 700C6C 80238EEC 46020000 */  add.s     $f0, $f0, $f2
/* 700C70 80238EF0 3C013F80 */  lui       $at, 0x3f80
/* 700C74 80238EF4 44811000 */  mtc1      $at, $f2
/* 700C78 80238EF8 E600000C */  swc1      $f0, 0xc($s0)
/* 700C7C 80238EFC E6A20090 */  swc1      $f2, 0x90($s5)
/* 700C80 80238F00 86020070 */  lh        $v0, 0x70($s0)
/* 700C84 80238F04 3C0140C9 */  lui       $at, 0x40c9
/* 700C88 80238F08 34210FD0 */  ori       $at, $at, 0xfd0
/* 700C8C 80238F0C 44810000 */  mtc1      $at, $f0
/* 700C90 80238F10 44826000 */  mtc1      $v0, $f12
/* 700C94 80238F14 00000000 */  nop       
/* 700C98 80238F18 46806320 */  cvt.s.w   $f12, $f12
/* 700C9C 80238F1C 46006302 */  mul.s     $f12, $f12, $f0
/* 700CA0 80238F20 00000000 */  nop       
/* 700CA4 80238F24 C6140010 */  lwc1      $f20, 0x10($s0)
/* 700CA8 80238F28 3C0143B4 */  lui       $at, 0x43b4
/* 700CAC 80238F2C 44810000 */  mtc1      $at, $f0
/* 700CB0 80238F30 4600A521 */  cvt.d.s   $f20, $f20
/* 700CB4 80238F34 0C00A85B */  jal       sin_rad
/* 700CB8 80238F38 46006303 */   div.s    $f12, $f12, $f0
/* 700CBC 80238F3C 46000000 */  add.s     $f0, $f0, $f0
/* 700CC0 80238F40 3C014049 */  lui       $at, 0x4049
/* 700CC4 80238F44 34210FD0 */  ori       $at, $at, 0xfd0
/* 700CC8 80238F48 44816000 */  mtc1      $at, $f12
/* 700CCC 80238F4C 00000000 */  nop       
/* 700CD0 80238F50 460C0302 */  mul.s     $f12, $f0, $f12
/* 700CD4 80238F54 0C00A85B */  jal       sin_rad
/* 700CD8 80238F58 00000000 */   nop      
/* 700CDC 80238F5C 3C018024 */  lui       $at, %hi(D_8023BD60)
/* 700CE0 80238F60 D422BD60 */  ldc1      $f2, %lo(D_8023BD60)($at)
/* 700CE4 80238F64 46000021 */  cvt.d.s   $f0, $f0
/* 700CE8 80238F68 46220002 */  mul.d     $f0, $f0, $f2
/* 700CEC 80238F6C 00000000 */  nop       
/* 700CF0 80238F70 96030070 */  lhu       $v1, 0x70($s0)
/* 700CF4 80238F74 3C013FE0 */  lui       $at, 0x3fe0
/* 700CF8 80238F78 44811800 */  mtc1      $at, $f3
/* 700CFC 80238F7C 44801000 */  mtc1      $zero, $f2
/* 700D00 80238F80 24630006 */  addiu     $v1, $v1, 6
/* 700D04 80238F84 46220000 */  add.d     $f0, $f0, $f2
/* 700D08 80238F88 00031400 */  sll       $v0, $v1, 0x10
/* 700D0C 80238F8C 00021403 */  sra       $v0, $v0, 0x10
/* 700D10 80238F90 4620A500 */  add.d     $f20, $f20, $f0
/* 700D14 80238F94 44826000 */  mtc1      $v0, $f12
/* 700D18 80238F98 00000000 */  nop       
/* 700D1C 80238F9C 46806320 */  cvt.s.w   $f12, $f12
/* 700D20 80238FA0 A6030070 */  sh        $v1, 0x70($s0)
/* 700D24 80238FA4 4620A520 */  cvt.s.d   $f20, $f20
/* 700D28 80238FA8 0C00A6C9 */  jal       clamp_angle
/* 700D2C 80238FAC E6140010 */   swc1     $f20, 0x10($s0)
/* 700D30 80238FB0 3C038007 */  lui       $v1, %hi(gGameStatusPtr)
/* 700D34 80238FB4 8C63419C */  lw        $v1, %lo(gGameStatusPtr)($v1)
/* 700D38 80238FB8 4600018D */  trunc.w.s $f6, $f0
/* 700D3C 80238FBC 44023000 */  mfc1      $v0, $f6
/* 700D40 80238FC0 00000000 */  nop       
/* 700D44 80238FC4 A6020070 */  sh        $v0, 0x70($s0)
/* 700D48 80238FC8 94630134 */  lhu       $v1, 0x134($v1)
/* 700D4C 80238FCC 3C02CCCC */  lui       $v0, 0xcccc
/* 700D50 80238FD0 3442CCCD */  ori       $v0, $v0, 0xcccd
/* 700D54 80238FD4 00620019 */  multu     $v1, $v0
/* 700D58 80238FD8 00004010 */  mfhi      $t0
/* 700D5C 80238FDC 000820C2 */  srl       $a0, $t0, 3
/* 700D60 80238FE0 00041080 */  sll       $v0, $a0, 2
/* 700D64 80238FE4 00441021 */  addu      $v0, $v0, $a0
/* 700D68 80238FE8 00021040 */  sll       $v0, $v0, 1
/* 700D6C 80238FEC 00621823 */  subu      $v1, $v1, $v0
/* 700D70 80238FF0 3063FFFF */  andi      $v1, $v1, 0xffff
/* 700D74 80238FF4 14600007 */  bnez      $v1, .L80239014
/* 700D78 80238FF8 24042009 */   addiu    $a0, $zero, 0x2009
/* 700D7C 80238FFC C6000014 */  lwc1      $f0, 0x14($s0)
/* 700D80 80239000 E7A00010 */  swc1      $f0, 0x10($sp)
/* 700D84 80239004 8E06000C */  lw        $a2, 0xc($s0)
/* 700D88 80239008 8E070010 */  lw        $a3, 0x10($s0)
/* 700D8C 8023900C 0C052757 */  jal       play_sound_at_position
/* 700D90 80239010 0000282D */   daddu    $a1, $zero, $zero
.L80239014:
/* 700D94 80239014 C602000C */  lwc1      $f2, 0xc($s0)
/* 700D98 80239018 3C014370 */  lui       $at, 0x4370
/* 700D9C 8023901C 44810000 */  mtc1      $at, $f0
/* 700DA0 80239020 00000000 */  nop       
/* 700DA4 80239024 4602003C */  c.lt.s    $f0, $f2
/* 700DA8 80239028 00000000 */  nop       
/* 700DAC 8023902C 45000003 */  bc1f      .L8023903C
/* 700DB0 80239030 24020002 */   addiu    $v0, $zero, 2
/* 700DB4 80239034 0808E422 */  j         .L80239088
/* 700DB8 80239038 A2D40084 */   sb       $s4, 0x84($s6)
.L8023903C:
/* 700DBC 8023903C C6200000 */  lwc1      $f0, ($s1)
/* 700DC0 80239040 E6000144 */  swc1      $f0, 0x144($s0)
/* 700DC4 80239044 C6200004 */  lwc1      $f0, 4($s1)
/* 700DC8 80239048 E6000148 */  swc1      $f0, 0x148($s0)
/* 700DCC 8023904C C6200008 */  lwc1      $f0, 8($s1)
/* 700DD0 80239050 E600014C */  swc1      $f0, 0x14c($s0)
/* 700DD4 80239054 C6200000 */  lwc1      $f0, ($s1)
/* 700DD8 80239058 C622000C */  lwc1      $f2, 0xc($s1)
/* 700DDC 8023905C 46020000 */  add.s     $f0, $f0, $f2
/* 700DE0 80239060 E6600144 */  swc1      $f0, 0x144($s3)
/* 700DE4 80239064 C6200004 */  lwc1      $f0, 4($s1)
/* 700DE8 80239068 C6220010 */  lwc1      $f2, 0x10($s1)
/* 700DEC 8023906C 46020000 */  add.s     $f0, $f0, $f2
/* 700DF0 80239070 E6600148 */  swc1      $f0, 0x148($s3)
/* 700DF4 80239074 C6200008 */  lwc1      $f0, 8($s1)
/* 700DF8 80239078 C6220014 */  lwc1      $f2, 0x14($s1)
/* 700DFC 8023907C 46020000 */  add.s     $f0, $f0, $f2
/* 700E00 80239080 0000102D */  daddu     $v0, $zero, $zero
/* 700E04 80239084 E660014C */  swc1      $f0, 0x14c($s3)
.L80239088:
/* 700E08 80239088 8FBF0034 */  lw        $ra, 0x34($sp)
/* 700E0C 8023908C 8FB60030 */  lw        $s6, 0x30($sp)
/* 700E10 80239090 8FB5002C */  lw        $s5, 0x2c($sp)
/* 700E14 80239094 8FB40028 */  lw        $s4, 0x28($sp)
/* 700E18 80239098 8FB30024 */  lw        $s3, 0x24($sp)
/* 700E1C 8023909C 8FB20020 */  lw        $s2, 0x20($sp)
/* 700E20 802390A0 8FB1001C */  lw        $s1, 0x1c($sp)
/* 700E24 802390A4 8FB00018 */  lw        $s0, 0x18($sp)
/* 700E28 802390A8 D7B40038 */  ldc1      $f20, 0x38($sp)
/* 700E2C 802390AC 03E00008 */  jr        $ra
/* 700E30 802390B0 27BD0040 */   addiu    $sp, $sp, 0x40
