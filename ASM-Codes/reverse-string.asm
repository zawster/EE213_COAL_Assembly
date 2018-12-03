title "dfd"
include irvine32.inc

.data 
	str1 Byte "step on no pets",0
.code
	main proc

	mov eax , 0
	mov ecx , sizeof str1 
	mov esi , ecx
	dec esi
	start:
		mov al , str1[esi]
		dec esi
		call writechar
	loop start
	
	
	main endp
	end main 
	exit