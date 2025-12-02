// The program computes the product R0 * R1 and stores the result in
// R2 (RAM[2]). Assume that R0 ≥ 0, R1 ≥ 0, and R0 * R1 < 32768

    //set R2 to 0, and i to 1
    @R2
    M=0
    @i
    M=1
    
(LOOP)
    // if (i>R1) goto END
    @i
    D=M
    @R1
    D=D-M
    @END
    D;JGT

    // accumulate sum in R2
    @R0
    D=M
    @R2
    M=D+M

    // i++, then back to LOOP
    @i
    M=M+1
    @LOOP
    0;JMP

(END)
    @END
    0;JMP