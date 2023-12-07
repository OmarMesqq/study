### First, compile the program:
`gcc -g simplest.c -o simplestCProgram`

### Then start the debugger:
`gdb simplestCProgram`

### Inside gdb:

#### Set a breakpoint at main:
`(gdb) break main`

#### Run the program: 
`(gdb) run`

#### Disassemble the main function:
`(gdb) disassemble main`

#### Step through:
`(gdb) stepi`

#### See registers and memory:
`(gdb) info registers`

`(gdb) x/10i $pc`

### You can also disassemble the whole program
`objdump -D simplestCProgram  > objdump.asm`
