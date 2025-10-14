bits 64

section .text
global ft_strcmp

ft_strcmp:
    mov rax, 0

.loop:
    mov al, [rsi + rax]
    cmp byte al, [rdi + rax]
    jne .end
    inc rax
    jmp .loop

.end:
    mov rax, [rdi + rax]
    sub rax, al
    ret