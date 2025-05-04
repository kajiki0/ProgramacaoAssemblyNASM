;neste hello vamos informar a quantidade de bytes da string de forma automatica

; equ é o equivalente a uma constante

section .data
    mensagem db 72, 101, 108, 108, 111, 10      ;mensagem 'Hello' com quebra de linha no final representado na tabela ascii
    tamanho equ $-mensagem ;compilador vai contar a quantidade de bytes da variavel mensagem devido ao '$-'
section .text
    global _start

_start:
    mov rax, 1  ; sys_write
    mov rdi, 1  ; output
    mov rsi, mensagem ; cadeia de caracteres
    mov rdx, 6 ; numero de bytes
    syscall

    mov rax, 60 ; sys_exit
    mov rdi, 0  ; return 0;
    syscall