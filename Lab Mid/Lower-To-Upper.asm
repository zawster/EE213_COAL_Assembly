include irvine32.inc

.data 
	str1 byte "fast nuces has change the policy for midterm exam 2018",0
	counter dword 0
	
.code
	main PROC
		mov ebx, counter
		mov ecx,LENGTHOF str1
		mov esi,OFFSET str1
		dec ecx
		Ll:
			mov al,Byte ptr [esi]
			cmp al, 32
			je next
			cmp al, 60
			jna next
			and BYTE PTR [esi], 11011111b
			mov al,Byte ptr [esi]	
			cmp al, 65
			je final
			cmp al, 69
			je final
			cmp al, 73
			je final
			cmp al, 79
			je final
			cmp al, 85
			je final
			jmp next
		
		final:	inc ebx
		
		next:	inc esi
			loop Ll
			mov edx, OFFSET str1
			Call WriteString 
			call crlf
			mov eax, ebx
			call writedec
			Call Crlf
		exit
		main ENDP
END main