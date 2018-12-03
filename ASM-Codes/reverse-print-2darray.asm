;Reverse the 2dArray
Include Irvine32.inc

.data

	array Dword 1,2,3,4,5,6,7,8,9,10,11,12
	col Dword 3
	row Dword 4
	i Dword 3
	j Dword 2
	jump_Dword Dword 4
	temp dword ?
	
.code

	main proc
	mov ecx , row
	
	L1:
		mov temp , ecx
		mov ecx , col
		mov eax,2
		
		mov j , eax
		L2:
			mov eax , i   ;2darray index calcutae (i*no_col)+j
			mul col
			add eax, j
			mul jump_dword
			mov esi , eax          ;esi = [i][j]    with dword Jump
			
			mov eax , [array+esi]
			call writeint
			
			dec j             ;j++
			loop L2
			call crlf
			mov ecx , temp
			dec i            ;i++
		loop L1
		
	
	
	main endp
	end main
	exit