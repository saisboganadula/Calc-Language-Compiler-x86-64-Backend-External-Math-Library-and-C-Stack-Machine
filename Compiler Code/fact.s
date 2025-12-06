
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

	pushq	$0
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
	pushq	$1
	popq	%rbx
	popq	%rcx
	subq	%rbx,%rcx
	pushq	%rcx
	popq	%rsi
	pushq	%rax
	pushq	%rbx
	movq	$print,%rdi
	movq	$0,%rax
	call	printf
	popq	%rbx
	popq	%rax
	pushq	$1
	popq	%rax
	movq	$1, %rbx
L002:
	cmpq	$1, %rax
	jle	L003
	imulq	%rax, %rbx
	decq	%rax
	jmp	L002
L003:
	pushq	%rbx
	pushq	$1
	popq	%rbx
	popq	%rcx
	subq	%rbx,%rcx
	pushq	%rcx
	popq	%rsi
	pushq	%rax
	pushq	%rbx
	movq	$print,%rdi
	movq	$0,%rax
	call	printf
	popq	%rbx
	popq	%rax
	pushq	$2
	popq	%rax
	movq	$1, %rbx
L004:
	cmpq	$1, %rax
	jle	L005
	imulq	%rax, %rbx
	decq	%rax
	jmp	L004
L005:
	pushq	%rbx
	pushq	$2
	popq	%rbx
	popq	%rcx
	subq	%rbx,%rcx
	pushq	%rcx
	popq	%rsi
	pushq	%rax
	pushq	%rbx
	movq	$print,%rdi
	movq	$0,%rax
	call	printf
	popq	%rbx
	popq	%rax
	pushq	$3
	popq	%rax
	movq	$1, %rbx
L006:
	cmpq	$1, %rax
	jle	L007
	imulq	%rax, %rbx
	decq	%rax
	jmp	L006
L007:
	pushq	%rbx
	pushq	$6
	popq	%rbx
	popq	%rcx
	subq	%rbx,%rcx
	pushq	%rcx
	popq	%rsi
	pushq	%rax
	pushq	%rbx
	movq	$print,%rdi
	movq	$0,%rax
	call	printf
	popq	%rbx
	popq	%rax
	pushq	$4
	popq	%rax
	movq	$1, %rbx
L008:
	cmpq	$1, %rax
	jle	L009
	imulq	%rax, %rbx
	decq	%rax
	jmp	L008
L009:
	pushq	%rbx
	pushq	$24
	popq	%rbx
	popq	%rcx
	subq	%rbx,%rcx
	pushq	%rcx
	popq	%rsi
	pushq	%rax
	pushq	%rbx
	movq	$print,%rdi
	movq	$0,%rax
	call	printf
	popq	%rbx
	popq	%rax
	pushq	$5
	popq	%rax
	movq	$1, %rbx
L010:
	cmpq	$1, %rax
	jle	L011
	imulq	%rax, %rbx
	decq	%rax
	jmp	L010
L011:
	pushq	%rbx
	pushq	$120
	popq	%rbx
	popq	%rcx
	subq	%rbx,%rcx
	pushq	%rcx
	popq	%rsi
	pushq	%rax
	pushq	%rbx
	movq	$print,%rdi
	movq	$0,%rax
	call	printf
	popq	%rbx
	popq	%rax
	pushq	$6
	popq	%rax
	movq	$1, %rbx
L012:
	cmpq	$1, %rax
	jle	L013
	imulq	%rax, %rbx
	decq	%rax
	jmp	L012
L013:
	pushq	%rbx
	pushq	$720
	popq	%rbx
	popq	%rcx
	subq	%rbx,%rcx
	pushq	%rcx
	popq	%rsi
	pushq	%rax
	pushq	%rbx
	movq	$print,%rdi
	movq	$0,%rax
	call	printf
	popq	%rbx
	popq	%rax
	pushq	$7
	popq	%rax
	movq	$1, %rbx
L014:
	cmpq	$1, %rax
	jle	L015
	imulq	%rax, %rbx
	decq	%rax
	jmp	L014
L015:
	pushq	%rbx
	pushq	$5040
	popq	%rbx
	popq	%rcx
	subq	%rbx,%rcx
	pushq	%rcx
	popq	%rsi
	pushq	%rax
	pushq	%rbx
	movq	$print,%rdi
	movq	$0,%rax
	call	printf
	popq	%rbx
	popq	%rax
	pushq	$8
	popq	%rax
	movq	$1, %rbx
L016:
	cmpq	$1, %rax
	jle	L017
	imulq	%rax, %rbx
	decq	%rax
	jmp	L016
L017:
	pushq	%rbx
	pushq	$40320
	popq	%rbx
	popq	%rcx
	subq	%rbx,%rcx
	pushq	%rcx
	popq	%rsi
	pushq	%rax
	pushq	%rbx
	movq	$print,%rdi
	movq	$0,%rax
	call	printf
	popq	%rbx
	popq	%rax
	pushq	$9
	popq	%rax
	movq	$1, %rbx
L018:
	cmpq	$1, %rax
	jle	L019
	imulq	%rax, %rbx
	decq	%rax
	jmp	L018
L019:
	pushq	%rbx
	pushq	$362880
	popq	%rbx
	popq	%rcx
	subq	%rbx,%rcx
	pushq	%rcx
	popq	%rsi
	pushq	%rax
	pushq	%rbx
	movq	$print,%rdi
	movq	$0,%rax
	call	printf
	popq	%rbx
	popq	%rax
	pushq	$10
	popq	%rax
	movq	$1, %rbx
L020:
	cmpq	$1, %rax
	jle	L021
	imulq	%rax, %rbx
	decq	%rax
	jmp	L020
L021:
	pushq	%rbx
	pushq	$3628800
	popq	%rbx
	popq	%rcx
	subq	%rbx,%rcx
	pushq	%rcx
	popq	%rsi
	pushq	%rax
	pushq	%rbx
	movq	$print,%rdi
	movq	$0,%rax
	call	printf
	popq	%rbx
	popq	%rax
	pushq	$11
	popq	%rax
	movq	$1, %rbx
L022:
	cmpq	$1, %rax
	jle	L023
	imulq	%rax, %rbx
	decq	%rax
	jmp	L022
L023:
	pushq	%rbx
	pushq	$39916800
	popq	%rbx
	popq	%rcx
	subq	%rbx,%rcx
	pushq	%rcx
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
    
