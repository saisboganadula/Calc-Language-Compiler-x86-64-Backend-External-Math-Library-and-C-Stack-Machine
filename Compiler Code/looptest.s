
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

	pushq	$100
	popq	i
L000:
	push	i
	pushq	$0
	popq	%rcx
	popq	%rbx
	cmpq	%rcx,%rbx
	jl	L001
	push	i
	popq	%rsi
	pushq	%rax
	pushq	%rbx
	movq	$print,%rdi
	movq	$0,%rax
	call	printf
	popq	%rbx
	popq	%rax
	push	i
	pushq	$1
	popq	%rbx
	popq	%rcx
	subq	%rbx,%rcx
	pushq	%rcx
	popq	i
	jmp	L000
L001:

    movq $60,%rax
 	xorq %rdi, %rdi
 	syscall
    
