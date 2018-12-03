Include Irvine32.inc

.data 
	a Byte 16
	b Byte 32
	ci Byte 64
	d Byte 64
	e Byte 0
	eq1 Byte ?
	gr Byte ?
	ls Byte ?
	count Byte 0
	msg Byte "e is "
	msg1 Byte "times less that d"
.code
	main proc
		xor eax,eax
		mov al,a
		add al,b
		mov e,al
		;call writedec
		
		cmp al,d
		jne L1		; !=
		cmp al,0
		jbe L1		; <=
		mov eq1,1
		jmp Next
		L1: cmp al,d   ; elseif 1
			jbe L2
			cmp al,0
			je L2
			mov eq1,0
			jmp Next
		L2: cmp al,d 	; else if 2
			ja L21
			cmp al,10
			ja L21
			jmp L3
			L21:  mov gr,1
		L3:mov gr,0 ; else
		
		Next:
			cmp al,d
			jae L4
			mov ls,1
		L4: mov ls,0
			jmp L5
		
		L5: cmp al,d	; While Loop
		je L6		;  if equal jmp outside thge loop
		inc count
		jmp L5
		L6:	mov edx,offset msg
			call writestring
			mov al,count
			call writeint
			mov edx,offset msg1
			call writestring
			call crlf
			
	exit
	main endp
		
	END main