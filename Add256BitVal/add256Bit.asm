
Include Irvine32.inc

.data


val1 QWORD 0A123540674981234h,0B457AFD8BC939321h,06453DC973294BFE2h,0D98709374FDECAA0h
val2 QWORD 0B000230102234502h,0FBC974FDDC97B2A4h,0E6749332BFE253DCh,02974BC9397320002h

sum DWORD 9 dup(0)




.code
main PROC

	mov  esi, OFFSET val1
	mov  edi, OFFSET val2
	mov  ebx, OFFSET sum
	mov  ecx, 8
	
	call Add_Ext


	mov esi, OFFSET sum	
	add esi, 32	
	mov ecx, LENGTHOF sum	

ok:	mov eax, [esi]	
	call WriteHex	
	sub esi, 4
	loop ok

	call crlf
	call crlf
	exit

main ENDP


	Add_Ext PROC
	
		pushad
		clc	
	
	L1:	mov eax,[esi]	
		adc eax,[edi]	
		pushfd	
		mov [ebx],eax	
		add esi,4	
		add edi,4
		add ebx,4
		popfd	
		loop L1	
	
		adc word ptr [ebx],0	
		popad
		ret
	Add_Ext ENDP

END main