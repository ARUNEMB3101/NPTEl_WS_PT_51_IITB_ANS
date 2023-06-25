ORG 00H
LJMP MAIN
ORG 100H
MAIN:
CALL QUANT
HERE: SJMP HERE
ORG 130H
    QUANT:
	MOV R0,#60H
    MOV R1,#70H
    MOV R2,#00H
	      BYTE_1:
	      MOV A,@R0
	      CLR C
		  SUBB A,#09H
		  JNC NEXT_11
		  MOV @R1,#05H
		  SJMP INCRE
		  NEXT_11:
		     CLR C
			 MOV A,@R0
			 SUBB A,#19H
			 JNC NEXT_12
			 MOV @R1,#15H
			 SJMP INCRE
			 NEXT_12:
			    CLR C
				MOV A,@R0
				SUBB A,#29H
				JNC NEXT_13
				MOV @R1,#25H
				SJMP INCRE
				NEXT_13:
				   CLR C
				   MOV @R1,#35H
				INCRE:
				   INC R2
			       INC R0
				   INC R1
				   CJNE R2,#08H,BYTE_1
	
RET
END