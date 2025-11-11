;Escrever um programa assembly para NASM, usando a util.asm equivalente a este programa Python

;print("Informe dois valores: ")
;n1 = int(input())
;n2 = int(input())
;if n1>n2:
;    m = n1
;else:
;    m = n2
;print("Maior: ", m)


%include	'../util.asm'

section		.text
global		_start

_start:
    lea     rdi, [idv]
    call    printstr
    call    endl
    call    readint
    mov     r12, rax
    call    readint
    mov     r13, rax
    cmp     r12, r13
    jg      maior
    mov     r14, r13
    jmp     fim
maior:
    mov     r14, r12
fim:    
    lea     rdi, [mmsg]
    call    printstr
    mov     rdi, r14
    call    printint
    call    endl
    call    exit0
	            
section		.data
idv:    db 'Informe dois valores: ', 0
mmsg:   db 'Maior: ', 0
