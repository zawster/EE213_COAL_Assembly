Include Irvine32.inc

.data
	
	array1 Byte 1,2,3,4
	array2 byte 1,2,3,4
	array3 byte 4 Dup(0)
	col Dword 2
	row Dword 2
	i Dword 0
	j Dword 0
	k Dword 0
	jump_Dword Dword 4
	temp dword ?
	temp2 dword ?
	
	var1 Dword ?
	var2 dword ?
	m dword ?
.code
	main proc
	mov ecx , row
	

	L1:
		mov temp , ecx
		mov ecx , col
		mov eax,0
		mov j , eax
		L2:
			mov temp2 , ecx
			mov ecx , col
			
			L3:
				mov eax , i
				mul col
				add eax , k
				;mul jump_dword
				mov esi , eax
				mov al, [array2+esi]
				mov var1 ,eax 
				
				mov eax , k
				mul col
				add eax , i
				;mul jump_dword
				mov esi , eax
				mov al, [array2+esi]
				mov var2 ,eax 
				
				mov eax , var1
				mul var2
				mov m , eax
				
				mov eax , i
				mul col
				add eax , j
				mul jump_dword
				mov esi , eax
				mov eax , m
				mov [array3+esi], al
				;call writeint
				loop L3
				mov ecx, temp2
			inc j             ;j++
			loop L2
			;call crlf
			mov ecx , temp
			inc i            ;i++
		loop L1
		
	
	
	main endp
	end main
	exit