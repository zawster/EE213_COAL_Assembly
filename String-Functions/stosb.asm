INCLUDE Irvine32.inc
.data
	Count = 100
	string1 BYTE Count DUP(?)
.code
main PROC

	mov al,0FFh
	mov edi,OFFSET string1
	mov ecx,Count
	cld
	rep stosb
exit
main endp
End main