bits 64

section .text
global ft_strdup
extern	malloc
extern	ft_strlen
extern	ft_strcpy
extern __errno_location

ft_strdup:
	push rbx

	call ft_strlen

	inc rax
	mov rbx, rdi
	mov rdi, rax
	call malloc
	test rax, rax
	jz .malloc_failed

	mov rsi, rbx
	mov rdi, rax
	call ft_strcpy

	pop rbx
	ret


.malloc_failed:
	xor rax, rax
	pop rbx
	ret

section .note.GNU-stack noalloc noexec nowrite progbits

