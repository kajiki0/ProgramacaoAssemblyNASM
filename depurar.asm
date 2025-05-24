section .data
	msg db "Boa noite.",10
	tam EQU $-msg

section .text
	global _start

_start:
	;imprimindo mensagem
	mov rax, 1
	mov rdi, 1
	mov rsi, msg
	mov rdi, tam ;vamos colocar o registrador rdi no lugar do rdx de forma proposital para fins de debug
	syscall


	;encerrando programa
	mov rax, 60
	mov rdi, 0
	syscall
