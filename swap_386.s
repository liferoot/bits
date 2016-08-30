#include "textflag.h"

TEXT ·Swap64(SB), NOSPLIT, $0-16
    MOVL    x_lo+0(FP), AX
    MOVL    x_hi+4(FP), BX
    BSWAPL  AX
    BSWAPL  BX
    MOVL    BX, ret_lo+8(FP)
    MOVL    AX, ret_hi+12(FP)
    RET

TEXT ·Swap32(SB), NOSPLIT, $0-8
    MOVL    x+0(FP), AX
    BSWAPL  AX
    MOVL    AX, ret+4(FP)
    RET
