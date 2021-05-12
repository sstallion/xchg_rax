; [0x02]
;
; This snippet will destructively store 1 if RAX contains a non-zero value,
; which is similar to C's integer conversion for boolean types (C11 §6.3.1.2).
; When RAX contains 0, NEG will set CF to 1, which is then added to RAX before
; subtracting from itself. This results in -1 in RAX, which is then negated
; back to 0 indicating a "false" value.
;
; This is exceptionally clever and the first time I've seen SBB used this way.
; I like that this uses a single register and does not require a branch.

%include "macros.mac"

	global	main

	section	.text
main:
	neg	rax		; Two's complement negate RAX.
	sbb	rax, rax	; Add CF to RAX and subtract from itself.
	neg	rax		; Two's complement negate RAX.

	mov	rax, 0
	ret
