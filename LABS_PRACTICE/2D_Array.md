```asm
INCLUDE Irvine32.inc
.data
    array DWORD 1,2,3,4,5,6,7,8,9
    row_index DWORD 1
    col_index DWORD 2
    sizeOfRow DWORD 3
.code
main PROC
    mov ebx, OFFSET array
    mov eax, row_index
    mul sizeOfRow           ; EAX = row_index * sizeOfRow
    add eax, col_index      ; EAX = (row_index * sizeOfRow) + col_index
    mov edx, TYPE array     ; EBX = size of each element (4 bytes for DWORD)
    mul edx   ; EAX = ((row_index * sizeOfRow) + col_index) * TYPE
    
    ; Option 1: Use calculated offset directly with base register
    mov eax, [ebx + eax]    ; Get value at calculated offset
    
    call WriteInt          
    
    exit
main ENDP
END main
```
