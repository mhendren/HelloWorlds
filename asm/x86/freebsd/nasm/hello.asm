
; This is tested under FreeBSD. BSD uses a different syscall mechanism
; than Linux.
;
; nasm -f elf hello.s
; ld -s -o hello hello.o

section .data
hello db "hello, world", 0Ah
len   equ $-hello

section .text
global _start

align	4
sys_call:
	int	80h
	ret

_start:
	push	dword len
	push	dword hello
	push	dword 1
	mov	eax, 4
	call	sys_call

	push	dword 0
	mov	eax, 1
	call	sys_call

	ret
