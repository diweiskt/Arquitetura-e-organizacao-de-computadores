%include '../util.asm'

section     .text

extern      fatorial

global      _start

_start:
    lea     rdi, [txt1]
    call    printstr
    call    readint
    mov     r13, rax    ;n

    mov     rdi, r13
    call    fatorial
    mov     r14, rax    ;n!

    lea     rdi, [txt2]
    call    printstr
    mov     rdi, r13
    call    printstr
    lea     rdi, [txt3]
    call    printstr
    mov     rdi, r14
    call    printstr
    call    endl

    call    exit0

section     .data

txt1:      db 'Informe um inteiro: ', 0
txt2:      db 'O fatorial de ', 0
txt3:      db ' é ', 0