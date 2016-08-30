#include "textflag.h"

TEXT ·LSB64(SB), NOSPLIT, $0-16
    MOVL    $0, ret_hi+12(FP)
    BSFL    x_lo+0(FP), AX
    JZ      high
    MOVL    AX, ret_lo+8(FP)
    RET
high:
    BSFL    x_hi+4(FP), AX
    MOVL    AX, ret_lo+8(FP)
    RET

TEXT ·LSB32(SB), NOSPLIT, $0-8
    BSFL    x+0(FP), AX
    MOVL    AX, ret+4(FP)
    RET

TEXT ·LSB16(SB), NOSPLIT, $0-8
    BSFW    x+0(FP), AX
    MOVW    AX, ret+4(FP)
    RET
