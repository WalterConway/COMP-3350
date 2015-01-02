TITLE Addressing Modes          (main.asm)
include      Irvine32.inc

.data
alpha	DWORD	44h, 23h
beta	DWORD	6788h, 66h
gamma	DWORD	1234h

.code
main PROC
	mov eax, 12h;
	mov ecx, eax;
	mov edi, OFFSET beta;
	mov [gamma], eax;
	mov esi, [gamma];
	mov esi, 4;
	mov eax, beta[esi];
	mov ebx, OFFSET alpha;
	mov eax, [ebx];
	mov eax, 4[ebx];
	mov eax, 4[ebx][esi];
	exit
main ENDP
END main