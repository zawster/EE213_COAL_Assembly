;      Protected Mod 

Include Irvine32.inc
.data
	str byte "I'll print this using Intrupt"
    char byte ?
.code
	main proc
		

        
        
	
		mov ah, 09h		; print an array on console
		mov dx, OFFSET str	; Message to be print
		int 21h			; Intrupt

		xor eax,eax

		mov ah, 0Ah		; Take a string form console input 
		int 21h			; Intrupt
    
      ; mov ah, 01h     ; Take single character input
      ; int 21h
	  ;	mov char, al    ; store character input in char
		

		mov ax,4ch	; terminate process
		int 21h		; Intrupt
	main endp

End main
