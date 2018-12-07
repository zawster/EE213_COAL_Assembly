Include irvine32.inc
.data 
	msg byte "Hello Word",0h
	keys byte 'u','i','a',1,-3,'e',2,-4,-4,6
	
.code
	main proc
		mov ecx,lengthof msg
		mov esi,0
		L1:
			mov edi,0
			movzx bx,byte ptr msg[esi]
			mov al,keys[edi]
			cmp al,97 	; for vowels
			jb L2
			cmp al,122
			ja L2
			mov bl,al
			cmp bl,97
			jne L3
			rol bx,0 	; a for left rotation
			L3: cmp bl,101
			jne L4
			ror bx,0	; e for right rotation
			L4: cmp bl,105
			jne L5
			RCL bx,0	; i for RCL
			L5: cmp bl,111
			jne L6
			cmp bl,117
			jne L6
			RCR bx,0
			
			L6: jmp next
			
			
			L2:	test al,al	; for integer values
				jns rightShift
				; left shift
				SHL ebx,1
				jmp next
			rightShift:
				SHR ebx,1
				jmp next
				
			next: 
				inc edi
				inc esi
				loop L1
			mov edx,ebx
			call writestring
			call crlf
	exit
	main endp
	End main