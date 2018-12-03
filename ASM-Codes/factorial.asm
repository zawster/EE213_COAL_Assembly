include Irvine32.inc

.data 

	var Dword ?
	
.code
	main proc
	mov eax , 0
 	call readint
 	
 	mov ecx, eax
 	dec ecx
 	start:
 		mul ecx
 		
 	loop start
 	
 	mov var,eax
 	call writeint
 	
 	main endp
 	end main
 	
 	exit