```asm
INCLUDE Irvine32.inc   

.data
    array DWORD 8, 5, 1, 2, 6    
    arrSize DWORD 5                    

.code
main PROC
    mov ecx, arrSize                
    dec ecx                    

L1:
    mov esi, 0                 
    
L2:
    mov eax, [array + esi*4]   
    mov edx, [array + esi*4 + 4] 
    cmp eax, edx                
    jle noSwap                 
    
    mov [array + esi*4], edx    
    mov [array + esi*4 + 4], eax 
    
noSwap:
    inc esi
    cmp esi, ecx                
    jl L2

    dec ecx                     
    jnz L1

    mov esi, 0                   

print:
    mov eax, [array + esi*4]     
    call WriteInt                
    call Crlf                    
    inc esi                       
    cmp esi, arrSize                    
    jl print

    exit                          
main ENDP 
END main
```

# OUTPUT:
![image](https://github.com/user-attachments/assets/9e67bbe1-1410-4a42-83ba-0c5cf865fade)
