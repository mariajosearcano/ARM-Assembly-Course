.global _start
_start:
	MOV R0,#0xFF
	MOV R1,#22
	AND R2, R0, R1 @compares both registers bitwise
	ANDS R2, R0, R1 @updates the condition flags based on the result
	ORR R2, R0, R1 @or bitwise
	EOR R2, R0, R1 @exclusive or (only is 1 if the one is 1, not when both are one)
	MVN R0,R0 @negates de source and then puts that result into the destination (it does move and negation at the same time)
	@it negates whole register
	AND R0,R0,#0x000000FF
