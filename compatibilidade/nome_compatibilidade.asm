section .data
	pergunta db "Como voce se chama?",10
	tamPerg EQU $-pergunta

	ola db "Ola, "
	tamOla EQU $-ola
	tamNome EQU 10

section .bss
	nome resb tamNome

section .text
	global _start

_start:
	;imprimindo a pergunta
	;trocando os registradores para 32 bits para mostrar a compatibilidade
	mov eax, 1
	mov edi, 1
	mov esi, pergunta
	mov edx, tamPerg
	syscall

	;ler nome do usuario
	;testando com registradores de 16 bits
	mov ax, 0
	mov di, 0
	mov si, nome
	mov dx, tamNome
	syscall

	;imprimindo 'Ola, '
	mov rax, 1
	mov rdi, 1
	mov rsi, ola
	mov rdx, tamOla	
	syscall

	;imprimindo nome do usuario
	mov rax, 1
	mov rdi, 1
	mov rsi, nome
	mov rdx, tamNome
	syscall

	;encerrando programa
	mov rax, 60
	mov rdi, 0
	syscall

	
