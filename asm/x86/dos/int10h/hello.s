
; I have no way to test this. This is all recollection.

; Old DOS program that accesses the BIOS video functions

.org    100h

start:
        xor     bx, bx
loop:
        mov     ah, 0ah
        mov     cx, 1
        mov     al, [string + bl]
        cmp     al, 0
        jz      done_loop
        int     10h

        inc     bl

        mov     ah, 03h
        int     10h
        inc     dl
        mov     ah, 02h
        int     10h
        jmp     loop

done_loop:
        mov     ah, 03h
        int     10h
        xor     dl, dl
        inc     dh
        mov     ah, 02h
        int     10h

        int     20h

string:
        db      "hello, world", 0
