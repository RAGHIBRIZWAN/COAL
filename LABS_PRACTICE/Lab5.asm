; TYPE OPERATOR

.data 
	var1   BYTE   20h 
	var2 WORD 1000h 
	var3 DWORD ? 
	;var5 QWORD ?
	var5 SWORD ?
	var4 BYTE 10, 20, 30, 40, 50 
	msg BYTE "File not found", 0 
.code
main PROC
	mov eax, 0
	mov ax, type var1 
	mov ax, type var2 
	mov ax, type var3 
	mov ax, type var4 
	mov ax, type msg 
	mov ax, type var5
	call DumpRegs
main ENDP
END main

; PTR OPERATOR

.data 
	myDouble DWORD 12345678h 
.code
main PROC 
	mov eax, 0
	mov eax, myDouble
	mov eax, 0
	;mov ax, myDouble ; error
	mov ax, word ptr myDouble 
	mov ax, type myDouble
	mov ax, word ptr myDouble + 1 ; pointer was on 5 so +1 moves it to 3 (Jumps 1 previous element)
	mov ax, word ptr myDouble + 2 ; pointer was on 3 so +2 moves it to 1 (Jumps 1 previous element)
	mov ax, word ptr myDouble + 3 ; pointer was on 1 so +3 moves it to 0 (Jumps 1 previous element)
	mov ax, word ptr myDouble + 4 ; pointer was on 0 so +4 moves it to 0 (Jumps 1 previous element)
	mov ax, word ptr myDouble -1
	mov ax, word ptr myDouble - 2
	mov ax, word ptr myDouble - 3
	mov ax, word ptr myDouble - 4
	call DumpRegs
main ENDP
END main

; LENGTHOF OPERATOR

.data 
	val1 WORD 1000h 
	val2 SWORD 10, 20, 30 
	array WORD 10 DUP(?),0 
	array2 WORD 5 DUP(3 DUP(0)) 
	msg BYTE 'File not found', 0 
.code 
main PROC
	mov eax, 0
	mov ax, LENGTHOF val1 ; AX = 1 
	mov ax, LENGTHOF val2 ; AX = 3 
	mov ax, LENGTHOF array ; AX = 11 
	mov ax, LENGTHOF array2 ; AX = 15 
	mov ax, LENGTHOF msg; AX=15 
	call DumpRegs
main ENDP
END main
