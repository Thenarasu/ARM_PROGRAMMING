		AREA ADDITION_64_BIT_VALUES,CODE,READONLY
		ENTRY
		
		LDR R1,=0XFFFFFFFF				;THAT ABSOLUTE VALUE TO ASSIGNED R1 REGISTER USING LDR INSTRUCTION  THAT'S PSEUDO INSTRUCTION USED 
		LDR R2,=0XFFFFFFFF				;IT'S USING 32 BIT CONSTANT VALUE TO ASSIGNED TO R2 REGISTER
		LDR R3,=0XFFFFFFFF				;THAT LDR USING 32 BIT CONSTANT VALUE TO ASSIGNED R3 REGISTER
		LDR R4,=0XFFFFFFFF				;THAT LDR USING 32 BIT CONSTANT VALUE TO ASSIGNED R4 REGISTER
		
		ADDS R1,R3					;THAT ADD 'S' WILL UPDATED CPSR STATUS 
		ADC  R1,#0					;ADD WITH CARRY VALUE IT'S VALUE TO SET R1=0XFFFFFFFF SETED
		ADDS R2,R4					;THAT ADD 'S ' WILL UPDATED CPSR REGISTER
		ADC	 R2,#2					;ADD WITH CARRY VALUE IT'S THAT VALUE IS R2=1 ONLY SETED
		
		END						;END OF THE PROGRAM
