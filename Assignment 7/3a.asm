TITLE 3a
Include Irvine32.inc

.data
apple BYTE ?
pear BYTE ?
val1 WORD 30

.code
main PROC
mov bx, 20h
mov cx, 10h
cmp cx, bx
jae label1
cmp cx, val1
jne label1
mov apple, 10
jmp exitp
label1:
mov apple, 20
exitp:
exit
main ENDP
END main