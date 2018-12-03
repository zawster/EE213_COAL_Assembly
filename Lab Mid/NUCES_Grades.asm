Include Irvine32.inc

.data
	msg Byte "Enter your marks"
	res Byte ?
	a1 Byte "A+",0h
	a2 Byte "A",0h
	a3 Byte "A-",0h
	b1 Byte "B+",0h
	b2 Byte "B",0h
	b3 Byte "B-",0h
	c1 Byte "C+",0h
	c2 Byte "C",0h
	c3 Byte "C-",0h
	d1 Byte "D+",0h
	d2 Byte "D",0h
	f Byte "F",0h
.code
	CGPA proto
	main proc
	xor edx,edx
	xor eax,eax
	mov edx,offset msg
	call readint
	
	call CGPA
	
	exit
	main endp
	
	CGPA proc
		cmp al,90
		jb L1
		mov edx,offset a1
		jmp Next
		
		L1:cmp al,86
			jb L2
			mov edx,offset a2
			jmp Next
		L2: cmp al,82
			jb L3
			mov edx,offset a3
			jmp Next
		L3: cmp al,78
			jb L4
			mov edx,offset b1
			jmp Next
		L4: cmp al,74
			jb L5
			mov edx,offset b2
			jmp Next
		L5: cmp al,70
			jb L6
			mov edx,offset b3
			jmp Next
		L6: cmp al,66
			jb L7
			mov edx,offset c1
			jmp Next
		L7: cmp al,62
			jb L8
			mov edx,offset c2
			jmp Next
		L8: cmp al,58
			jb L9
			mov edx,offset c3
			jmp Next	
		L9: cmp al,54
			jb L10
			mov edx,offset d1
			jmp Next
		L10: cmp al,50
			jb L11
			mov edx,offset d2
			jmp Next
		L11: cmp al,50
			mov edx,offset f
			jmp Next	
			
		Next:
			call writestring
			call crlf
		ret
	CGPA endp
	End main