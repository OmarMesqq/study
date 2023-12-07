global _start: 

section .data

buffer: 
    times 256 db 0 ; allocate a 256 byte block of memory initialized to zero

section .text 
    _start: ; entry point
    mov rax, 79 
    mov rdi, buffer 
    mov rsi, 256
    syscall 
    
    mov rax, 1
    mov rdi, 1 
    mov rsi, buffer 
    mov rdx, 256
    syscall 
    
    ; jmp $
    mov rax, 60
    mov rdi, 0
    syscall
