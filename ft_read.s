bits 64

section .text
global ft_read
extern __errno_location    ; Fonction qui retourne l'adresse de errno

ft_read:
    test rsi, rsi           ; Vérifie si rdi == NULL
    jz .null_pointer

    mov rax, 0
    syscall
    cmp rax, 0             ; Vérifie si erreur (< 0)
    jl .error              ; Si négatif, gérer l'erreur
    ret                    ; Sinon retourner normalement

.error:
    neg rax                ; Convertit l'erreur en positif (14 au lieu de -14)
    push rbx
    mov rbx, rax           ; Sauvegarde le code d'erreur dans rdi
    call __errno_location  ; rax = adresse de errno
    mov [rax], rbx         ; *errno = code d'erreur
    pop rbx
    mov rax, -1            ; Retourne -1
    ret
	
.null_pointer:
    xor rax, rax
    ret
section .note.GNU-stack noalloc noexec nowrite progbits
