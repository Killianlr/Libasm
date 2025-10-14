bits 64

section .text
global ft_strcpy

ft_strcpy:
    mov rax, rdi    ; Sauvegarder l'adresse de destination pour le retour
    mov rcx, 0      ; Index/compteur

.loop:
    cmp byte [rsi + rcx], 0
    je  .end
    mov al, [rsi + rcx]    ; Charger depuis source
    mov [rdi + rcx], al    ; Stocker vers destination
    inc rcx
    jmp .loop

.end:
    mov al, [rsi + rcx]
    mov [rdi + rcx], al
    ret