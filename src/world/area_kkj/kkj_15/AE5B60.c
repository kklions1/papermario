#include "kkj_15.h"

INCLUDE_ASM(s32, "world/area_kkj/kkj_15/AE5B60", func_802405D0_AE5B60);

// INCLUDE_ASM(s32, "world/area_kkj/kkj_15/AE5B60", func_802405EC_AE5B7C);

ApiStatus func_802405EC_AE5B7C() {
    GameStatus *temp_v1 = gGameStatusPtr;

    temp_v1->peachFlags &= 0xEF;
    return ApiStatus_DONE2;
}
