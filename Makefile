AS = nasm
ASFLAGS = -g
CC = gcc
LDFLAGS = -m64
LDLIBS =

kernel := $(shell uname -s)
ifeq ($(kernel),Darwin)
  ASFLAGS += -f macho64
else ifeq ($(kernel),Linux)
  ASFLAGS += -f elf64
else
  $(error unsupported kernel `$(kernel)')
endif

# Snippets are numbered in hex (00 through 3f):
snippets := $(shell printf 'snip_%02x\n' $(shell seq 0 0x3f))

.PHONY: all
all: $(snippets)

.PHONY: clean
clean:
	$(RM) *.o snip_[0-3][0-9a-f]

$(snippets): %: %.o
	$(CC) $(LDFLAGS) -o $@ $^ $(LDLIBS)

%.o: %.asm
	$(AS) $(ASFLAGS) -o $@ $<
