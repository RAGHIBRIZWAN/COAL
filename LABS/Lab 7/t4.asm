INCLUDE Irvine32.inc

.data
	qs BYTE "Enter number of rows: ",0
	ans BYTE "*",0
	nums DWORD ?
.code
main PROC
	mov edx, OFFSET qs
	call WriteString
	call ReadInt
	mov nums,eax
	mov ecx,1
	call print
	exit
main ENDP
	
print PROC
L1:
	cmp ecx,eax
	JG next
	mov ebx,1
L2:
	mov edx,OFFSET ans
	call WriteString
	inc ebx
	cmp ebx,ecx
	JLE L2
	inc ecx
	call Crlf
	jmp L1
next:
	ret
print ENDP
END main







INCLUDE Irvine32.inc

.data
	qs BYTE "Enter number of rows: ",0
	ans BYTE "*",0
	nums DWORD ?
.code
main PROC
	mov edx, OFFSET qs
	call WriteString
	call ReadInt
	mov nums,eax
	mov ecx,1
	call print
	exit
main ENDP
	
print PROC
mov ecx,5
mov eax,1
L1:
	push ecx
	push eax
	mov ecx, eax

L2:
	cmp ecx,0
	jle exit_L2
	mov eax,42
	call writechar
	loop L2

exit_L2:
	pop eax
	pop ecx
	inc eax
	call crlf
	loop L1

print ENDP
END main
