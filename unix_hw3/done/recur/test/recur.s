	.file	"recur.c"
	.intel_syntax noprefix
	.text
	.globl	r
	.type	r, @function
r:
.LFB0:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 24
	.cfi_offset 3, -24
	mov	DWORD PTR -20[rbp], edi
	cmp	DWORD PTR -20[rbp], 0
	jg	.L2
	mov	eax, 0
	jmp	.L3
.L2:
	cmp	DWORD PTR -20[rbp], 1
	jne	.L4
	mov	eax, 1
	jmp	.L3
.L4:
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, 1
	mov	edi, eax
	call	r
	lea	ebx, [rax+rax]
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, 2
	mov	edi, eax
	call	r
	mov	edx, eax
	mov	eax, edx
	add	eax, eax
	add	eax, edx
	add	eax, ebx
.L3:
	add	rsp, 24
	pop	rbx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	r, .-r
	.section	.rodata
.LC0:
	.string	"%x\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	edi, 18
	call	r
	mov	esi, eax
	lea	rdi, .LC0[rip]
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
