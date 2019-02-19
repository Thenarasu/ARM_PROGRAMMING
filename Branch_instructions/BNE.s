		AREA BRANCH,CODE,READONLY
		ENTRY
		MOV R0,#5
LOOP
		SUBS R0,#1
		BNE LOOP		;when z flag set that time exit from the loop
L		B	L
		END