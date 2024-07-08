.global _start @tells the assembler to make the symbol
_start: @represents the program's entry point where execution begins
	LDR R0,=list @loads the address of the list symbol into register R0
	LDR R1, [R0] @loads the data from the memory address stored in register R0 into R1
	@LDR R2,[R0,#4] loads the data from the memory address 4 bytes higher than the value in R3 into R1
	@LDR R2,[R0,#4]!
	LDR R2,[R0],#4 @list[R0]
			@R0+1

.data @defines a section in memory specifically for storing constant data
list: @this defines a symbol named "list"
	.word 4,5,-9,1,0,2,-3
	@word: this directive specifies that the following values are 32-bit (4-byte) words
	@this is a list of integers separated by commas, these stored consecutively in memory

@list = [4,5,-9,0,2,-3]
@[R0,#4] equal to list[R0+1] in high level program languages
