include Irvine32.inc

.data 
	var1 REAL4 3.3
	var2 REAL4 4.1

	temp DWORD 1000
	big DWORD 0
	
	dot BYTE ".",0
	temp1 DWORD ?

.code
	main proc
	xor edx,edx
	fld var1	; st0 7.5
	fmul var2	; st0  st0+var2
	
	fimul temp	; st0=st0*1000
	fist big
	
	mov eax,big
	div temp	; EAX = big/temp
	call Writedec
	mov edx,OFFSET dot
	call WriteString	; It will print dot
	xor eax,eax
	mul temp	; EAX = 1*temp
	mov temp1,eax
	mov eax,big
	sub eax,temp
	sub eax,9000
	call Writedec
	call crlf
	
	
	
	
	exit
	main endp
	
	End main