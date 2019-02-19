		AREA BRANCH,CODE,READONLY
		ENTRY
		
		LDR R0,=0X8FFFFFFE	;Load the value R0 register	
		LDR R1,=1		;Load the value R1 register

LOOP	
		ADDS R0,R1
		BMI  LOOP		; When CPSR not set negative bit that time exit from the loop 
L		B    L			; Always branch
		END
