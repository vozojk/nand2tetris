// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// The algorithm is based on repetitive addition.

@R1 //set D to R1
D=M
@ZERO
D;JEQ
@I
M=D //set I to R1
@R2
M=0
(LOOP)
@R0
D=M //set D to R0
@R2
M=M+D //set R2 to R2+R0
@I
M=M-1 //i=i-1
D=M
@LOOP
D;JGT

(END)
@END
0;JMP
(ZERO)
@R2
M=0
@END
0;JMP



