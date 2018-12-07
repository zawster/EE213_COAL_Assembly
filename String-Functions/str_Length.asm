; Testing the Str_length procedure.

INCLUDE Irvine32.inc
.data
	string_1 BYTE "Hello",0
	string_2 BYTE "#",0
	string_3 BYTE 0
.code
main PROC
	call Clrscr
	INVOKE Str_length,ADDR string_1
	call DumpRegs
	INVOKE Str_length,ADDR string_2
	call DumpRegs
	INVOKE Str_length,ADDR string_3
	call DumpRegs
exit
main ENDP
END main