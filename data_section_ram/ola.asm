section .data
	ola db "Ola "
	ana db "Ana."

section .text
	global _start

_start:
	;imprimindo 'Ola '
	mov rax, 1
	mov rdi, 1
	mov rsi, ola
	mov rdx, 8 ;demonstrando que a partir do ponteiro de ola podemos mostrar os outros caracteres 'Ana.' que ,
	;ficou na memoria principal(RAM),já que a memoria é armazenada de forma contígua
	syscall
	

	;imprimindo 'Ana.'
	;mov rax, 1
	;mov rdi, 1
	;mov rsi, ola
	;mov rdx, 4
	;syscall

	
	;encerrando programa
	mov rax, 60
	mov rdi, 0
	syscall
