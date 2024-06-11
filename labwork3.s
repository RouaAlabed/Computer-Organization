		AREA ORNEK,CODE,READONLY
		ENTRY
		EXPORT main
			
main	PROC

		LDR R6,=Text	;address
		MOV R0,#0  ;count
		
loop	LDRB R1, [R6],#1
		CMP R1,#36
		BEQ son
		ADD R0,R0,#1
		B loop


son 	B son
		ENDP
			
Text DCB "COMPUTER$"


		END