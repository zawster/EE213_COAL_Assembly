INCLUDE Irvine32.inc
.data
alpha BYTE "ABCDEFGH " , 0
msg byte "Letter Found", 0
.code
main PROC
	mov edi ,OFFSET alpha
	mov al, 'z'
	mov ecx , LENGTHOF alpha
	cld
	repne scasb
	jnz quit
	mov edx, OFFSET msg
	call writestring
	call crlf  
	quit:
		exit
main ENDP
End main