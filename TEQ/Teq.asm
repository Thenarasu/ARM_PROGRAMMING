/*-----------------------------------------------*/
/*	AUTHOR   	  : THENNARASU					           */
/*	DATE     	  : 27-01-2019		            		 */
/*	FILENAME 	  : EQAL_OR_NOT.asm			         	 */
/*	DESCRIPTION	: EXPLANATION OF TEQ			       */
/*-----------------------------------------------*/
		
		
		
		
	    	AREA EQUAL_OR_NOT,CODE,READONLY
		    ENTRY

	    	LDR R0,=ARRAY1  	  				;Array1 address load to R0
	    	LDR R1,=ARRAY2	  	  			;Array2 address load to R1
		    LDR R4,=ARRAY3				    	;Array3 address load to R4
	    	MOV R5,#4			    			    ;R5 = 4 Move value to R5 Register

LOOP1 	LDR R2,[R0],#4 		    			;R0  Have some address that R0 address have some value that value load to R2 register
		    LDR	R3,[R1],#4    					;R3  Have some address that R3 address have some value that value load to R3 register
		    TEQ R2,R3			        			;Test if(R2==R3)
	    	BNE	LOOP	    			    		;When CPSR status Z = 1 set that time exit form the loop and this is forward loop
		    STR R2,[R4],#4     		   		;R2 value store to R4 address
	    	SUBS R5,#1				    	    ;sutraction	R5 -=1
    		BNE	LOOP1		        	    	;When CPSR status Z = 1 set that time exit form the loop and this is backward loop
LOOP									              ;End of the forward 
		
L       B	  L	      				    		;like while(1);
			
ARRAY1  DCD	0X0FF,0X020,0X10,0X10		;Array1 constant data
ARRAY2	DCD	0X0FF,0X020,0X20,0X10		;Array2 constant data
		    AREA RESET,DATA,READWRITE		;Data segment 
ARRAY3	DCD 0	          						;Array3 constant data
    		END	          							;End the program
