		AREA BRANCH,CODE,READONLY
		ENTRY
		MOV R0,#5		;Move the value R0 register
LOOP
		SUBS R0,#1		R0-=1
		BNE LOOP		;when z flag set that time exit from the loop
L		B	L		;Always branch
		END
