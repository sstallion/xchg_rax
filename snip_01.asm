; [0x01]
;
; This snippet demonstrates use of the XADD instruction, which will exchange
; the values of the destination and source and place the sum in the
; destination. I've used this instruction in the past when implementing
; recursive spinlocks, though for atomic use the LOCK prefix is required.
;
; I had fun with the command file for this snippet. It's possible to
; generate a Fibonacci sequence using XADD by priming the source and
; destination registers with 1 and 0, respectively. RCX controls the number of
; iterations, but RAX and RDX can overflow quickly as XADD only supports
; 32-bit values without the REX prefix.

%include "macros.mac"

	global	main

	section	.text
main:
	xadd	rax, rdx	; Exchange RAX and RDX, store sum in RAX.
	loop	main		; Loop until RCX decrements to 0.

	mov	rax, 0
	ret
