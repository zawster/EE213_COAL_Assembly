Include Irvine32.inc

.data
	
	array Dword 1,2,3,4,5,6,7,8,9,10,11,12
	t_array Dword 12 Dup(0)
	col Dword 4
	row Dword 3
	i Dword 0
	j Dword 0
	jump_Dword Dword 4
	temp dword ?
	var dword ?
.code
	main proc
	mov ecx , row
	

	L1:
		mov temp , ecx
		mov ecx , col
		mov eax,0
		mov j , eax
		L2:
			mov eax , i   ;2darray index calcutae (i*no_col)+j
			mul col
			add eax, j
			mul jump_dword
			mov esi , eax          ;esi = [i][j]    with dword Jump	
			mov eax , [array+esi]
			mov var , eax
			;call writeint
			
			mov eax , j   ;2darray index calcutae (i*no_col)+j
			mul row
			add eax, i
			mul jump_dword
			mov esi , eax          ;esi = [i][j]    with dword Jump	
			
			mov eax , var
			mov [t_array+esi],eax
			

			call writeint
			
			inc j             ;j++
			loop L2
			call crlf
			mov ecx , temp
			inc i            ;i++
		loop L1
		
	
	mov eax , row        ;swap row into colom for transpose
	xchg col , eax
	mov row , eax
	mov row, eax
	
	mov eax,0
	mov i , eax
	mov j , eax
	mov ecx , row
	
	L3:
		mov temp , ecx
		mov ecx , col
		mov eax,0
		mov j , eax
		L4:
			mov eax , i   ;2darray index calcutae (i*no_col)+j
			mul col
			add eax, j
			mul jump_dword
			mov esi , eax          ;esi = [i][j]    with dword Jump
			
			mov eax , [t_array+esi]
			call writeint
			
			inc j             ;j++
			loop L4
			call crlf
			mov ecx , temp
			inc i            ;i++
		loop L3
	
	
	main endp
	end main
	exit