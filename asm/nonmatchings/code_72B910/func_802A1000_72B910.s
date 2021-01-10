.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802A1000_72B910
/* 72B910 802A1000 27BDFF98 */  addiu     $sp, $sp, -0x68
/* 72B914 802A1004 AFB50044 */  sw        $s5, 0x44($sp)
/* 72B918 802A1008 0080A82D */  daddu     $s5, $a0, $zero
/* 72B91C 802A100C AFB10034 */  sw        $s1, 0x34($sp)
/* 72B920 802A1010 0000882D */  daddu     $s1, $zero, $zero
/* 72B924 802A1014 2405001D */  addiu     $a1, $zero, 0x1d
/* 72B928 802A1018 F7B40050 */  sdc1      $f20, 0x50($sp)
/* 72B92C 802A101C 4480A000 */  mtc1      $zero, $f20
/* 72B930 802A1020 3C02800E */  lui       $v0, %hi(gBattleStatus)
/* 72B934 802A1024 2442C070 */  addiu     $v0, $v0, %lo(gBattleStatus)
/* 72B938 802A1028 AFBF0048 */  sw        $ra, 0x48($sp)
/* 72B93C 802A102C AFB40040 */  sw        $s4, 0x40($sp)
/* 72B940 802A1030 AFB3003C */  sw        $s3, 0x3c($sp)
/* 72B944 802A1034 AFB20038 */  sw        $s2, 0x38($sp)
/* 72B948 802A1038 AFB00030 */  sw        $s0, 0x30($sp)
/* 72B94C 802A103C F7B80060 */  sdc1      $f24, 0x60($sp)
/* 72B950 802A1040 F7B60058 */  sdc1      $f22, 0x58($sp)
/* 72B954 802A1044 8C5300D8 */  lw        $s3, 0xd8($v0)
/* 72B958 802A1048 8442017A */  lh        $v0, 0x17a($v0)
/* 72B95C 802A104C 0260202D */  daddu     $a0, $s3, $zero
/* 72B960 802A1050 00021140 */  sll       $v0, $v0, 5
/* 72B964 802A1054 3C128008 */  lui       $s2, %hi(gItemTable+0xC)
/* 72B968 802A1058 02429021 */  addu      $s2, $s2, $v0
/* 72B96C 802A105C 865278EC */  lh        $s2, %lo(gItemTable+0xC)($s2)
/* 72B970 802A1060 92620191 */  lbu       $v0, 0x191($s3)
/* 72B974 802A1064 C6620148 */  lwc1      $f2, 0x148($s3)
/* 72B978 802A1068 44820000 */  mtc1      $v0, $f0
/* 72B97C 802A106C 00000000 */  nop       
/* 72B980 802A1070 46800020 */  cvt.s.w   $f0, $f0
/* 72B984 802A1074 0C099CAB */  jal       heroes_is_ability_active
/* 72B988 802A1078 46001580 */   add.s    $f22, $f2, $f0
/* 72B98C 802A107C 50400048 */  beql      $v0, $zero, .L802A11A0
/* 72B990 802A1080 AEB10084 */   sw       $s1, 0x84($s5)
/* 72B994 802A1084 1A400045 */  blez      $s2, .L802A119C
/* 72B998 802A1088 3C0451EB */   lui      $a0, 0x51eb
/* 72B99C 802A108C 3484851F */  ori       $a0, $a0, 0x851f
/* 72B9A0 802A1090 00121880 */  sll       $v1, $s2, 2
/* 72B9A4 802A1094 00721821 */  addu      $v1, $v1, $s2
/* 72B9A8 802A1098 00031100 */  sll       $v0, $v1, 4
/* 72B9AC 802A109C 00431023 */  subu      $v0, $v0, $v1
/* 72B9B0 802A10A0 24420063 */  addiu     $v0, $v0, 0x63
/* 72B9B4 802A10A4 00440018 */  mult      $v0, $a0
/* 72B9B8 802A10A8 000217C3 */  sra       $v0, $v0, 0x1f
/* 72B9BC 802A10AC 00004010 */  mfhi      $t0
/* 72B9C0 802A10B0 00081943 */  sra       $v1, $t0, 5
/* 72B9C4 802A10B4 00629023 */  subu      $s2, $v1, $v0
/* 72B9C8 802A10B8 0232102A */  slt       $v0, $s1, $s2
/* 72B9CC 802A10BC 10400019 */  beqz      $v0, .L802A1124
/* 72B9D0 802A10C0 0220802D */   daddu    $s0, $s1, $zero
/* 72B9D4 802A10C4 24140017 */  addiu     $s4, $zero, 0x17
/* 72B9D8 802A10C8 3C0141F0 */  lui       $at, 0x41f0
/* 72B9DC 802A10CC 4481C000 */  mtc1      $at, $f24
/* 72B9E0 802A10D0 24110001 */  addiu     $s1, $zero, 1
.L802A10D4:
/* 72B9E4 802A10D4 C6600144 */  lwc1      $f0, 0x144($s3)
/* 72B9E8 802A10D8 C662014C */  lwc1      $f2, 0x14c($s3)
/* 72B9EC 802A10DC 4600A10D */  trunc.w.s $f4, $f20
/* 72B9F0 802A10E0 E7A40018 */  swc1      $f4, 0x18($sp)
/* 72B9F4 802A10E4 24040157 */  addiu     $a0, $zero, 0x157
/* 72B9F8 802A10E8 AFB10014 */  sw        $s1, 0x14($sp)
/* 72B9FC 802A10EC 26310003 */  addiu     $s1, $s1, 3
/* 72BA00 802A10F0 26100001 */  addiu     $s0, $s0, 1
/* 72BA04 802A10F4 4406B000 */  mfc1      $a2, $f22
/* 72BA08 802A10F8 44050000 */  mfc1      $a1, $f0
/* 72BA0C 802A10FC 44071000 */  mfc1      $a3, $f2
/* 72BA10 802A1100 4618A500 */  add.s     $f20, $f20, $f24
/* 72BA14 802A1104 AFB40010 */  sw        $s4, 0x10($sp)
/* 72BA18 802A1108 0C04C4FD */  jal       make_item_entity
/* 72BA1C 802A110C AFA0001C */   sw       $zero, 0x1c($sp)
/* 72BA20 802A1110 0C03A830 */  jal       add_coins
/* 72BA24 802A1114 24040001 */   addiu    $a0, $zero, 1
/* 72BA28 802A1118 0212102A */  slt       $v0, $s0, $s2
/* 72BA2C 802A111C 1440FFED */  bnez      $v0, .L802A10D4
/* 72BA30 802A1120 00000000 */   nop      
.L802A1124:
/* 72BA34 802A1124 00101040 */  sll       $v0, $s0, 1
/* 72BA38 802A1128 00501021 */  addu      $v0, $v0, $s0
/* 72BA3C 802A112C 2451001E */  addiu     $s1, $v0, 0x1e
/* 72BA40 802A1130 C6600144 */  lwc1      $f0, 0x144($s3)
/* 72BA44 802A1134 C6760148 */  lwc1      $f22, 0x148($s3)
/* 72BA48 802A1138 C662014C */  lwc1      $f2, 0x14c($s3)
/* 72BA4C 802A113C 3C048007 */  lui       $a0, %hi(gCurrentCameraID)
/* 72BA50 802A1140 8C847410 */  lw        $a0, %lo(gCurrentCameraID)($a0)
/* 72BA54 802A1144 27A20020 */  addiu     $v0, $sp, 0x20
/* 72BA58 802A1148 AFA20010 */  sw        $v0, 0x10($sp)
/* 72BA5C 802A114C 27A20024 */  addiu     $v0, $sp, 0x24
/* 72BA60 802A1150 AFA20014 */  sw        $v0, 0x14($sp)
/* 72BA64 802A1154 44050000 */  mfc1      $a1, $f0
/* 72BA68 802A1158 4406B000 */  mfc1      $a2, $f22
/* 72BA6C 802A115C 44071000 */  mfc1      $a3, $f2
/* 72BA70 802A1160 27A20028 */  addiu     $v0, $sp, 0x28
/* 72BA74 802A1164 0C00B94E */  jal       get_screen_coords
/* 72BA78 802A1168 AFA20018 */   sw       $v0, 0x18($sp)
/* 72BA7C 802A116C 3C048011 */  lui       $a0, %hi(D_80108A64)
/* 72BA80 802A1170 24848A64 */  addiu     $a0, $a0, %lo(D_80108A64)
/* 72BA84 802A1174 0C050529 */  jal       create_icon
/* 72BA88 802A1178 00000000 */   nop      
/* 72BA8C 802A117C 8FA50020 */  lw        $a1, 0x20($sp)
/* 72BA90 802A1180 8FA60024 */  lw        $a2, 0x24($sp)
/* 72BA94 802A1184 0040202D */  daddu     $a0, $v0, $zero
/* 72BA98 802A1188 3C01802A */  lui       $at, %hi(D_802A1CA0)
/* 72BA9C 802A118C AC241CA0 */  sw        $a0, %lo(D_802A1CA0)($at)
/* 72BAA0 802A1190 24A50024 */  addiu     $a1, $a1, 0x24
/* 72BAA4 802A1194 0C051261 */  jal       set_icon_render_pos
/* 72BAA8 802A1198 24C6FFC1 */   addiu    $a2, $a2, -0x3f
.L802A119C:
/* 72BAAC 802A119C AEB10084 */  sw        $s1, 0x84($s5)
.L802A11A0:
/* 72BAB0 802A11A0 8FBF0048 */  lw        $ra, 0x48($sp)
/* 72BAB4 802A11A4 8FB50044 */  lw        $s5, 0x44($sp)
/* 72BAB8 802A11A8 8FB40040 */  lw        $s4, 0x40($sp)
/* 72BABC 802A11AC 8FB3003C */  lw        $s3, 0x3c($sp)
/* 72BAC0 802A11B0 8FB20038 */  lw        $s2, 0x38($sp)
/* 72BAC4 802A11B4 8FB10034 */  lw        $s1, 0x34($sp)
/* 72BAC8 802A11B8 8FB00030 */  lw        $s0, 0x30($sp)
/* 72BACC 802A11BC D7B80060 */  ldc1      $f24, 0x60($sp)
/* 72BAD0 802A11C0 D7B60058 */  ldc1      $f22, 0x58($sp)
/* 72BAD4 802A11C4 D7B40050 */  ldc1      $f20, 0x50($sp)
/* 72BAD8 802A11C8 24020002 */  addiu     $v0, $zero, 2
/* 72BADC 802A11CC 03E00008 */  jr        $ra
/* 72BAE0 802A11D0 27BD0068 */   addiu    $sp, $sp, 0x68
