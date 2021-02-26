global _ft_strlen

_ft_strlen:
		xor rax, rax
while:
	mov	cl, BYTE[rdi + rax]
	cmp	cl, 0
	je	end
	inc	rax
	jmp while
end:
	ret
