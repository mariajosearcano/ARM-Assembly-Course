.global _start
_start:
	MOV R0, #10
@	LSL R0,#1 @is multiplied by two 1 time
	@LSR R0,#1 @is divided by two 1 time
	@MOV R1,R0
	@LSL R1,#1
	@MOV R1,R0,LSL #1
	ROR R0,#1 @rotates the last number to the first place one time (101 -> 110)
