	.globl factorial
factorial:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rdi
	movl	-8(%rbp), %eax
	pushq	%rax
	movl	$0, %eax
	movl	%eax, %ecx
	popq	%rax
	cmpl	%ecx, %eax
	movl	$0, %eax
	setl	%al
	cmpl	$0, %eax
	je	LfactorialIFA0
	movl	$0, %eax
	leave
	ret
	jmp	LfactorialIFB0
LfactorialIFA0:
LfactorialIFB0:
	movl	$1, %eax
	pushq	%rax
	movl	$1, %eax
	pushq	%rax
LfactorialFORA1:
	movl	-24(%rbp), %eax
	pushq	%rax
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	popq	%rax
	cmpl	%ecx, %eax
	movl	$0, %eax
	setle	%al
	cmpl	$0, %eax
	je	LfactorialFORC1
	movl	-16(%rbp), %eax
	pushq	%rax
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	popq	%rax
	imul	%ecx, %eax
	movl	%eax, -16(%rbp)
	addq	$0, %rsp
LfactorialFORB1:
	movl	-24(%rbp), %eax
	pushq	%rax
	movl	$1, %eax
	movl	%eax, %ecx
	popq	%rax
	addl	%ecx, %eax
	movl	%eax, -24(%rbp)
	jmp	LfactorialFORA1
LfactorialFORC1:
	addq	$8, %rsp
	movl	-16(%rbp), %eax
	leave
	ret

	.globl main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$5, %eax
	movq	%rax, %rdi
	call	factorial
	leave
	ret

