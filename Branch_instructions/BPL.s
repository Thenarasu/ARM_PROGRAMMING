		AREA BRANCH,CODE,READONLY
		ENTRY
		
		LDR R0,=0X7FFFFFFE	;Load the value R0 register	
		LDR R1,=1		;Load the value R1 register

LOOP	
		ADDS R0,R1
		BPL  LOOP		; When CPSR set negative bit that time exit from the loop while(N != 1)
L		B    L			; Always branch
		END
