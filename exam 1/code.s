MAIN            
                MOV     R11, R13
                SUB     R13, R13, #4*3
                MOV     R0, #3
                STR     R0, [R11, #-4]
                MOV     R0, #5
                STR     R0, [R11, #-4]

                LDR     R0, [R11, #-4]
                SUB     R13, R13, #4
                STR     R0, [R13]
                LDR     R0, [R11, #-4*2]
                SUB     R13, R13, #4
                STR     R0, [R13]
                SUB     R13, R13, #4
                BL      KNEAD
                LDR     R0, [R13]
                STR     R0, [R11, #-4*3]

                LDR     R0, [R11, #-4*3]
                SUB     R13, R13, #4
                STR     R0, [R13]
                SUB     R13, R13, #4
                BL      CROISSANT_STORM
                LDR     R0, [R13]
                STR     R0, [R11, #-4*3]

                MOV     R13, R11
                END

CROISSANT_STORM 
                STMFD   R13!, {R0, R1, R11, LR}
                MOV     R11, R13
                SUB     R13, R13, #4
                MOV     R0, #7
                STR     R0, [R11, #-4]
                LDR     R0, [R11, #-4]
                LDR     R1, [R11, #4 * 5]
                ADD     R0, R0, R1
                STR     R0, [R11, #-4]
                CMP     R0, #20
                BGE     CS_RETURN

                LDR     R0, [R11, #-4]
                SUB     R13, R13, #4
                STR     R0, [R11]
                SUB     R13, R13, #4
                BL      CROISSANT_STORM
                LDR     R0, [R13]
                STR     R0, [R11, #-4]

CS_RETURN       
                LDR     R0, [R11, #-4]
                STR     R0, [R11, #4 * 4]
FINAL           MOV     R13, R11
                LDMFD   R13!, {R0, R1, R11, PC}

KNEAD           
                STMFD   R13!, {R0, R1, R11, LR}
                MOV     R11, R13
                SUB     R13, R13, #4
                LDR     R0, [R11, #4 * 6]
                LSL     R0, R0, #1
                LDR     R1, [R11, #4 * 5]
                ADD     R0, R0, R1
                STR     R0, [R11, #-4]
                LDR     R0, [R11, #-4]
                STR     R0, [R11, #4 * 4]
                MOV     R13, R11
                LDMFD   R13!, {R0, R1, R11, PC}

