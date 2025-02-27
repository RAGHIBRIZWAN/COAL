## TASK 5

```asm
INCLUDE Irvine32.inc

.data
	Val1 DWORD 25h
	Val2 BYTE 36o
	Val3 WORD 20d

.code
main PROC
	mov eax, Val1
	movzx ebx, Val2
	add eax, ebx
	sub eax, 654h
	movzx ebx, Val3
	add eax, ebx
	call DumpRegs
exit
main ENDP
END main
```

## OUTPUT:
![image](https://github.com/user-attachments/assets/5eb86559-77d3-434b-91d9-6581b89ef812)
