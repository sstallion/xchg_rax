; [0x06]

%include "macros.mac"

	global	main

	section	.text
main:
	not	rax
	inc	rax
	neg	rax

	mov	rax, 0
	ret
