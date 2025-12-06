
.data

vara:	.quad 0
varb:   .quad 0
varc:   .quad 0
a:	.quad 0
b:	.quad 0
c:	.quad 0
d:	.quad 0
e:	.quad 0
f:	.quad 0
g:	.quad 0
h:	.quad 0
i:	.quad 0
j:	.quad 0
k:	.quad 0
l:	.quad 0
m:	.quad 0
n:	.quad 0
o:	.quad 0
p:	.quad 0
q:	.quad 0
r:	.quad 0
s:	.quad 0
t:	.quad 0
u:	.quad 0
v:	.quad 0
w:	.quad 0
x:	.quad 0
y:	.quad 0
z:	.quad 0
print:
	.string "%ld\n" 
	
.text
.global main
main:
	pushq	%rbp			
	movq	%rsp, %rbp

	pushq	$1000000
	popq	n
	pushq	$100000000
	popq	s
	pushq	$0
	popq	a
L000:
	push	n
	pushq	$0
	popq	%rcx
	popq	%rbx
	cmpq	%rcx,%rbx
	jle	L001
	push	a
	push	s
	push	n
	popq	%r9
	popq	%rax
	xorq	%rdx,%rdx
	idivq	%r9
	pushq	%rax
	popq	%rbx
	popq	%rcx
	addq	%rbx,%rcx
	pushq	%rcx
	popq	a
	push	n
	pushq	$1
	popq	%rbx
	popq	%rcx
	subq	%rbx,%rcx
	pushq	%rcx
	popq	n
	jmp	L000
L001:
	push	a
	push	s
	pushq	$1000
	popq	%r9
	popq	%rax
	xorq	%rdx,%rdx
	idivq	%r9
	pushq	%rax
	popq	%r9
	popq	%rax
	xorq	%rdx,%rdx
	idivq	%r9
	pushq	%rax
	popq	%rsi
	pushq	%rax
	pushq	%rbx
	movq	$print,%rdi
	movq	$0,%rax
	call	printf
	popq	%rbx
	popq	%rax

    movq $60,%rax
 	xorq %rdi, %rdi
 	syscall
    
