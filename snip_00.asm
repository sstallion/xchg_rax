; [0x00]
;
; This snippet describes various methods of storing 0 in a register. The first
; instruction was a dead giveaway: I remember this idiom from a 16-bit x86
; assembly course I took in school. At the time, XORing a register with itself
; was the fastest way to store a 0 and was preferred over MOV immediate.
;
; The loop instruction can cause significant delay as the initial value of RCX
; is indeterminate. Linux leaves this register uninitialized, however macOS
; clears all GP registers before branching to main, which results in a delay
; of 2^64 instructions!

%include "macros.mac"

	global	main

	section	.text
main:
	xor	eax, eax	; EAX XORed with itself is 0.
	lea	rbx, [0]	; Load address 0 into RBX.
	loop	$		; Loop until RCX decrements to 0.
	mov	rdx, 0		; Store immediate 0 into RDX.
	and	esi, 0		; ESI ANDed with 0 is 0.
	sub	edi, edi	; EDI SUBed with itself is 0.
	push	0		; Push 0 onto stack.
	pop	rbp		; Pop 0 into RBP.

	mov	rax, 0
	ret
