```asm
INCLUDE Irvine32.inc

.data
    source BYTE 6 DUP(?) 
    target BYTE "Raghib", 0

.code
main PROC         
    mov ecx, LENGTHOF target
    mov esi, 0
L1:
    mov al, target[esi]
    mov source[esi], al
    inc esi
    loop L1

    mov ecx, LENGTHOF source
    mov esi, 0
output:
    mov al, source[esi]
    call WriteChar
    inc esi
    loop output

    exit
main ENDP
END main
```

# OUTPUT:
![image](https://github.com/user-attachments/assets/2d8b9e08-0d38-41a1-9ffc-84a3bd80c1b0)
