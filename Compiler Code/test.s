
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

	pushq	$6
	popq	%rax
	movq	$1, %rbx
L000:
	cmpq	$1, %rax
	jle	L001
	imulq	%rax, %rbx
	decq	%rax
	jmp	L000
L001:
	pushq	%rbx
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
    
