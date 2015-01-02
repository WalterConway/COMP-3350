TITLE PROMPT INPUT AND DISPLAY INTS
include Irvine32.inc
LengthOfArray =  LENGTHOF Autumn
TypeOfArray = TYPE Autumn
.data
Autumn	WORD	12	DUP(?)
.code
main PROC
CALL PopulateArray
CALL DisplayArray
	exit
main ENDP
;======================================
;PopulateArray prompts the user for an integer and
; then stores the input upto 16bit into the Array
;======================================
PopulateArray Proc
.data
Prompt1	BYTE "Please input a value: ",0
.code
mov edx, OFFSET Prompt1 ; places the offset of the message to edx reg
mov ecx, LengthOfArray  ; places the length of the array to ecx and this initalizes the loop
mov ebx, 0
LP1:
	CALL WriteString ;Writes whatever the address in edx points to
	CALL ReadInt ;Stores input into eax
	mov [Autumn + ebx], ax
	add ebx, TYPE Autumn
Loop LP1
ret
PopulateArray ENDP

;======================================
;The DisplayArray displays each element of the
; array and shows the offset of where the element is stored
; in memory thus shows the memory map pertaining to the width of a word.
;======================================
DisplayArray Proc
.data
DisplayMsg BYTE "WORD MEMORY MAP",0
ElementMsg BYTE "Autumn[",0
ElementMsg2 BYTE "]: ",0
.code
mov ecx, LengthOfArray
mov ebx, 0
	Call Clrscr ; Clears the Screen before displaying the array
	mov edx, OFFSET DisplayMsg 
	Call WriteString	; Displays "WORD MEMORY MAP"
	Call Crlf
LP2:
	mov edx, OFFSET ElementMsg
	Call WriteString ; displays Autumn[
	mov eax, ebx	 
	Call WriteInt	 ; displays Autumn[# #-The displacement from the Array's Address thus the offset
	mov edx, OFFSET ElementMsg2
	Call WriteString ; displays Autumn[#]:
	movsx eax, [Autumn + ebx]
	Call WriteInt
	Call Crlf
	add ebx, TYPE Autumn
Loop LP2
ret
DisplayArray ENDP
end main
