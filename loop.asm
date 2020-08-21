global _main
section .text
_main:
	mov ecx, 0
	jmp write

write:
	mov rax, 0x2000004	; write syscall
	mov rdi, 1 			; stdout
	mov rsi, msg
	mov rdx, msg_len
	syscall				; write it out
	
	inc ecx 			; increment message
	cmp ecx, 10			; if ecx < 10
	jl write

	jmp exit

exit:
	mov rax, 0x2000001	; exit syscall
	mov rdi, 0 			; 0 exit code
	syscall

section .data
	msg: db "counting...", 10
	msg_len: equ $ - msg
