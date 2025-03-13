# TASK 2 (i)
```asm
INCLUDE Irvine32.inc

.code
main PROC
    mov eax, 1         
    mov ecx, 4  
    mov ebx, 1
L1:
    push ecx
    mov ecx, ebx
L2:
    call WriteInt
    loop L2
    call crlf
    inc ebx
    pop ecx
    loop L1
    exit
main ENDP
END main
```

# Output1:
![image](https://github.com/user-attachments/assets/f2da56ef-ca22-4d89-9c52-ba939ce09934)

# TASK 2 (ii)
```asm
INCLUDE Irvine32.inc

.code
main PROC
    mov eax, 1         
    mov ecx, 4  
    mov ebx, 4
L1:
    push ecx
    mov ecx, ebx
L2:
    call WriteInt
    loop L2
    call crlf
    dec ebx
    pop ecx
    loop L1
    exit
main ENDP
END main
```

# OUTPUT:
![image](https://github.com/user-attachments/assets/b7e10f3c-70eb-47b4-b2d8-9351a4b01b88)
