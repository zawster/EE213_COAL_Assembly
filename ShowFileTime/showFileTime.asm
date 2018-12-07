Include Irvine32.inc

.data
array DWORD 5,20

sec dword  0
mint dword  0
hour dword  0
str1 byte ":",0

.code
	file_time proto	
	main proc
	
	call file_time
	call crlf
	call crlf
	exit
	main ENDP
file_time proc
	mov eax , 0
	mov ebx, 0
	mov cl , 5
	clc
	mov ax , 0001001000000111b
	
	call crlf
	ROL ax, 1
	RCL bx, 1
	
	ROL ax,1
	RCL bx,1
	
	ROL ax,1
	RCL bx,1
	
	ROL ax,1
	RCL bx,1
	
	ROL ax,1
	RCL bx,1
	
	mov sec , ebx

	
	clc
	
	mov ebx , 0
	
	ROL ax,1
	RCL bx,1
	
	ROL ax,1
	RCL bx,1
	
	ROL ax,1
	RCL bx,1
	
	ROL ax,1
	RCL bx,1
	
	ROL ax,1
	RCL bx,1
	
	ROL ax,1
	RCL bx,1
	
	;call writebin
	call crlf
	;mov eax , ebx
	mov mint , ebx
	mov ebx , 0
	
	
	ROL ax,1
	RCL bx,1
	
	ROL ax,1
	RCL bx,1
	
	ROL ax,1
	RCL bx,1
	
	ROL ax,1
	RCL bx,1
	
	ROL ax,1
	RCL bx,1
	
	ROL ax,1
	RCL bx,1
	
	mov hour, ebx
	;call writebin
	mov eax , ebx
	
	mov edx , offset str1
	
	mov eax ,sec
	call writeint
	call writestring
	mov eax , mint
	call writeint
	call writestring
	mov eax, hour
	call writeint 
	call writestring
	
	ret
	file_time endp
END main 