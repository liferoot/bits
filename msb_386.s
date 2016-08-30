#include "textflag.h"

TEXT ·MSB64(SB), NOSPLIT, $0-16
    MOVL    $0, ret_hi+12(FP)
    BSRL    x_hi+4(FP), AX
    JZ      low
    MOVL    AX, ret_lo+8(FP)
    RET
low:
    BSRL    x_lo+0(FP), AX
    MOVL    AX, ret_lo+8(FP)
    RET

TEXT ·MSB32(SB), NOSPLIT, $0-8
    BSRL    x+0(FP), AX
    MOVL    AX, ret+4(FP)
    RET

TEXT ·MSB16(SB), NOSPLIT, $0-8
    BSRW    x+0(FP), AX
    MOVW    AX, ret+4(FP)
    RET
