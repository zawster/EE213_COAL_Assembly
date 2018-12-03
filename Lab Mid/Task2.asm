Include irvine32.inc
.data
	x1 Byte ?
	y1 Byte ?
	x2 Byte ?
	y2 Byte ?
	msg Byte "Enter value"
.code	
	Euclidean proto
	main proc
	xor eax,eax
	mov edx,offset msg
	call writestring
	call readint
	mov x1,al
	
	call writestring
	call readint
	mov y1,al
	
	call writestring
	call readint
	mov x2,al
	call Euclidean
	exit 
	main endp
	
	
	Euclidean proc
	
	Euclidean endp
	
	
	END main