Include Irvine32.inc

.data

	array Dword 1,2,3,4,5,6,7,8,9
	col Dword 3
	row Dword 3
	i Dword 0
	j dword 0
	jump_size Dword 4
	sum Dword ?
	
.code 
	main proc
	mov ecx , row
	L1:
		mov eax , i
		mul col
		add eax , i
		mul jump_size
		
		mov esi , eax
		mov eax , [array+esi]
		add sum ,eax
		
		inc i
		loop L1
		;mov eax ,sum
		;call writeint
		
	
	mov ecx , row	
	mov eax , 0
	mov i , eax
	mov ebx , 2
	mov j ,ebx
	L2:
		
		mov eax , i
		mul col
		add eax , j
		mul jump_size
		
		mov esi , eax
		mov eax , [array+esi]
		add sum ,eax
		
		inc i
		dec j
		loop L2
		mov eax ,sum
		call writeint
		
		main endp
		end main 
		exit
		