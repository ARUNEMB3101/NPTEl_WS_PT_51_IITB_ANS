ORG 00H
	LJMP MAIN
	ORG 100H
		MAIN:
		ACALL GET_INPUT
		ACALL ADDITION
		HERE:
		SJMP HERE
		ORG 130H
			GET_INPUT:
			CLR C
			MOV A,70H
			MOV B,73H
			MUL AB
			MOV 50H,B
			MOV 51H,A
			MOV A,71H
			MOV B,74H
			MUL AB
			MOV 52H,B
			MOV 53H,A
			MOV A,72H
			MOV B,75H
			MUL AB
			MOV 54H,B
			MOV 55H,A
			RET
			ADDITION:
			MOV A,51H
			ADD A,53H
			MOV 62H,A
			MOV A,50H
            ADDC A,	52H
            MOV 61H,A
			MOV 20H,#00H
			MOV 00H,C
            MOV A,55H
            ADD A,62H
            MOV 62H,A
            MOV A,54H
            ADDC A,61H
			MOV 61H,A
			MOV A,#00H
            ADDC A,20H
            MOV 60H,A			
			RET
			END 
            			
			