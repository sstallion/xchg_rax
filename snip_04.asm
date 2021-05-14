; [0x04]
;
; This snippet toggles the case of an ASCII character stored in AL. This works
; due to an 0x20 offset between upper and lowercase alphabetical characters.
;
; I had to dig around a little bit to understand the intent behind this
; snippet and wanted to kick myself afterward. This reminded me of a similar
; trick to convert a decimal digit to ASCII by adding 0x30 to the value.

%include "macros.mac"

	global	main

	section	.text
main:
	xor	al, 0x20	; Toggle bit 5 in AL

	mov	rax, 0
	ret
