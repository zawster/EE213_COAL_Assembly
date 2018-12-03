include Irvine32.inc

.data 

	arr dword  13, 23, 7,15,17,19

	temp Dword 0

	chk dword 2
	
count1 dword 2	
.code
	main proc
	
	mov ecx , lengthof arr
	mov esi , 0
	
	L1:
		mov eax , arr[esi]
		call writeint
		add esi, 4
		
		mov temp ,ecx
		
		mov ecx , eax
		dec ecx
		dec ecx
		L2:
			mov eax ,arr [esi]
			mov edx , 0
			cdq
			div chk
			inc chk
			cmp edx , 0
			jne ok
			inc count1 
			jmp next			
			
			ok:
				loop L2
			next:
		mov ecx , temp
		loop L1
	
	
	mov eax , count1
	call writeint
	 
 	exit
 	main endp
 	end main
 	