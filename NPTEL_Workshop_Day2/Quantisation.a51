
ORG 00H
LJMP MAIN
ORG 100H
MAIN:
CALL QUANT
HERE: SJMP HERE
ORG 130H
    QUANT:
	      BYTE_1:
	      MOV A,60H
	      CLR C
		  SUBB A,#09H
		  JNC NEXT_11
		  MOV 70H,#05H
		  SJMP BYTE_2
		  NEXT_11:
		     CLR C
			 MOV A,60H
			 SUBB A,#19H
			 JNC NEXT_12
			 MOV 70H,#15H
			 SJMP BYTE_2
			 NEXT_12:
			    CLR C
				MOV A,60H
				SUBB A,#29H
				JNC NEXT_13
				MOV 70H,#25H
				SJMP BYTE_2
				NEXT_13:
				   CLR C
				   MOV 70H,#35H
				   SJMP BYTE_2
	      BYTE_2:	
          MOV A,61H
	      CLR C
		  SUBB A,#09H
		  JNC NEXT_21
		  MOV 71H,#05H
		  SJMP BYTE_3
		  NEXT_21:
		     CLR C
			 MOV A,61H
			 SUBB A,#19H
			 JNC NEXT_22
			 MOV 71H,#15H
			 SJMP BYTE_3
			 NEXT_22:
			    CLR C
				MOV A,61H
				SUBB A,#29H
				JNC NEXT_23
				MOV 71H,#25H
				SJMP BYTE_3
				NEXT_23:
				   CLR C
				   MOV 71H,#35H
				   SJMP BYTE_2	
        BYTE_3:	
          MOV A,62H
	      CLR C
		  SUBB A,#09H
		  JNC NEXT_31
		  MOV 72H,#05H
		  SJMP BYTE_4
		  NEXT_31:
		     CLR C
			 MOV A,62H
			 SUBB A,#19H
			 JNC NEXT_32
			 MOV 72H,#15H
			 SJMP BYTE_4
			 NEXT_32:
			    CLR C
				MOV A,62H
				SUBB A,#29H
				JNC NEXT_33
				MOV 72H,#25H
				SJMP BYTE_4
				NEXT_33:
				   CLR C
				   MOV 72H,#35H
				   SJMP BYTE_4		
          BYTE_4:	
          MOV A,63H
	      CLR C
		  SUBB A,#09H
		  JNC NEXT_41
		  MOV 73H,#05H
		  SJMP BYTE_5
		  NEXT_41:
		     CLR C
			 MOV A,63H
			 SUBB A,#19H
			 JNC NEXT_42
			 MOV 73H,#15H
			 SJMP BYTE_5
			 NEXT_42:
			    CLR C
				MOV A,63H
				SUBB A,#29H
				JNC NEXT_43
				MOV 73H,#25H
				SJMP BYTE_5
				NEXT_43:
				   CLR C
				   MOV 73H,#35H
				   SJMP BYTE_5
	      BYTE_5:	
          MOV A,64H
	      CLR C
		  SUBB A,#09H
		  JNC NEXT_51
		  MOV 74H,#05H
		  SJMP BYTE_6
		  NEXT_51:
		     CLR C
			 MOV A,64H
			 SUBB A,#19H
			 JNC NEXT_52
			 MOV 74H,#15H
			 SJMP BYTE_6
			 NEXT_52:
			    CLR C
				MOV A,64H
				SUBB A,#29H
				JNC NEXT_53
				MOV 74H,#25H
				SJMP BYTE_6
				NEXT_53:
				   CLR C
				   MOV 74H,#35H
				   SJMP BYTE_6
	   BYTE_6:	
          MOV A,65H
	      CLR C
		  SUBB A,#09H
		  JNC NEXT_61
		  MOV 75H,#05H
		  SJMP BYTE_7
		  NEXT_61:
		     CLR C
			 MOV A,65H
			 SUBB A,#19H
			 JNC NEXT_62
			 MOV 75H,#15H
			 SJMP BYTE_7
			 NEXT_62:
			    CLR C
				MOV A,65H
				SUBB A,#29H
				JNC NEXT_63
				MOV 75H,#25H
				SJMP BYTE_7
				NEXT_63:
				   CLR C
				   MOV 75H,#35H
				   SJMP BYTE_7
	     BYTE_7:	
          MOV A,66H
	      CLR C
		  SUBB A,#09H
		  JNC NEXT_71
		  MOV 76H,#05H
		  SJMP BYTE_8
		  NEXT_71:
		     CLR C
			 MOV A,66H
			 SUBB A,#19H
			 JNC NEXT_72
			 MOV 76H,#15H
			 SJMP BYTE_8
			 NEXT_72:
			    CLR C
				MOV A,66H
				SUBB A,#29H
				JNC NEXT_73
				MOV 76H,#25H
				SJMP BYTE_8
				NEXT_73:
				   CLR C
				   MOV 76H,#35H
				   SJMP BYTE_8
	   BYTE_8:	
          MOV A,67H
	      CLR C
		  SUBB A,#09H
		  JNC NEXT_81
		  MOV 77H,#05H
		  RET
		  NEXT_81:
		     CLR C
			 MOV A,67H
			 SUBB A,#19H
			 JNC NEXT_82
			 MOV 77H,#15H
			 RET
			 NEXT_82:
			    CLR C
				MOV A,67H
				SUBB A,#29H
				JNC NEXT_83
				MOV 77H,#25H
				RET
				NEXT_83:
				   CLR C
				   MOV 77H,#35H
RET
END