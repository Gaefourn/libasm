global _ft_strcmp

_ft_strcmp:
		xor rax, rax
		cmp rdi, 0
		je end
		jmp while

while:
		mov r9b, BYTE[rsi + rax]
		cmp r9b, BYTE[rdi + rax]
		jne end
		cmp r9b, 0
		je equal
		cmp BYTE[rdi + rax], 0
		inc rax
		jmp while

end:
		cmp r9b, BYTE[rdi + rax]
		jle sup
		mov rax, -1
		ret

sup:
		mov rax, 1
		ret

equal:
		mov rax, 0
		ret
