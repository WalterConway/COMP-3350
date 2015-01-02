TITLE POSITIVE VALUE FINDER
Include Irvine32.inc

.data
myArray1 SWORD -12,-4,-23,-21,-45,-12,-2
sentinel SWORD 0
messageS BYTE "found",0
messageF BYTE "not found",0
.code
main PROC
mov ecx, LENGTHOF myArray1
mov ebx, 0
L1:
mov ax, [myArray1 + ebx]
TEST ax, 8000h
jz MSG1
add ebx, TYPE myArray1
LOOP L1
mov edx, OFFSET messageF
CALL WriteString
CALL Crlf
jmp exitP

MSG1:
mov edx, OFFSET messageS
CALL WriteString
CALL Crlf

exitP:
exit
main ENDP
END main