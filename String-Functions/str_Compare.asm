INCLUDE Irvine32.inc
.data
	string_1 BYTE "ABCDEFG",0
	string_2 BYTE "ABCDEFG",0
	string_3 BYTE 0
	string_4 BYTE 0
.code
main PROC
	call Clrscr
	INVOKE Str_compare,
	ADDR string_4,
	ADDR string_3
	Call DumpRegs
exit
main ENDP
END main