bits 64

section .text
global ft_strcpy

ft_strcpy:
    test rdi, rdi           ; Vérifie si rdi == NULL
    jz .null_pointer        ; Saute si NULL

    test rsi, rsi           ; Vérifie si rdi == NULL
    jz .null_pointer        ; Saute si NULL

    mov rbx, rdi            ; Sauvegarder l'adresse de destination pour le retour
    mov rcx, 0              ; Index/compteur

.loop:
    mov al, [rsi + rcx]
    mov [rdi + rcx], al
    test al, al         ; Vérifie si '\0'
    jz .end
    inc rcx
    jmp .loop

.end:
    mov rax, rbx
    ret

.null_pointer:
    xor rax, rax
    ret

section .note.GNU-stack noalloc noexec nowrite progbits