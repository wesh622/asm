MAIN    
        MOV     R11, R13
        SUB     R13, R13, #4*3
        MOV     R0, #6
        STR     R0, [R11, #-4]
        MOV     R0, #4
        STR     R0, [R11, #-4*2]
        LDR     R0, [R11, #-4]
        SUB     R13, R13, #4
        STR     R0, [R13]
        LDR     R0, [R11, #-4*2]
        SUB     R13, R13, #4
        STR     R0, [R13]
        SUB     R13, R13, #4
        BL      SINISTER_PLAN
        LDR     R0, [R13]
        STR     R0, [R11, #-4*3]
        END

SINISTER_PLAN
        STMFD   R13!, {R0, R1, R11, LR}
        MOV     R11, R13
        ADD     R13, R13, #4*2
        MOV     R0, #13
        STR     R0, [R11, #-4]
        LDR     R0, [R11, #-4]
        LDR     R1, [R11, #4*6]
        SUB     R0, R0, R1
        LDR     R1, [R11, #4*5]
        ADD     R0, R0, R1
        STR     R0, [R11, #-4*2]
        ADD     R0, R11, #-4*2
        LDR     R1, [R11, #-4]
        SUB     R13, R13, #4
        STR     R0, [R13]
        SUB     R13, R13, #4
        STR     R1, [R13]
        B       MODIFY_DNA
        LDR     R0, [R11, #-4*2]
        SUB     R13, R13, #4
        STR     R0, [R13]
        SUB     R13, R13, #4
        BL      EVOLVE
        LDR     R0, [R13]
        STR     R0, [R11, #4*4]
        MOV     R13, R11
        LDMFD   R13!, {R0, R1, R11, PC}

MODIFY_DNA
        STMFD   R13!, {R0, R1, R2, R11, LR}
        MOV     R11, R13
        LDR     R0, [R11, #4*6]
        LDR     R1, [R11, #4*5]
        LDR     R2, [R0]
        ADD     R2, R2, R1
        STR     R2, [R0]
        LSR     R1, R1, #1
        EOR     R2, R2, R1
        STR     R2, [R0]
        MOV     R13, R11
        LDMFD   R13!, {R0, R1, R2, R11, PC}

EVOLVE
        STMFD   R13!, {R0, R1, R11, LR}
        MOV     R11, R13
        LDR     R0, [R11, #4*5]
        ANDS    R1, R0, #1
        BNE     EVOLVE_RETURN
        SUB     R0, R0, #1
        SUB     R13, R13, #4
        STR     R0, [R13]
        SUB     R13, R13, #4
        BL      EVOLVE
        LDR     R0, [R13]
EVOLVE_RETURN
        STR     R0, [R11, #4*4]
FINAL   MOV     R13, R11
        LDMFD   R13!, {R0, R1, R11, PC}
