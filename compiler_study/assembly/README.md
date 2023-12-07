In `pwd.S` there is a simple *executable* that prints the current working directory to the console.
First, assemble it: 
```bash
nasm -f elf64 pwd.S -o pwd.o
```
Then link it to an executable:
```bash
ld pwd.o
```

In `addition.S` we have an assembly source that adds two numbers and returns the result.
First, assemble it to an object file:
```bash
nasm -f elf64 addition.S -o addition.o
```
Then create a *static library* from the object file:
```bash
ar rcs libadd.a addition.o
```
Then link the library to the C executable:
```bash
gcc addition.c  -L. -ladd
```

### Notes on hexdumping:
To see the raw machine code of the binary file, specify the bitness of the target machine in the
assembly source: 
```asm
BITS 64 
; rest of the code
```
Then assemble it into binary:
```bash
nasm -f bin -o out.bin source.S
```
Then dump its contents:
1 - Using `hexdump`:
shows the canonical hex+ASCII display.

```bash
hexdump -C out.bin
```

2 - Using `xxd`:
```bash
xxd out.bin
```

3 - Using `objdump`:
outputs the machine code in a more readable format
for the specified architecture.
```bash
objdump -D -b binary -m i386:x86-64 out.bin
```

4 - Using `ndisasm`:
disassembles the machine code into assembly code.
```bash
ndisasm -b 64 out.bin
```

5 - Using `od` (octal dump): 
outputs the machine code in hexadecimal bytes (`-t x1`) without the byte offsets/address (`-A n`).
```bash
od -t x1 -A n out.bin
```

### Notes about sections: 

`.text`:  where the executable code of the program resides i.e contains the instructions that the CPU executes. Read-only to prevent accidental modification of the program's code during execution.

`.bss`: (Block Started by Symbol) contains variables that are **not initialized** by the program. They may be zero-initialized by the system when the program starts. Good for efficient memory usage for large arrays and buffers.

`.data`: used for declaring initialized data or variables. contains variables that **have a defined value** before the program starts executing. Is writable 

`.rodata`: (Read-Only Data) contains constant values and strings that should not be modified during execution. Like `.data` but provides an extra layer of protection against accidental modification.


### References: 

- [Making pwd Command From Scratch in Assembly - Nir Lichtman](https://www.youtube.com/watch?v=zKsj7XUFtlM)
