# Notes

```sh
nasm -f macho64 hello_world.asm # outputs hello_world.o

# check the macos version you're using
ld -macosx_version_min 10.15.0 -lSystem -o hello_world hello_world.o # outputs hello_world
```


```asm
_main label starting point

0x2000004	; write syscall
0x2000001	; exit syscall

; rsp - stack pointer
; If the class is INTEGER, the next available register of the
; sequence %rdi, %rsi, %rdx, %rcx, %r8 and %r9 is used.

; movl 32
; movq 64
```
