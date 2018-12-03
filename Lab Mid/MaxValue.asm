Include Irvine32.inc

.data 
	a1 Byte 7
	a2 Byte 6
	a3 Byte 8
	a4 Byte 5
	a5 Byte 1
	res Byte ?
	msg Byte " is maximum value",0h
.code	
	Maximum proto
	main proc
	mov edx,offset msg
	mov al,a1
	mov ah,a2
	mov bl,a3
	mov bh,a4
	call Maximum
	exit
	main endp
	Maximum proc
	cmp ah,al
	jb L1
	L1: xchg ah,al
	cmp bh,bl
	jb L2
	L2: xchg bh,bl
	
	cmp ah,bh
		jb L3
		cmp ah,a5
		jb Final
		mov res,ah
		jmp Next
	L3: cmp bh,a5
	jb Final
	mov res,bh
	jmp Next
		
	Final: mov cl,a5
		mov res,cl
		jmp Next
	Next: xor eax,eax
		mov ah,res
		call writedec
		call writestring
		call crlf
	ret 
	Maximum endp
End main