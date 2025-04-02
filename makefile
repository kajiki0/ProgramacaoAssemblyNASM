ASSEMBLER = nasm
LINKER = ld
FILE = hello


$(FILE).o: $(FILE).asm
		$(ASSEMBLER) -f elf64 $^ -o $@


$(FILE).out: $(FILE).o
	$(LINKER) $^ -o $@ 


clean:
	rm $(FILE).out && rm $(FILE).o

