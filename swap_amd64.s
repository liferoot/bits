#include "textflag.h"

TEXT ·Swap64(SB), NOSPLIT, $0-16
    MOVQ    x+0(FP), AX
    BSWAPQ  AX
    MOVQ    AX, ret+8(FP)
    RET

TEXT ·Swap32(SB), NOSPLIT, $0-16
    MOVL    x+0(FP), AX
    BSWAPL  AX
    MOVL    AX, ret+8(FP)
    RET
