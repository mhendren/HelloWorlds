
; This is a C-64 version of hello world
;
; I cannot verify other 6502 style operations (like that the output the
; current value of the accumulator routine being located as $FFD2)

chrout  =       $ffd2

start:
        ldx     #0
loop:
        lda     string,x
        beq     done_loop
        jsr     chrout
        inx
        jmp     loop

done_loop:
        rts

; The .byte command is only available on macro assemblers. The standard
; mechanism was to just define the bytes after you have written the program.

string:
        .byte   "hello, world"
        .byte   13, 0
