MAIN           
               MOV     R11, R13
               SUB     R13, R13, #4*3
               MOV     R0, #0x05
               STR     R0, [R11, #-4]
               MOV     R0, #0x03
               STR     R0, [R11, #-4*2]
               LDR     R0, [R11, #-4]
               SUB     R13, R13, #4
               STR     R0, [R13]
               LDR     R0, [R11, #-4*2]
               SUB     R13, R13, #4
               STR     R0, [R13]
               SUB     R13, R13, #4
               BL      STARMAN
               LDR     R0, [R13]
               STR     R0, [R11, #-4*3]
               END

STARMAN        
               STMFD   R13!, {R0, R1, R11, LR}
               MOV     R11, R13
               SUB     R13, R13, #4*2
               MOV     R0, #0x09
               STR     R0, [R11, #-4]
               LDR     R0, [R11, #4*6]
               LDR     R1, [R11, #4*5]
               SUB     R1, R0, R1
               LDR     R0, [R11, #-4]
               ADD     R0, R0, R1
               STR     R0, [R11, #-4*2]
               ADD     R0, R11, #-4*2
               SUB     R13, R13, #4
               STR     R0, [R13]
               LDR     R0, [R11, #-4]
               SUB     R13, R13, #4
               STR     R0, [R13]
               BL      GROUND_CONTROL
               LDR     R0, [R11, #-4*2]
               SUB     R13, R13, #4
               STR     R0, [R13]
               SUB     R13, R13, #4
               BL      PLANET_EARTH
               LDR     R0, [R13]
               STR     R0, [R11, #4*4]
               MOV     R13, R11
               LDMFD   R13!, {R0, R1, R11, PC}

GROUND_CONTROL 
               STMFD   R13!, {R0, R1, R2, R11, LR}
               MOV     R11, R13
               LDR     R0, [R11, #4*6]
               LDR     R1, [R11, #4*5]
               LDR     R2, [R0]
               ADD     R2, R2, R1
               STR     R2, [R0]
               EOR     R2, R2, R1
               STR     R2, [R0]
               MOV     R13, R11
               LDMFD   R13!, {R0, R1, R2, R11, PC}

PLANET_EARTH   
               STMFD   R13!, {R0, R1, R11, LR}
               MOV     R11, R13
               LDR     R0, [R11, #4*5]
               ANDS    R1, R0, #1
               BEQ     SHIFT_RIGHT
               LSR     R0, R0, #1
               B       RETURN
SHIFT_RIGHT    
               LSR     R0, R0, #1
RETURN         
               STR     R0, [R11, #-4*4]
FINAL          MOV     R13, R11
               LDMFD   R13!, {R0, R1, R11, PC}

