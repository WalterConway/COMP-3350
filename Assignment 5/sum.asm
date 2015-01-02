TITLE COMPUTING THE SUM OF N EVEN INTEGERS
INCLUDE IRVINE32.INC
.code
main PROC
	call clrscr
	call PromptForN
	mov ecx, eax	 ;MOVING THE INPUT VALUE TO ECX.
	call EvenInteger ; INPUT SHOULD BE IN ECX, OUTPUT SHOULD BE IN EAX
	call DisplaySum
	exit
main ENDP

;====================================================================
COMMENT !
PromptForN subroutine recieves an integer as input from the user
This integer will be how many even integers to add together.!
;====================================================================
PromptForN PROC
.data
	str1 BYTE "Enter A Integer: ",0
.code
	mov edx, OFFSET str1
	call WriteString ;Displays the string offset at edx
	call ReadInt	 ;THE INTEGER STORED INTO EAX
	call Crlf
	ret
PromptForN ENDP
;====================================================================
COMMENT !
EvenInteger SUBROUTINE USES THE ECX REG FOR AS THE NUMBER OF EVEN INTEGERS TO SUM TOGETHER
AND EAX REG IS THE RESULT.
EX. ECX = 5
THEN EAX = 30!
;====================================================================
EvenInteger PROC USES ecx esi edx
	mov eax, 2h ;This is our constant multiplier
	mov esi, 1h ;This is our increment multiplier
	mov ebx, 0h ;zero out the ebx reg for calculations
	LP1:
		push eax	;PUSH THE CONSTANT MULTIPLIER ONTO THE STACK TO SAVE FOR LATER,
					;SINCE MUL STORES HE RESULTS IN EAX AND ALSO USES EAX AS THE MULTIPLIER
		mul esi		;MULTIPLIES ESI BY EAX WHICH IS TWO.
		add ebx, eax;ADDS THE RESULT OF THE MULTIPLICATION TO THE PREVIOUS MULTIPLICATION IF ANY TO EBX
		pop eax ;RESTORES THE CONSTANT MULTIPLIER, WHICH IS TWO
		inc esi ;INCREMENTS THE INCREMENT MULTIPLIER TO PREPARE FOR NEXT EVEN INTEGER.
	loop LP1
	mov eax, ebx
	ret
EvenInteger ENDP
;====================================================================
COMMENT !
DisplaySum subroutine displays what's in the eax register assuming that
it is a summation of even integers.!
;====================================================================
DisplaySum PROC USES edx
.data
	str2 BYTE "Sum: ",0
.code
	mov edx, OFFSET str2
	call WriteString
	call WriteInt
	call Crlf
	ret
DisplaySum ENDP
END main