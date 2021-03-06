
/*--------------------------------------------------------*/
/*   AUTHOR    	 : THENNARASU            	      	  */
/*   DATE 	 : 25-01-2019	        	      	  */
/*   DESCRIPTION : LEFT SHIFTING USED ADDITION   	  */
/*   FILE_NAME	 : RIGHT_TO_LEFT_ADDITION.asm		  */
/*--------------------------------------------------------*/





			AREA PIN_SEL,CODE,READONLY
			ENTRY
	
			
PINSEL0 		EQU 0xE002C000       		;PINSEL = ADDRESS
IO0DIR 			EQU 0xE0028008 			;INPUT SELECTION 1 = OUTPUT  0 = INPUT 
IO0SET 			EQU 0xE0028004			;SET THE PIN THIS ADDRESS
IO0CLR 			EQU 0xE002800C			;CLEAR THE PINS
IO0PIN 			EQU 0xE0028000
	
			LDR R0,=PINSEL0	        	;PINSEL ADDRESS LOAD TO R0
			LDR R1,[R0]			;R0-RGISTER HAVE SOME ADDRESS THAT ADDRESS STORE IN ONE VALUE THAT VALUE LOAD TO R1
			MOV R1,#0X000000		;MOV VALUE R1 REGISTER
			STR R1,[R0]			;R1 VALUE STORE TO R0 ADDRESS
			
			
			LDR R0,=IO0DIR 			;IO0DIR ADDRESS LOAD TO R0 
			LDR R1,[R0]			;R0 -REGISTER HAVE SOME ADDRESS THAT ADDRESS STORE IN ONE VALUE THAT VALUE LOAD TO R1
			MOV R1,#0XFFFFFFFF		;MOVE VALUE R1 REGISTR
			STR R1,[R0]			;R1 VALUE STORE TO R0 ADDRESS

LOOP 			MOV R2,#1			;MOVE VALUE R2 REGISTER
			MOV R3,#32			;MOVE VALUE R3 REGISTER
SET_CLEAR
			LDR R0,=IO0SET			;IO0SET ADDRESS LOAD TO R0 
			LDR R1,[R0]			;R0 -REGISTER HAVE SOME ADDRESS THAT ADDRESS STORE IN ONE VALUE THAT VALUE LOAD TO R1
			ORR R1,R2          		;MOVE R2 VALUE R1 REGISTR
			STR R1,[R0]			;R1 VALUE STORE TO R0 ADDRESS
			
			LDR R0,=IO0CLR			;IO0CLR ADDRESS LOAD TO R0 
			LDR R1,[R0]			;R0 -REGISTER HAVE SOME ADDRESS THAT ADDRESS STORE IN ONE VALUE THAT VALUE LOAD TO R1
			ADDS R1,R2			;R1+=R2
			STR R1,[R0]            		;R1 VALUE STORE TO R0 ADDRESS
			ADDS R2,R2			;R2+=R2
			SUBS R3,#1			;R3=R3-1
			BNE  SET_CLEAR			;WHEN ZER0 FLAG IS SET THAT EXIT
			B   LOOP			;END OF THE BRANCH
			END				;END THE PROGRAM
