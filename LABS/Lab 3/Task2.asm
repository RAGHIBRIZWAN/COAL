## TASK 2

```asm
INCLUDE irvine32.inc

.data
	val3 SDWORD -2147483647
.code
main PROC
	mov eax, val3
	call DumpRegs
exit
main ENDP
END main
```

## OUTPUT
