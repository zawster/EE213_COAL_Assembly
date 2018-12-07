Include Irvine32.inc 
.data
	x dword 17h
	y dword 20h
	n dword ?
.code
	GCD proto
	main proc
		xor eax,eax
		mov eax,x
		mov ebx,y
		
		test eax,eax
		jns Abs1
		neg eax		;abs (x)
		Abs1:
		test ebx,ebx
		jns AbsResult
		neg ebx		;abs (y)
		AbsResult:
			
			call GCD
			call writehex
			
			call crlf
	exit
	main endp
	GCD proc
		L1: xor edx,edx
			push eax
			
			div ebx
			mov n,edx	; n = eax % ebx
			pop eax
			mov eax,ebx     ; x=y
			mov ebx,n	; y=n
			
		cmp ebx,0
		ja L1
		ret
	GCD endp
	end main