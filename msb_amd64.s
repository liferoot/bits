#include "textflag.h"

TEXT ·MSB64(SB), NOSPLIT, $0-16
    BSRQ    x+0(FP), AX
    MOVQ    AX, ret+8(FP)
    RET

TEXT ·MSB32(SB), NOSPLIT, $0-16
    BSRL    x+0(FP), AX
    MOVL    AX, ret+8(FP)
    RET

TEXT ·MSB16(SB), NOSPLIT, $0-16
    BSRW    x+0(FP), AX
    MOVW    AX, ret+8(FP)
    RET
