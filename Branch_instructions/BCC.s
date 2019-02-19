		AREA BRANCH,CODE,READONLY
		ENTRY
		LDR R0,=0XFFFFFFFD
		LDR R1,=0X01

LOOP 	
		ADDS R0,R1			; add values R0+=R1
		BCC  LOOP			; When CPSR update Carry bit that time exit from the loop while(c != 1)
L 		B    L	         		; Always branch
		END
