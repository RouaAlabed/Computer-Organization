area ornek,code,readonly
	ENTRY
	EXPORT main
main PROC
		//Q1
		
	LDR R6,=Adizi
	LDR R7,=Bdizi
	LDR R8,=Cdizi
	
	MOV R1,#20
	MOV R2,#5
	
	LDR R0,[R7,#12]
	ADD R1,R1,R2
	ADD R0,R0,R1
	
		//Q2
	LDR R4,[R7,#16]
	MOV R2,#4
	MUL R5,R4,R2
	LDR R9,[R6,R5]
	
	SUB R0,R1,R9
	STR R0,[R8,#20]

		
son b son

	
	ENDP
Adizi DCD 5,10,15,20,25,30,35,40,45,50
Bdizi DCD 1,2,3,4,5,6,7,8,9,10
Cdizi DCD 0,0,0,0,0,0,0,0,0,0
	
	END
		
		

	
