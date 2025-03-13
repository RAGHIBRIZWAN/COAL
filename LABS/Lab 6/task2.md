![image](https://github.com/user-attachments/assets/3cf021d0-4320-4fc4-9cd9-499cb9046211)# TASK 2 (i)
```asm
include irvine32.inc
.code
main proc
	mov eax,0
	mov ecx,4
L1:
	imul eax,10
	add eax,1
	call WriteInt
	call crlf
	loop L1
exit
main endp
end main
```

# Output1:
![image](https://github.com/user-attachments/assets/eae208a9-8691-4a2d-8c4d-8f6fb93f0fc7)
