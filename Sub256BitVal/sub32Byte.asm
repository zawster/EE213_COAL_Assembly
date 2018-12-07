
Include Irvine32.inc

.data


val1 QWORD 0A123540674981234h,0B457AFD8BC939321h,06453DC973294BFE2h,0D98709374FDECAA0h
val2 QWORD 0B000230102234502h,0FBC974FDDC97B2A4h,0E6749332BFE253DCh,02974BC9397320002h

s DWORD 9 dup(0)




.code
main PROC

	mov  esi, OFFSET val1
	mov  edi, OFFSET val2
	mov  ebx, OFFSET s
	mov  ecx, 8
	
	call Sub_Ext


	mov esi, OFFSET s	
	add esi, 32	
	mov ecx, LENGTHOF s	

ok:	mov eax, [esi]	
	call WriteHex	
	sub esi, 4
	loop ok

	call crlf
	call crlf
	exit

main ENDP


	Sub_Ext PROC
	
		pushad
		clc	
	
	L1:	mov eax,[esi]	
		sbb eax,[edi]	
		pushfd	
		mov [ebx],eax	
		add esi,4	
		add edi,4
		add ebx,4
		popfd	
		loop L1	
	
		sbb word ptr [ebx],0	
		popad
		ret
	Sub_Ext ENDP

END main