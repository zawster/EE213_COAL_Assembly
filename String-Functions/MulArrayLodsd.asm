INCLUDE Irvine32.inc
.data
	array DWORD 1,2,3,4,5,6,7,8,9,10
	multiplier DWORD 10
.code
main PROC
	cld
	;direction = forward
	mov esi,OFFSET array
	;source index
	mov edi,esi
	;destination index
	mov ecx,LENGTHOF array
	;loop counters
	L1 : lodsd
	;load [ESI] into EAX
	mul multiplier
	;multiply by a value
	stosd
	;store EAX into [EDI]
	loop L1
	
	mov ecx,lengthof array
	mov esi,0
	L2:
		mov eax,0
		mov eax,array[esi]
		add esi,4
		call writedec
		call crlf
		loop L2
exit
main ENDP
END main