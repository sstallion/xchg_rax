; [0x04]
;
; This snippet toggles the case of an ASCII character stored in AL. This works
; due to upper and lowercase alphabetical characters being offset by 0x20.
;
; I had to dig around a bit to understand the intent behind XORing bit 5 and
; wanted to kick myself afterward for missing the obvious. This snippet also
; reminded me of a similar trick to convert decimal digits to ASCII by adding
; 0x30 to the value.

%include "macros.mac"

	global	main

	section	.text
main:
	xor	al, 0x20	; Toggle bit 5 in AL

	mov	rax, 0
	ret
