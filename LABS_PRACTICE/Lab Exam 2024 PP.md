# Q1:

```asm
INCLUDE Irvine32.inc

.data
    caloriesBurned WORD ?
    stepsWeek1 BYTE ?
    stepsWeek2 BYTE ?
    totalSteps DWORD ?
    result BYTE ?

.code
main PROC
    movsx eax, stepsWeek1
    movsx ebx, stepsWeek2
    movzx edx, caloriesBurned

    add eax, ebx
    mov totalSteps, eax

    sub ebx, 5

    mov stepsWeek1, ebx
    mov stepsWeek2, eax

    sub edx, ebx
    jns NO_DEFICIT

    neg edx
    mov result, 1
    jmp OUTPUT

NO_DEFICIT:
    mov result, 0

OUTPUT:
    call DumpRegs
    exit

main ENDP
END main
```

# Q2:

```asm
INCLUDE Irvine32.inc

.data
    qSold DWORD ?
    tCost DWORD ?
    q1 BYTE "Enter the quantity sold: ",0
    cost DWORD 5
    threshold DWORD 50
    discount DWORD 5
    final DWORD ?
.code
main PROC
    mov edx,OFFSET q1
    call WriteString
    call ReadInt
    mov qSold,eax

    mov ebx,cost
    mul ebx
    mov tCost,eax

    cmp eax,threshold
    JB next
    sub eax,discount
    mov final,eax

next:
    mov final,eax

print:
    mov eax,qSold
    call WriteInt
    call crlf
    mov eax,final
    call WriteInt
    call crlf
    mov eax,discount
    call WriteInt
exit
main ENDP
END main
```
