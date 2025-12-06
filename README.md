Calc Language Compiler – x86-64 Backend, External Math Library, and C Stack Machine

This project is a complete compiler toolchain for a small calculator language. The language uses a stack-based execution model, and I extended the provided reference compiler to generate two different backends: one that emits real x86-64 assembly and another that emits C code for a stack-machine runtime. The project also includes an external math library implemented in assembly to support additional built-in operations.

The original calc language supports integer variables, arithmetic, comparisons, print statements, and control structures such as if and while. For example, a calc program computing the GCD of two numbers is translated into stack-machine instructions, and my compiler lowers those instructions into actual assembly code that behaves the same way.

Project Structure
bin/                      – final compiler executables
lexyacc-code/             – compiler sources (lex, yacc, calc3i.c, calc3c.c)
src/                      – assembly code for external math library
lib/                      – compiled library (.a or .so)
x86-64-driver.sh          – builds assembly backend output into an executable
c-driver.sh               – builds C backend output into an executable
Makefile                  – builds compiler and library

Compiler Backends
	1.	x86-64 Backend (calc3i.c)
This backend converts the stack-machine instructions into real x86-64 instructions. Push and pop operations use the processor stack, arithmetic operations explicitly load and store values around the ALU instructions, and control flow is implemented using labels and conditional jumps. The driver script wraps the generated code with a prologue (data section, symbol table, text section) and an epilogue (exit system call), and then calls gcc to assemble and link the file.
	2.	C Stack-Machine Backend (calc3c.c)
For the highest grade, I also implemented a backend that emits C code instead of assembly. The compiler output interacts with a simple C-based stack machine runtime that I implemented, which provides push, pop, and arithmetic operations. The backend still follows the low-level instruction semantics rather than simply translating the original calc program into high-level C.

External Math Library
The calc language was extended with three new built-in functions: factorial (fact), binary logarithm (lntwo), and GCD (gcd). The x86-64 backend emits calls to these functions, and I implemented them in assembly and packaged them into a standalone library placed in the lib/ directory. This allows the generated programs to link against the library instead of embedding these functions directly into the output.

Output Handling
The x86-64 backend prints results using system calls rather than printf, which means the assembly code converts integer values to ASCII and writes them directly to standard output. This keeps the generated programs self-contained and avoids linking against the C standard library.

Drivers
x86-64-driver.sh takes a .calc file, generates a .s assembly file with prologue and epilogue, invokes the compiler backend, and produces an executable.
c-driver.sh performs the same workflow for the C backend, producing a .c file and compiling it with gcc.

Summary
This project implements a working compiler with two low-level backends, an external assembly library, and driver scripts that produce runnable executables from calc programs. It covers lex/yacc parsing, code generation, stack-machine semantics, assembly programming, linking, and basic runtime system design.
