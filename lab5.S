	.file	"lab5.c"
gcc2_compiled.:
___gnu_compiled_c:
.text
	.align 4
.globl _count_bull_cows
	.def	_count_bull_cows;	.scl	2;	.type	32;	.endef
_count_bull_cows:
	pushl %ebp
	movl %esp,%ebp
	subl $32,%esp
	movl $0,-4(%ebp)
	movl $15,-32(%ebp)
	movl $0,-12(%ebp)
	.p2align 4,,7
L2:
	cmpl $3,-12(%ebp)
	jle L5
	jmp L3
	.p2align 4,,7
L5:
	movl 8(%ebp),%eax
	andl -32(%ebp),%eax
	movl 12(%ebp),%edx
	andl -32(%ebp),%edx
	cmpl %edx,%eax
	jne L6
	incl -4(%ebp)
	movl -32(%ebp),%ecx
	orl %ecx,8(%ebp)
	movl -32(%ebp),%ecx
	orl %ecx,12(%ebp)
L6:
	sall $4,-32(%ebp)
L4:
	incl -12(%ebp)
	jmp L2
	.p2align 4,,7
L3:
	movl $0,-8(%ebp)
	movl $0,-12(%ebp)
	.p2align 4,,7
L7:
	cmpl $3,-12(%ebp)
	jle L10
	jmp L8
	.p2align 4,,7
L10:
	movl 8(%ebp),%ecx
	andl $15,%ecx
	movl %ecx,-24(%ebp)
	sarl $4,8(%ebp)
	cmpl $15,-24(%ebp)
	je L9
	movl 12(%ebp),%eax
	movl %eax,-20(%ebp)
	movl $15,-32(%ebp)
	movl $0,-16(%ebp)
	.p2align 4,,7
L12:
	cmpl $3,-16(%ebp)
	jle L15
	jmp L9
	.p2align 4,,7
L15:
	movl -20(%ebp),%ecx
	andl $15,%ecx
	movl %ecx,-28(%ebp)
	sarl $4,-20(%ebp)
	movl -28(%ebp),%eax
	cmpl -24(%ebp),%eax
	jne L16
	incl -8(%ebp)
	movl -32(%ebp),%ecx
	orl %ecx,12(%ebp)
	jmp L9
	.p2align 4,,7
L16:
	sall $4,-32(%ebp)
L14:
	incl -16(%ebp)
	jmp L12
	.p2align 4,,7
L13:
L11:
L9:
	incl -12(%ebp)
	jmp L7
	.p2align 4,,7
L8:
	movl -4(%ebp),%edx
	sall $4,%edx
	addl -8(%ebp),%edx
	movl %edx,%eax
	jmp L1
	.p2align 4,,7
L1:
	movl %ebp,%esp
	popl %ebp
	ret
