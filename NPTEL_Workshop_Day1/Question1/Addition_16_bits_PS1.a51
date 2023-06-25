ORG 00H
	LJMP MAIN
	ORG 100H
		MAIN:
		ACALL ADD16
		HERE:
		SJMP HERE
		ORG 130H
			ADD16:
			CLR C
			MOV A,61H
			ADD A,63H
			MOV 66H,A
			MOV  A,60H
			ADDC A,62H
			MOV 65H,A
			MOV A,#00H
			ADDC A,#00H
			MOV 64H,A
			RET
			END 
            			
			