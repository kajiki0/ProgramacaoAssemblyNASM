# Estudos pessoais de programação em assembly nasm

fonte: canal no youtube "DesCOMPlica, Oliba!", playlist de NASM
maquina utilizada: WSL com Ubuntu 24.04 LTS



## Building do programa

compilar programa:
nasm -f elf64 <arquivoEntrada>.asm -o <arquivoObjeto>.o

nota: nasm = assembler (o compilador)

linkar programa:
ld <arquivoObjeto>.o -o <arquivoExecutavel>

rodar programa:
./<arquivoExecutavel>
