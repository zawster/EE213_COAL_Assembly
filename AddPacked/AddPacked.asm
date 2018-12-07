Include irvine32.inc
.data
	num1 dword 45361234h
	num2 dword 72971321h
	sum dword ?
.code
	main proc
	mov esi,0	; for num1
	mov edi,0	; for num2
	mov ecx,4 	; how many byts (in this case 4 byte packed decimal)
	xor edx,edx	; for sum
	
	L1:
		mov al,byte ptr num1[esi]
		add al,byte ptr num2[edi]
		daa
		call dumpregs
		mov byte ptr sum[esi],al
		inc esi
		inc edi
		
		loop L1
		
		;inc esi  ; for extra carry
		mov al,0
		adc al,0
		mov byte ptr sum[esi],al
		mov eax,sum
		
		call writehex
		call crlf
	
	
	exit
	main endp
	End main