[BITS 64]
; nasm ft_strcmp.s -o ft_strcmp.o -fmacho64 && gcc main.c ft_strcmp.o && ./a.out
global _ft_strcmp

_ft_strcmp:
		mov rcx, 0
		loop:
			cmp byte [rsi+rcx], 0
			je ok
			mov al, [rdi+rcx]
			cmp byte [rsi+rcx], al
			jne ko
			inc rcx
			jmp loop
		ok:
			mov rax, 1
			ret
		ko:
			mov rax, 0
			ret
