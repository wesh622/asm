MAIN            
                MOV     R11, R13
                SUB     R13, R13, #4*3
                MOV     R0, #0x0F
                STR     R0, [R11, #-4]
                MOV     R0, #0x14
                STR     R0, [R11, #-4*2]
                LDR     R0, [R11, #-4]
                SUB     R13, R13, #4
                STR     R0, [R13]
                LDR     R0, [R11, #-4*2]
                SUB     R13, R13, #4
                STR     R0, [R13]
                SUB     R13, R13, #4
                BL      between
                LDR     R0, [R13]
                STR     R0, [R11, #-4*3]
                END
between   
                STMFD   R13!, {R0, R1, R11, LR}
                MOV     R11, R13
                MOV     R0, #0x00
                SUB     R13, R13, #4
                STR     R0, [R13]
                MOV     R0, #0x00
                SUB     R13, R13, #4
                STR     R0, [R13]
                MOV     R0, #0x00
                SUB     R13, R13, #4
                STR     R0, [R13]
                MOV     R0, #00
                ADD     R0, R11, #-4
                SUB     R13, R13, #4
                STR     R0, [R13]
                LDR     R0, [R11, #4*6]
                SUB     R13, R13, #4
                STR     R0, [R13]
                BL      inside
                LDR     R0, [R11, #4*5]
                SUB     R13, R13, #4
                STR     R0, [R13]
                MOV     R0, #00
                ADD     R0, R11, #-4*2
                SUB     R13, R13, #4
                STR     R0, [R13]
                BL      outside
                LDR     R0, [R11, #-4]
                LDR     R1, [R11, #-4*2]
                ADD     R0, R0, R1
                STR     R0, [R11, #-4*3]
                LDR     R0, [R11, #-4*3]
                STR     R0, [R11, #4*4]
                MOV     R13, R11
                LDMFD   R13!, {R0, R1, R11, PC}
inside
                STMFD   R13!, {R0, R1, R11, LR}
                MOV     R11, R13
                LDR     R0, [R11, #4*4]
                ANDS    R0, R0, #1
                LDR     R0, [R11, #4*4]
                BEQ     IRIGHT
                LSL     R0, R0, #4
                B       IOUT
IRIGHT          ASR     R0, R0, #2
IOUT            LDR     R1, [R11, #4*5]            
                STR     R0, [R1]
                MOV     R13, R11
                LDMFD   R13!, {R0, R1, R11, PC}
outside
                STMFD   R13!, {R0, R1, R11, LR}
                MOV     R11, R13
                LDR     R0, [R11, #4*5]
                ANDS    R0, R0, #1
                LDR     R0, [R11, #4*4]
                BEQ     ORIGHT
                LSL     R0, R0, #2
                B       OOUT
ORIGHT          ASR     R0, R0, #2
OOUT            LDR     R1, [R11, #4*4]            
                STR     R0, [R1]
FINAL           MOV     R13, R11
                LDMFD   R13!, {R0, R1, R11, PC}


