		AREA BRANCH,CODE,READONLY
		ENTRY
		
		LDR	R0,=0X7FFFFFFF	; Load the value R0 register
		LDR R1,=0X80000000	; Load the value R1 register
		
LOOP	
		ADDS R0,R1
		BVC	 LOOP		; When the cpsr register take overflow bit that time exit from the loop
L	    B	 L			; always branch
		END