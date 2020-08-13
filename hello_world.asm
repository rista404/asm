; hello world in assembly

global _main
section .text
_main:
	mov rax, 0x2000004 		; use the write syscall
	mov rdi, 1				; output to stdout as fd
	mov rsi, message 		; output message var
	mov rdx, message_len	; suply message len
	syscall

	mov rax, 0x2000001		; use the exit syscall
	mov rdi, 0 				; return 0 - success
	syscall					; call syscall


section .data
	message: db "Hello, world!", 10 ; 10 - \n
	message_len: equ $-message

