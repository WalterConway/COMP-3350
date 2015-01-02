TITLE COMPUTE ARITHMETIC EXPRESSION
include Irvine32.inc
.data
Val1 SWORD -8
Val2 SWORD -21
Val3 SWORD 36
Val4 SWORD 93
.code
main PROC
	movsx eax, Val2
	movsx ebx, Val4
	add eax, ebx
	neg eax
	movsx ebx, Val3
	neg ebx
	push eax
	movsx eax, Val1
	add ebx, eax
	pop eax
	add eax, ebx
	exit
main ENDP
END main
