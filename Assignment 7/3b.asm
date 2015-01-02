TITLE 3b
Include Irvine32.inc

.data
pear BYTE ?
val1 WORD 10

.code
main PROC
mov bx, 05h
mov dx, 10h
cmp bx, dx
jbe label1
cmp dx, val1
je label1
mov pear, 0
jmp exitp
label1:
mov pear, 1
exitp:
exit
main ENDP
END main