BubbleSort PROC USES eax ecx esi,
	pArray:PTR DWORD,   	; pointer to array
	Count:DWORD			; array size
	mov ecx,Count
	dec ecx		; decrement count by 1
	L1:
	push ecx	; save outer loop count
	mov esi,pArray	; point to first value
	L2:
	mov eax,[esi]	; get array value
	cmp [esi+4],eax		; compare a pair of values
	jge L3	; if [esi] >= [edi], don't exch
	xchg eax,[esi+4]	; exchange the pair
	mov [esi],eax
	L3:
	add esi,4		; move both pointers forward
	loop L2			; inner loop
	pop ecx			; retrieve outer loop count
	loop L1			; else repeat outer loop
	L4:
	ret
BubbleSort ENDP

BinarySearch PROC uses ebx edx esi edi,
			pArray:PTR DWORD,		; pointer to array
			Count:DWORD,		; array size
		searchVal:DWORD		; search value
		LOCAL first:DWORD,		; first position
			last:DWORD,			; last position
			mid:DWORD			; midpoint
		mov  first,0		; first = 0
mov  eax,count 			; last = (count -1)
dec  eax
mov  last,eax
mov  edi,searchval 		; EDI = searchVal
mov  ebx,pArray			; EBX points to the array
L1: 		; while first <= last
mov  eax,first
cmp  eax,last
jg   L5			; exit searchva
	; mid = (last + first) / 2
	mov  eax,last
	add  eax,first
	shr  eax,1		;divide by 2
	mov  mid,eax	; EDX = values[mid]
	mov  esi,mid
	shl  esi,2 		; scale mid value by 4
	mov  edx,[ebx+esi]		; EDX = values[mid]		
	; if ( EDX < searchval(EDI) );   first= mid + 1;
	cmp  edx,edi
	jge  L2
	mov  eax,mid 		; first = mid + 1
	inc  eax
	mov  first,eax
	jmp  L4		; else if( EDX > searchVal(EDI) )

	;last = mid -1;
L2:
	cmp  edx,edi 	; (could be removed)
	jle  L3
	mov  eax,mid 	; last = mid -	1
	dec  eax
	mov  last,eax
	jmp  L4		; else return mid
	L3:
	mov  eax,mid   		; value found
	jmp  L9 	; return (mid)
	L4:
	jmp  L1		; continue the loop
	L5:
	mov  eax,-1		; search failed
	L9:
	ret
BinarySearch ENDP