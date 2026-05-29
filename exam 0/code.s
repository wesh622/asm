MAIN
    MOV     R11, R13
    SUB     R13, R13, #4*4
    MOV     R0, #10
    STR     R0, [R11, #-4]
    MOV     R0, #5
    STR     R0, [R11, #-4*2]
    MOV     R0, #0
    STR     R0, [R11, #-4*3]

    LDR     R0, [R11, #-4]
    SUB     R13, R13, #4
    STR     R0, [R13]
    LDR     R0, [R11, #-4*2]
    SUB     R13, R13, #4
    STR     R0, [R13]
    SUB     R13, R13, #4
    BL      SETUPQUALITY
    LDR     R0, [R13]
    STR     R0, [R11, #-4*4]
    
    ADD     R0, R11, #-4*3
    SUB     R13, R13, #4
    STR     R0, [R13]
    LDR     R0, [R11, #-4*4]
    SUB     R13, R13, #4
    STR     R0, [R13]
    BL      DRAWIMAGE

    MOV     R13, R11
END

SETUPQUALITY
    STMFD   R13!, {R0, R1, R11, LR}
    MOV     R11, R13
    SUB     R13, R13, #4
    MOV     R0, #0
    STR     R0, [R11, #-4]

    LDR     R0, [R11, #4*6]
    ASR     R0, R0, #1
    LDR     R1, [R11, #-4]
    ADD     R1, R1, R0
    STR     R1, [R11, #-4]

    LDR     R0, [R11, #-4]
    CMP     R0, #50
    BGE     RETSET
    LDR     R0, [R11, #4*5]
    LSL     R0, R0, #2
    LDR     R1, [R11, #-4]
    ADD     R1, R1, R0
    STR     R1, [R11, #-4]

RETSET
    LDR     R0, [R11, #-4]
    STR     R0, [R11, #4*4]

    MOV     R13, R11
    LDMFD   R13!, {R0, R1, R11, PC}

DRAWIMAGE
    STMFD   R13!, {R0, R1, R11, LR}
    MOV     R11, R13

    LDR     R0, [R11, #4*4]
    EOR     R0, R0, #0x0F
    CMP     R0, #0
    BNE     ELSEDRAW

    LDR     R0, [R11, #4*4]
    EOR     R0, R0, #2
    LDR     R1, [R11, #4*5]
    STR     R0, [R1]
    B       ENDDRAW
    
ELSEDRAW
    LDR     R0, [R11, #4*4]
    LDR     R1, [R11, #4*5]
    STR     R0, [R1]

ENDDRAW
    MOV     R13, R11
    LDMFD   R13!, {R0, R1, R11, PC}
