@ First test program of assembly in ARM. Add a value and then exit

		.global _start
_start:		MOV R1, #4
		MOV R2, #3
		ADD R3, R1, R2
		MOV R7, #1
		SVC 0
		.END
