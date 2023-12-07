global add_func:

section .text

add_func: 
    mov rax, rdi
    add rax, rsi
    ret 
    