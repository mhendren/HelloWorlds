
# This ia tested under linux. Assuming the syscall invokation does not change
# and the syscall service does not change, it should continue to work.
# This produces an incredibly small statically linked binary.
#
# as -o hello.o hello.s
# ld -s -o hello hello.o

.text
        .global _start          # directly name the entry point

hello:
        .string "hello, world\n"
        len = . - hello

_start:
        movl    $len, %edx
        movl    $hello, %ecx
        movl    $1, %ebx        # file handle (1 - stdout)
        movl    $4, %eax        # sys_call service (4 - output to file)
        int     $0x80           # make sys_call

        movl    $0, %ebx        # set return code
        movl    $1, %eax        # sys_call service (1, exit)
        int     $0x80           # make sys_call
