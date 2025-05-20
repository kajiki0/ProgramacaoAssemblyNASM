ASSEMBLER = nasm
LINKER = ld
FILE = nome_compatibilidade


$(FILE).o: $(FILE).asm
		$(ASSEMBLER) -f elf64 $^ -o $@


$(FILE).out: $(FILE).o
	$(LINKER) $^ -o $@ 


clean:
	rm $(FILE).out && rm $(FILE).o

