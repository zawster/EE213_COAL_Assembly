include irvine32.inc
.data
	so dword 20 dup(012h)
	dest dword 20 dup(?)
.code
	main proc
	mov ecx,lengthof so
	mov esi,offset so
	mov edi,offset dest
	rep movsd
	mov ecx,LENGTHOF dest
	mov esi,0
	L1:
		xor eax,eax
		
		mov eax,dest[esi]
		inc esi
		call writehex
		call crlf
		loop L1
	call crlf
	exit
	main endp
	End main