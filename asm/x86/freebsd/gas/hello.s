
# This ia tested under linux. Assuming the syscall invokation does not change
# and the syscall service does not change, it should continue to work.
# This produces an incredibly small statically linked binary.
#
# as -o hello.o hello.s
# ld -s -o hello hello.o

.data
hello:
        .string "hello, world\n"
        len = . - hello

.text
        .global _start          # directly name the entry point

sys_call:
	.align 4
	int	$0x80
	ret

_start:
        push	$len
        push	$hello
        push    $1    		# file handle (1 - stdout)
        movl    $4, %eax        # sys_call service (4 - output to file)
	call	sys_call

	push	$0		# return code
        movl    $1, %eax        # sys_call service (1, exit)
	call	sys_call
