.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802383C0_6F6240
/* 6F6240 802383C0 8C830084 */  lw        $v1, 0x84($a0)
/* 6F6244 802383C4 28620024 */  slti      $v0, $v1, 0x24
/* 6F6248 802383C8 10400003 */  beqz      $v0, .L802383D8
/* 6F624C 802383CC 0000102D */   daddu    $v0, $zero, $zero
/* 6F6250 802383D0 0808E107 */  j         .L8023841C
/* 6F6254 802383D4 24030001 */   addiu    $v1, $zero, 1
.L802383D8:
/* 6F6258 802383D8 2862003D */  slti      $v0, $v1, 0x3d
/* 6F625C 802383DC 10400003 */  beqz      $v0, .L802383EC
/* 6F6260 802383E0 24020001 */   addiu    $v0, $zero, 1
/* 6F6264 802383E4 0808E107 */  j         .L8023841C
/* 6F6268 802383E8 24030003 */   addiu    $v1, $zero, 3
.L802383EC:
/* 6F626C 802383EC 28620051 */  slti      $v0, $v1, 0x51
/* 6F6270 802383F0 10400003 */  beqz      $v0, .L80238400
/* 6F6274 802383F4 24020002 */   addiu    $v0, $zero, 2
/* 6F6278 802383F8 0808E107 */  j         .L8023841C
/* 6F627C 802383FC 24030004 */   addiu    $v1, $zero, 4
.L80238400:
/* 6F6280 80238400 28620064 */  slti      $v0, $v1, 0x64
/* 6F6284 80238404 10400003 */  beqz      $v0, .L80238414
/* 6F6288 80238408 24030005 */   addiu    $v1, $zero, 5
/* 6F628C 8023840C 0808E107 */  j         .L8023841C
/* 6F6290 80238410 24020003 */   addiu    $v0, $zero, 3
.L80238414:
/* 6F6294 80238414 24030006 */  addiu     $v1, $zero, 6
/* 6F6298 80238418 24020004 */  addiu     $v0, $zero, 4
.L8023841C:
/* 6F629C 8023841C AC8200BC */  sw        $v0, 0xbc($a0)
/* 6F62A0 80238420 24020002 */  addiu     $v0, $zero, 2
/* 6F62A4 80238424 03E00008 */  jr        $ra
/* 6F62A8 80238428 AC8300C0 */   sw       $v1, 0xc0($a0)
/* 6F62AC 8023842C 00000000 */  nop       
