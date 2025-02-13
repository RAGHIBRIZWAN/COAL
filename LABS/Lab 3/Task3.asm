INCLUDE irvine32.inc

.data
	list WORD 1h,2h,3h
.code
main PROC
	mov ax, [list]
	mov bx, [list+2]
	mov cx, [list+4]
	call DumpRegs
exit
main ENDP
END main
