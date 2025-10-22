bits 64

section .text
global ft_strcmp

ft_strcmp:
    test rdi, rdi                   ; Vérifie si rdi == NULL
    jz .null_pointer                ; Saute si NULL
    
    xor rax, rax                    ; rax = 0 (index)

.loop:
    movzx rcx, byte [rdi + rax]     ; Charge 1er caractère (s1) dans rcx
    movzx rdx, byte [rsi + rax]     ; Charge 2ème caractère (s2) dans rdx
    
    cmp rcx, rdx                    ; Compare les deux caractères
    jne .diff                       ; Si différents, aller à .diff
    
    test rcx, rcx                   ; Vérifier si c'est '\0'
    jz .equal                       ; Si oui, les chaînes sont égales
    
    inc rax                         ; Index suivant
    jmp .loop                       ; Continuer la boucle

.diff:
    sub rcx, rdx                    ; rcx = s1[i] - s2[i]
    mov rax, rcx                    ; Retourner la différence
    ret

.equal:
    xor rax, rax                    ; Retourner 0
    ret

.null_pointer:
    xor rax, rax
    ret

section .note.GNU-stack noalloc noexec nowrite progbits