			AREA LOAD_REGISTER_FROM_MEMORY,CODE,READONLY	;CODE SEGMENT
			ENTRY
		
			MOV R5,#2
			LDR R2,=ARM_STATE	;ARM_STATE ADDRESS LOAD TO R1
			LDR R0,=ARM_ST		;ARM_ST ADDRESS LOAD R0 REGISTER
LOOP1		LDR R1,[R2],#4		;R2 REGISTER HAVE SOME ADDRESS THAT ADDREES HAVE SOME VALUE THAT VALUE LOAD TO R1 REGISTER,SHIFTING 1 HALF_WORD
			STR R1,[R0],#4		;R1,VALUE STORE TO R0 ADDRESS
			SUB R5,#1
			BNE LOOP1			;WHEN FLAG SET 0 THAT TIME ONLY EXIT FROM THE LOOP SO WE NEED TO UPTATE CPSR REGISTER
LOOP		B	LOOP
ARM_STATE	DCD	0X01234567,0XFFFFFFFF,0X00000011,0X00000002,0X00000001		;ARM_STATE 5 CONSTANT  32 BIT VALUE	
	
			AREA DATA_SEGMENT,DATA,READWRITE	;DATA SEGMENT 
ARM_ST		DCD	0				;ARM_ST CONSTANT DADA   DEFINE CONSTANT DATA(DCD)
			END					;END PROGRAM