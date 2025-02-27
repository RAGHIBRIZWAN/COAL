## TASK 8 (i)

```asm
INCLUDE Irvine32.inc

.data
	val1 BYTE 10h
	val2 WORD 8000h
	val3 DWORD 0FFFFh
	val4 WORD 7FFFh
.code
main PROC
	mov al, val1
	inc al
	mov val1, al
	call DumpRegs
exit
main ENDP
END main
```

## OUTPUT 1:
![image](https://github.com/user-attachments/assets/4d4b5d5e-8e45-4993-b459-34f4dc9a007d)

## (ii)

```asm

```
