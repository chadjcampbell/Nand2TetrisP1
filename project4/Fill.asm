// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

(MAINLOOP) 
    // set screen start to addr
    @SCREEN
    D=A
    @addr 
    M=D
    // set iterator to 0
    @i
    M=0 
    // if kbd != 0 jump to fill, else jump to clear
    @KBD
    D=M
    @FILLLOOP
    D;JNE
    @EMPTYLOOP
    0;JMP 


// TODO - FIX THESE LOOPS
(FILLLOOP)
    @addr
    A=M
    M=-1
    @i
    M=M+1
    D=M
    @addr
    M=D+M
    @KBD
    D=M
    @MAINLOOP
    D;JEQ
    @FILLLOOP
    0;JMP

(EMPTYLOOP)
    @addr
    A=M
    M=0
    @i
    M=M+1
    D=M
    @addr
    M=D+M
    @KBD
    D=M
    @MAINLOOP
    D;JEQ
    @EMPTYLOOP
    0;JMP