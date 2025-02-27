## TASK 2

```asm
INCLUDE Irvine32.inc

.code
main PROC
	mov al,'R'
	add al,'A'
	add al,'G'
	call DumpRegs
exit
main ENDP
END main
```
