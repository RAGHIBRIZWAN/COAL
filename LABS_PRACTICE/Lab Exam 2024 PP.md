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
