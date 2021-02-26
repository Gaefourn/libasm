global _ft_strcpy

_ft_strcpy:
		xor rax, rax
		push rdi

while:
		mov cl, BYTE[rsi + rax]
		cmp cl, 0
		je end
		mov BYTE[rdi], cl
		inc rax
		inc rdi
		jmp while

end:
		pop rdi
		mov rax, rdi
		ret
