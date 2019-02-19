			AREA BRANCH_INSTRUCTIONS,CODE,READONLY
			ENTRY
			
			
LOOP1		
			LDR R1,=0X80000000		;Load the value to R1 register
			LDR R2,=0X00000001		;Load the value to R2 register
			ADDS R3,R1,R2			;R3 = R1+R2 
			SUBS R4,R1,R2			;R4 = R1+R2
			B LOOP1				;Continusly execute the loop while(1)
			END
