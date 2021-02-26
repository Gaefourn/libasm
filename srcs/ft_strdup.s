global _ft_strdup

section .text
extern _malloc
extern _ft_strlen
extern _ft_strcpy

_ft_strdup:
		push rdi
		call _ft_strlen
		mov rdi, rax
		mov rbx, rax
		call _malloc
		pop rdi
		mov rsi, rdi
		mov rdi, rax
		call _ft_strcpy
		mov BYTE[rax + rbx], 0
		ret
