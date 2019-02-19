			AREA BRANCH_INSTRUCTION_BEQ,CODE,READONLY
			ENTRY
					
			LDR R0,=0X01		;load the value to R0 register
			LDR R1,=0X01		;load the value to R1 register
LOOP1			
			CMP R0,R1			; Compare 2 values 
			ADD	R0,#1
			BEQ	LOOP1			; When both values are not  eqaual that time exit from the loop
L			B	L			;while(1)	
			END				;End the program
