; Real address mod program

.model small
.stack 64h
.data
	ch byte ?
.code
	main proc
		mov ax,@data
		mov ds,ax
		
		xor eax,eax
		
		mov ah, 02h		; print on console
		mov dl, ch		; value to be print
		int 21h			; Intrupt

		mov ah, 01h		; take input from console and store in al
		int 21h			; Intrupt
		mov ch, al		; storing value of al in str
		
		mov ah,4ch		; Terminate process
		int 21h			; Intrupt
	main endp

end main
