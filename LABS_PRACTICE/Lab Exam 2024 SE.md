# PAPER


# Q1

```asm
INCLUDE Irvine32.inc

.data
    SB1 SBYTE ?
    SB2 SBYTE ?
    USB WORD ?
    qs1 BYTE "Enter the signed bit: ",0
    qs2 BYTE "Enter the unsigned bit: ",0
    resultMsg BYTE "Final computed result: ", 0

.code
main PROC
    mov edx,OFFSET qs1
    call WriteString
    call ReadInt
    mov SB1,al
    call WriteString
    call ReadInt
    mov SB2,al
    mov edx,OFFSET qs2
    call WriteString
    call ReadInt
    mov USB,ax

    movsx eax,SB1
    movsx ebx,SB2
    movzx edx,USB

    xchg eax, ebx

    inc eax
    dec ebx

    add eax,ebx
    mov ecx,eax
    sub eax,ebx
    mov ecx,eax

    imul eax,edx

    neg eax

    mov edx, OFFSET resultMsg
    call WriteString
    call WriteInt

    exit
main ENDP
END main
```

# Q3(a):

```asm
INCLUDE Irvine32.inc

.data
    x DWORD 5
    y DWORD 5
    Xs DWORD 0
    Ys DWORD 0
    print BYTE "Wrong Input!", 0

.code
main PROC
    mov eax, x
    cmp eax, 0
    JBE next

    mov eax, y
    cmp eax, x
    JBE elses

    mov eax, x
    imul eax, y
    mov Xs, eax

    mov eax, y
    sub eax, 2
    mov Ys, eax

    jmp Printing  

elses:
    mov eax, x
    mul x
    mov Xs, eax

    mov eax, y
    dec eax
    mov Ys, eax

    jmp Printing 

next:
    mov edx, OFFSET print
    call WriteString
    call crlf
    jmp exitProgram 

Printing:
    mov eax, Xs
    call WriteInt
    call crlf
    mov eax, Ys
    call WriteInt

exitProgram:
    exit

main ENDP
END main
```
