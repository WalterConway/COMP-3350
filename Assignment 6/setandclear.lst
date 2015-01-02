TITLE set  and clear flags
include Irvine32.inc

.data
STR1 BYTE "Set and clear the CF flag",0
STR2 BYTE "Set and clear the OF flag",0
STR3 BYTE "Set and clear the ZF flag",0
STR4 BYTE "Set and clear the SF flag",0
.code
main PROC

;a.	Use the Add and Sub instructions to set and clear the CF flag
;b.	Use the Add and Sub instructions to set and clear the OF flag
;c.	Use the Add and Sub instructions to set and clear the ZF flag
;d.	Use the Add and Sub instructions to set and clear the SF flag

;Change the Carry Flag CY
mov edx, OFFSET STR1
CALL WriteString
mov al, 00h ;     , al=00
sub al, 01h ; CY=1, al=FF
CALL DumpRegs
add al, 00h ; CY=0, al=FF
CALL DumpRegs
CALL WaitMsg
CALL Clrscr

;Change the Overflow Flag
mov edx, OFFSET STR2
CALL WriteString
mov al, +127;       al=7F
add al, 1   ; OV=1, al=80
CALL DumpRegs
sub al, 0   ; OV=0, al=80
CALL DumpRegs
CALL WaitMsg
CALL Clrscr

;Change the Zero Flag
mov edx, OFFSET STR3
CALL WriteString
mov al, 0   ;       al=0
add al, 1   ; ZR=0, al=1
CALL DumpRegs
sub al, 1   ; ZR=1, al=0
CALL DumpRegs
CALL WaitMsg
CALL clrscr

;Change the Sign Flag
mov edx, OFFSET STR4
CALL WriteString
mov al, 7Fh  ;       al=7F
add al, 1h   ; PL=1, al=80
CALL DumpRegs
sub al, 1h   ; PL=0, al=7F
CALL DumpRegs
CALL WaitMsg
CALL clrscr

exit
main ENDP
END main
