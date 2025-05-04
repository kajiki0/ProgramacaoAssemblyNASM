section .data ; definições de dados(constantes,variaveis, etc)
	mensagem db 'Hello, World!',10  ;definindo os bytes (db) da variavel "mensagem" com a string
									;temos 14 bytes de tamanho, 1 char = 1 byte
;o valor 10 é codigo ASCII para indicar quebra de linha '\n'
section .text ; código do programa
	global _start	;;rotulo do entry point

_start:			;programa começa aqui
;para dar ordens ao programa, precisamos usar as chamadas de sistema(syscalls)
;podemos ter syscall de leitura, escrita, abrir arquivos,etc(há mais de 300 syscall em nasm)

	mov rax, 1 			;identificador da sys_write
	mov rdi, 1 			;saida padrao
	mov rsi, mensagem	;aponta para a string
	mov rdx, 14			;numero de bytes
	syscall

	mov rax, 60			;identificador da sys_exit
	mov rdi, 0			;encerrou com sucesso
	syscall
