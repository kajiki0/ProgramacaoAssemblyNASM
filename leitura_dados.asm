;vamos utilizar a syscall de escrita(sys_write) para entrada e a syscall de saida(sys_read) para ler a mensagem

section .data
    pergunta db "Como voce se chama?",10
    tamPerg EQU $-pergunta

    ola db "Ola, "
    tamOla EQU $-ola
    tamNome EQU 10
;para definição de uma variavel estatica(que ja sabemos o tamanho) devemos utilizar outra seção do programa
;resb significa 'reserve bytes', devemos dizer quantos bytes vao ser reservados para a variavel nome(1 byte = 1 char)
section .bss
    nome resb tamNome ;limite de 10 caracteres
section .text
    global _start

_start:
;imprimindo a mensagem "Como voce se chama?"
    mov rax, 1
    mov rdi, 1
    mov rsi, pergunta
    mov rdx, tamPerg
    syscall

;ler o nome do usuario(perceba que utilizamos o mesmos registradores, mas com numeros diferentes que significam syscalls diferentes)
    mov rax, 0
    mov rdi, 0
    mov rsi, nome
    mov rdx, tamNome
    syscall

;imprimindo a mensagem "Ola, "
    mov rax, 1
    mov rdi, 1
    mov rsi, ola
    mov rdx, tamOla
    syscall

;imprimindo o nome do usuario
    mov rax, 1
    mov rdi, 1
    mov rsi, nome
    mov rdx, tamNome
    syscall

;encerrando programa
    mov rax, 60
    mov rdi, 0
    syscall