## TASK 5

```asm
INCLUDE irvine32.inc

.data
	a DWORD 11h
	b DWORD 10h
	x DWORD 30h
	d DWORD 40h
.code 
main PROC
	mov eax,a
	add eax,b
	mov ecx,a
	sub ecx,b
	mov ebx, eax
	sub ebx,ecx
	add ebx,x
	add ebx,d
	call DumpRegs
	exit
main ENDP
END main
```

## OUTPUT
