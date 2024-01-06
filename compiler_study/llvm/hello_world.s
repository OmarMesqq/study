	.text
	.file	"hello_world.ll"
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	str@GOTPCREL(%rip), %rdi
	xorl	%eax, %eax
	callq	printf@PLT
	xorl	%eax, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	str,@object                     # @str
	.section	.rodata,"a",@progbits
	.globl	str
str:
	.ascii	"Hello, World!\n"
	.size	str, 14

	.section	".note.GNU-stack","",@progbits
