Include Irvine32.inc

.data
mes byte "Hello World"

key byte -2,4,1,0,-3,5,2,-4,-4,6

.code

rotate_left proc
	mov eax ,0
	mov ecx , lengthof mes
	mov esi , 0
L1:
	mov al , byte ptr mes[esi]
	add esi , 1
	ROL al , 1
	call writechar
	loop L1
	ret 
rotate_left endp


rotate_right proc
	mov eax ,0
	mov ecx , lengthof mes
	mov esi , 0
L1:
	mov al , byte ptr mes[esi]
	add esi , 1
	ROR al , 1
	call writechar
	loop L1
	ret 
rotate_right endp

main proc

mov ecx , lengthof key

L2:	
	push ecx
	mov esi ,0
	mov ecx ,2
	cmp ecx , 0
	JA L4
	L3:
		call rotate_left
		loop L3
		JMP next
	L4:
		call rotate_right
		loop L3
	next:
	pop ecx
	loop L2

main ENDP



END main 