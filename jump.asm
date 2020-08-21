; hello world in assembly

global _main
section .text
_main:
	mov rax, 0x2000001		; use the exit syscall
	mov rdi, 42 			; return 99 - success

	jmp exit
	mov rdi, 12

exit:
	syscall
