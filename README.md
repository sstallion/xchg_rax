# `; 0x40 assembly riddles`

> "xchg rax,rax" is a collection of assembly gems and riddles I found over many
> years of reversing and writing assembly code. The book contains 0x40 short
> assembly snippets, each built to teach you one concept about assembly, math or
> life in general.
>
> -- [Amazon Product Description][1]

This repository contains annotated solutions to [xchg rax,rax][2] by [xorpd][3].
Solutions were developed using the Netwide Assembler ([NASM][4]) for x86-64 and
may be built on Linux and macOS using the provided Makefile.

## Building Snippets

To build all snippets, issue:

    $ make all

To build a given snippet, issue:

    $ make snip_<number>

> **Note**: Snippets are numbered in hex (`00` through `3f`).

## Running Snippets

Snippets can be run as-is, however there will not be any interesting output. A
GDB command file is included with each solution to demonstrate behavior.

To execute the command file for a given snippet, issue:

    $ gdb -batch -x gdb/snip_<number>

> **Note**: Sample command file output can be found in the `output` directory.

## Contributing

Pull requests are welcome! If a mistake is found, please file an issue on
[GitHub][5].

[1]: https://www.amazon.com/dp/1502958082
[2]: https://www.xorpd.net/pages/xchg_rax/snip_00.html
[3]: https://www.xorpd.net
[4]: https://nasm.us
[5]: https://github.com/sstallion/xchg_rax/issues
