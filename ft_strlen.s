bits 64

section .text
global ft_strlen

ft_strlen:
    test rdi, rdi               ; Vérifie si rdi == NULL
    jz .null_pointer            ; Saute si NULL

    mov     rax, 0              ; initialisation compteur
.loop:
    ; on regarde le caractère à l’adresse (rdi + rax)
    cmp     byte [rdi + rax], 0 ; est-ce que c’est la fin de la chaîne ?
    je      .end                ; si oui, on saute à la fin
    inc     rax                 ; sinon on passe au suivant
    jmp     .loop               ; et on recommence
.end:
    ret

.null_pointer:
    xor rax, rax
    ret

section .note.GNU-stack noalloc noexec nowrite progbits