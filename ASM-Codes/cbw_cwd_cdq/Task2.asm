Include Irvine32.inc

.data
	var1 sword ?
	var2 sword ?
	f sdword ?
.code 
	main proc
	xor eax,eax
	xor edx,edx
	call readhex
	mov var1,ax
	
	xor eax,eax
	call readhex
	mov var2,ax
	xor eax,eax
	
	movzx eax,var1
	cdq
	movzx ebx,var2
	idiv ebx
	
	push eax
	mov eax,edx
	call writehex
	pop eax
	call writehex
	call crlf
	
	exit 
	main endp
	End main