
# This is tested on linux (I actually have an assembler that works with
# this code). This requires the standard gcc -o hello hello-libc.s (mainly
# because it calls printf () from libc, so it needs to be linked to libc.
# Also, it is a function called main, which means that it needs crt0.o 
# to be linked in to bootstrap it.

.globl  main
        .type   main, @function

main:
        pushl   %ebp
        movl    %esp,%ebp
        pushl   $.hello
        call    printf
        leave
        ret

.hello:
        .string "hello, world\n"
        .text
