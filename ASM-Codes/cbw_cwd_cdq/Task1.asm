Include irvine32.inc

.data
	var1 sdword ?
	var2 sdword ?
	var3 sdword ?
.code
	main proc
	xor eax,eax
	call readhex
	mov var1,eax
	
	xor eax,eax
	call readhex
	mov var2,eax
	
	xor eax,eax
	call readhex
	
	
	imul var2
	imul var1
	
	mov var3,eax
	mov eax,edx
	call writehex

	mov eax,var3
	call writehex
	
	call crlf
	
	exit
	main endp
	END main