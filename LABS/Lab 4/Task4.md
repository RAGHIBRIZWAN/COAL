## TASK 4

```asm
INCLUDE Irvine32.inc

.data
	Val1 DWORD 25h
	Val2 BYTE 36o
	Val3 WORD 20d

.code
main PROC
	mov eax, 89
	add eax, 75Fh
	sub eax, 46o
	sub eax, 28
	add eax, 1101b
	call DumpRegs
exit
main ENDP
END main
```

## OUTPUT:
![image](https://github.com/user-attachments/assets/5e63fb5d-0324-439a-97e9-d29461f07430)
