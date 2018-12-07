Include Irvine32.inc

.data
	var1 dword 16
	var2 dword 3

.code
	Fast_Mul proto
	main PROC
		mov eax, var1
		mov ebx, var2
		
		call Fast_Mul
	
		call writeint
		call crlf
	main ENDP
Fast_Mul proc

	mov ecx,32	; 32 bit value
	mov edx,0 	; store final value
	L1:
	SHR ebx,1
    	JNC next
    	add edx, eax	
	next:
		SHL eax,1
    		loop L1   
	mov eax, edx
	ret
Fast_Mul endp



END main 