global _main
section .text

_main:
	mov ecx, 101
	mov rdi, 42			; exit status 42
	mov rax, 0x2000001	; exit syscall

	cmp ecx, 100		; compare ecx to 100
	jl skip				; if ecx < 100, jump to skip
	
	mov rdi, 12			; change exit status to 12

skip:
	syscall

; jump instructions
; je	==
; jne	!=
; jg	>
; jge	>=
; jl	<
; jle	<=
