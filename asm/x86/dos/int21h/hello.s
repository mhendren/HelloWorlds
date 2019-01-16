
; This is using some old long term recall. I am probably forgetting
; something

.org = 100h

start:
        mov     dx, string
        mov     ah, 09h
        int     21h
        int     20h

string:
        db      'hello, world', 13, 10, '$'
