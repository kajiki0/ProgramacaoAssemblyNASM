# Estudos pessoais de programação em assembly nasm

fonte: canal no youtube "DesCOMPlica, Oliba!", [playlist](https://www.youtube.com/playlist?list=PLHCyLhqWSaHAvibGpwHGvoN6pO7AUGyOh) de NASM 

maquina utilizada: WSL com Ubuntu 24.04 LTS

### nota:
após a descontinuação do canal com as aulas de assembly, vou continuar com o livro "Programação em Baixo Nível " do Igor Zhirkov


## Building do programa

compilar programa:
nasm -f elf64 <arquivoEntrada>.asm -o <arquivoObjeto>.o

nota: nasm = assembler (o compilador)

linkar programa:
ld <arquivoObjeto>.o -o <arquivoExecutavel>

rodar programa:
./<arquivoExecutavel>


