	.file	"math4.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR -16[rbp], 2
	mov	DWORD PTR -12[rbp], 3
	mov	DWORD PTR -8[rbp], 10
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, edx
	sal	eax, 2
	lea	ecx, [rax+rdx]
	neg	ecx
	mov	eax, DWORD PTR -12[rbp]
	neg	eax
	cdq
	idiv	DWORD PTR -8[rbp]
	mov	esi, edx
	mov	eax, ecx
	cdq
	idiv	esi
	mov	DWORD PTR -4[rbp], eax
	mov	eax, 0
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
