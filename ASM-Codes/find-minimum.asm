Include Irvine32.inc

.data 

	array dword 2,4,0,9,8,0,11,8
	temp Dword ?
	jump_size dword 4
	var Dword ?
.code
	main proc
	mov ecx , 8
	mov ebx , 0
	mov eax , [array]
	mov var , eax
	
	lower:
		mov var , eax
			
	L1:	

		mov eax , ebx
		mul jump_size
		mov esi, eax
		mov eax ,[array+esi]
		cmp eax, var
		JB lower

		;call writeint
		inc ebx
		loop L1
		mov eax , var
		call writeint
	exit 
	main endp
	end main