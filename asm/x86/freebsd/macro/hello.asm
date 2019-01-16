
; This is tested under FreeBSD. BSD uses a different syscall mechanism
; than Linux.
;
; nasm -f elf hello.asm
; ld -s -o hello hello.o

	%include 'system.inc'

section .data
hello db "hello, world", 0Ah
len   equ $-hello

section .text
global _start

_start:
	push	dword len
	push	dword hello
	push	dword stdout
	sys.write

	push	dword 0
	sys.exit
	ret
