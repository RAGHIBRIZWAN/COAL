# PAPER:
![image](https://github.com/user-attachments/assets/3874d2a8-e501-4b39-ad3c-4f8903877b3d)

![image](https://github.com/user-attachments/assets/d1ce5264-83e4-4b67-9027-a65ca6eb0fa6)

![image](https://github.com/user-attachments/assets/efa4ab9a-5fd6-4b4d-a6da-477c6ada375b)

# Q4:

```asm
INCLUDE Irvine32.inc

.data
    newline BYTE 0Dh, 0Ah, 0  
    six SDWORD 6          
    eight SDWORD 8          

.code
main PROC

 mov ecx,1
L3:
    mov ebx,1
L4:
    mov eax,eight
    call WriteInt
    inc ebx
    cmp ebx,3
    JLE L4
    call crlf
    inc ecx
    cmp ecx,4
    JLE L3

    mov ecx,7
L1:
    mov ebx,1
L2:
    mov eax,six
    call WriteInt
    inc ebx
    cmp ebx,ecx
    JLE L2
    call crlf
    sub ecx,2
    cmp ecx,1
    JGE L1  
    exit
main ENDP
END main
```
