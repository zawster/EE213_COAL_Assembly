Include irvine32.inc
.data
	temp dword ?
	msg byte "It is not prime",0h
	msg1 byte "Yes it is prime",0h
	termin byte "You enter a negative value",0h
	strt byte "Enter new value:- ",0h
.code
	main proc
	L1:
	mov edx,offset strt
	call writestring
	call readint
	test eax,eax
	js Abs1
	mov ebx, 2
	mov temp,eax
	
	L2:
		mov edx , 0
	
		push eax
		div ebx
		pop eax
		inc ebx
		cmp edx , 0
		jne ok
		jmp nPrime			
			
		ok:
			cmp ebx,temp
			jb L2
			xor edx,edx
			mov edx,offset msg1
			jmp Next
		
		nPrime:
			mov edx , offset msg
		Next:
			call writestring
			call crlf
			jmp L1
		Abs1: 
			mov edx,offset termin
			call writestring
			call crlf
 	exit
 	main endp
 	end main