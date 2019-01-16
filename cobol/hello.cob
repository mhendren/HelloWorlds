      * Hello world in cobol-85 using a variable
       IDENTIFICATION DIVISION.
       PROGRAM-ID. hello.
       AUTHOR. Michael Hendren.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Msg.
          02 Str PIC AAAAAAAAAAAA.
       

       PROCEDURE DIVISION.

       MOVE "hello, world" TO Msg.
       DISPLAY Msg.

       STOP RUN.
