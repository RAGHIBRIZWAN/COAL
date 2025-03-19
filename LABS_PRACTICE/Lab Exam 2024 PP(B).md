# PAPER:
![image](https://github.com/user-attachments/assets/3874d2a8-e501-4b39-ad3c-4f8903877b3d)

![image](https://github.com/user-attachments/assets/d1ce5264-83e4-4b67-9027-a65ca6eb0fa6)

![image](https://github.com/user-attachments/assets/efa4ab9a-5fd6-4b4d-a6da-477c6ada375b)

# Q3:

```asm
INCLUDE Irvine32.inc

.data
    week1 DWORD 3 DUP(?)
    week2 DWORD 3 DUP(?)
    week3 DWORD 3 DUP(?)
    week4 DWORD 3 DUP(?)
    qs BYTE "Enter the cost: "
    total DWORD 3 DUP(0)

.code
main PROC
    mov esi, 0

    ; Process snack 1
    mov edx,OFFSET qs
    call writeString
    call ReadInt
    mov week1[esi],eax
    add esi,4
    mov edx,OFFSET qs
    call writeString
    call ReadInt 
    mov week1[esi],eax
    add esi,4
    mov edx,OFFSET qs
    call writeString
    call ReadInt
    mov week1[esi],eax

    mov esi,0

    ; Process snack 2
    mov edx,OFFSET qs
    call writeString
    call ReadInt
    mov week2[esi],eax
    add esi,4
    mov edx,OFFSET qs
    call writeString
    call ReadInt 
    mov week2[esi],eax
    add esi,4
    mov edx,OFFSET qs
    call writeString
    call ReadInt
    mov week2[esi],eax   

    mov esi,0

    ; Process snack 3
    mov edx,OFFSET qs
    call writeString
    call ReadInt
    mov week3[esi],eax
    add esi,4
    mov edx,OFFSET qs
    call writeString
    call ReadInt 
    mov week3[esi],eax
    add esi,4
    mov edx,OFFSET qs
    call writeString
    call ReadInt
    mov week3[esi],eax

    mov esi,0

    ; Process snack 4
    mov edx,OFFSET qs
    call writeString
    call ReadInt
    mov week4[esi],eax
    add esi,4
    mov edx,OFFSET qs
    call writeString
    call ReadInt 
    mov week4[esi],eax
    add esi,4
    mov edx,OFFSET qs
    call writeString
    call ReadInt
    mov week4[esi],eax    

    mov esi,0

    mov eax,week1[esi]
    mov total[esi],eax
    mov eax,week2[esi]
    add total[esi],eax
    mov eax,week3[esi]
    add total[esi],eax
    add esi,4
    mov eax,week1[esi]
    mov total[esi],eax
    mov eax,week2[esi]
    add total[esi],eax
    mov eax,week3[esi]
    add total[esi],eax
    add esi,4
    mov eax,week1[esi]
    mov total[esi],eax
    mov eax,week2[esi]
    add total[esi],eax
    mov eax,week3[esi]
    add total[esi],eax

    mov esi,0

    ; Display total sales
    mov eax,total[esi]
    call WriteInt
    call crlf
    add esi,4
    mov eax,total[esi]
    call WriteInt
    call crlf
    add esi,4
    mov eax,total[esi]
    call WriteInt
    
    exit
main ENDP
END main
```

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
