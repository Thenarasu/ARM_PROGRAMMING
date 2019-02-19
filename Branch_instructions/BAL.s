			AREA BRANCH_INSTRUCTION_BAL,CODE,READONLY
			ENTRY
LOOP		
			LDR R0,=0X01 			;Load the value to R0 register  
			LDR R1,=0X03			;load the value to R1 register 
			ADDS R3,R0,R1			;R3 = R0 + R1
			BAL	LOOP			;Continusly execute the loop while(1)
			END
