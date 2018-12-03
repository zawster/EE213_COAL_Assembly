Include irvine32.inc

.data
	var1 dword 1345546h
	var dword 10h
	ma dword ?
	count byte 0
	t dword 2h
.code
	tes proto
	main proc
	
	xor eax,eax
	xor ebx,ebx
	xor edx,edx
	mov ebx,0
	
	mov eax,var1
	L1:  xor edx,edx
		div var
		push eax
		
			mov eax,edx
			mov ma,eax
			xor edx,edx
			div t  ;  i%2
		
			cmp edx,0  ;i%2==0
			je L4
			jne L2   ; odd
			
			L4: add ebx,ma
			jmp L3
			L2: inc count
		L3: pop eax
				
		cmp eax,0
		je Next
		jne L1
		
	Next:
		mov eax,ebx
		call writehex
		call crlf
		mov eax,0
		movzx eax,count
		call writehex
		call crlf
	
	
	exit 
	main endp
	
	tes proc
		
		
	tes endp
End main