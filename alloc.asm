global _main

section .text
_main:
	sub rsp, 4
	mov [rsp], byte 'H'
	mov [rsp+1], byte 'e'
	mov [rsp+2], byte 'y'
	mov [rsp+3], byte '!'

	mov rax, 0x2000004
	mov rdi, 1
	mov rsi, rsp
	mov rdx, 4
	syscall

	mov rax, 0x2000001
	mov rdi, 1
	syscall

; rsp - stack pointer
; If the class is INTEGER, the next available register of the
; sequence %rdi, %rsi, %rdx, %rcx, %r8 and %r9 is used.

; movl 32
; movq 64
