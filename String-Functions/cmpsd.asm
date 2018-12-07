include irvine32.inc
.data
source DWORD 1234h
target DWORD 5678h
msg_g byte "Source>Target",0
msg_l byte "Source<=Target",0
.code
main PROC
mov esi ,OFFSET source
mov edi,OFFSET target
cmpsd
;compare doublewords
ja L1
;jump if source > target
jmp L2
;jump, since source <= target
L1: 
mov edx, OFFSET msg_g

call writestring
call crlf
jmp quit
L2: 
mov edx, OFFSET msg_l
call writestring
call crlf
quit:
exit
main ENDP
END main