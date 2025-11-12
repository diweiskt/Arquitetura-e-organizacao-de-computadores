section     .text

global      fatorial

fatorial:
    mov     rax, 1
.laco:
    cmp     rdi, 2
    jl      .fim
    imul    rax, rdi
    dec     rdi
    jmp     .laco
.fim:
    ret