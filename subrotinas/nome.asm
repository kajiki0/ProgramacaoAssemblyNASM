;iremos usar o programa que pergunta qual o nome do usuario, mas utilizaremos subrotinas(funçoes) sem parametros

;vamos fazer uma funçao para cada bloco de instruçoes do label _start

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
	;lembre-se de que o assembly executa as intruçoes de forma sequencial(com exceçao de uma instruçao jump que pode mudar o fluxo de execuçao)
	;para chamar a funçao:
	call imprimePergunta ;chama a funcao e salta para ela
	call lerNome
	call imprimeOla
	call imprimeNome
	call encerraPrograma

imprimePergunta:
	;imprimindo a mensagem "Como voce se chama?"
	mov rax,1
	mov rdi,1
	mov rsi,pergunta
	mov rdx,tamPerg
	syscall
	;ao chamar o syscall, precisamos retornar a quem chamou a funcao por meio do 'ret'
	ret ;imagine o return do C ou outra linguagem similar

lerNome:
	;ler o nome do usuario 
	mov rax,0
	mov rdi,0
	mov rsi,nome
	mov rdx,tamNome
	syscall
	ret

imprimeOla:
	;imprimindo a mensagem "Ola, "
	mov rax,1
	mov rdi,1
	mov rsi,ola
	mov rdx,tamOla
	syscall
	ret

imprimeNome:
	;imprimindo o nome do usuario
	mov rax,1
	mov rdi,1
	mov rsi,nome
	mov rdx,tamNome
	syscall
	ret

encerraPrograma:
	mov rax,60
	mov rdi,0
	syscall	;colocar o ret aqui é apenas uma convençao, ja que o programa encerra apos a syscall
