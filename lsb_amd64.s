#include "textflag.h"

TEXT ·LSB64(SB), NOSPLIT, $0-16
    BSFQ    x+0(FP), AX
    MOVQ    AX, ret+8(FP)
    RET

TEXT ·LSB32(SB), NOSPLIT, $0-16
    BSFL    x+0(FP), AX
    MOVL    AX, ret+8(FP)
    RET

TEXT ·LSB16(SB), NOSPLIT, $0-16
    BSFW    x+0(FP), AX
    MOVW    AX, ret+8(FP)
    RET
