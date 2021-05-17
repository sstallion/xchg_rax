; [0x05]
;
; This snippet sets up EFLAGS for a conditional instruction/jump on a range of
; values. In this specific example, if RAX contains a value between 5 and 9
; inclusive, the CF or ZF flags will be set, which may then be followed by a
; CMOVBE/JBE/etc.

%include "macros.mac"

	global	main

	section	.text
main:
	sub	rax, 5		; Subtract 5 from RAX
	cmp	rax, 4		; Subtract 4 from RAX; CF set if RAX < 4, ZF set if RAX = 4

	mov	rax, 0
	ret
