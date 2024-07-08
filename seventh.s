.global _start
_start:
	MOV R0,#1
	MOV R1,#2

	CMP R0,R1 @compares both registers, but not storage the result

	BGT greater@branch greater than
	@MOV R2,#2
	@BAL default @is like marking page(in a book) when you return it when you want
	@BGE @greater than or equal to
	@BLT @less than
	@BLE @less than or equal to
	@BEQ @equals
	@BNE @does not equals

greater: @a label
	MOV R2,#1

default:
	MOV R2,#2
