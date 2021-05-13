; [0x03]
;
; This snippet will destructively store the arithmetic minimum of RAX and RDX
; without the need for a branch. This method only works for unsigned integer
; values.
;
; This is another clever example of using SBB to avoid a branch.

%include "macros.mac"

	global	main

	section	.text
main:
	sub	rdx, rax	; Subtract RAX from RDX; CF set if RAX > RDX.
	sbb	rcx, rcx	; Add CF to RCX and subtract from itself.
	and	rcx, rdx	; AND RDX into RCX.
	add	rax, rcx	; Add RCX into RAX.

	mov	rax, 0
	ret
