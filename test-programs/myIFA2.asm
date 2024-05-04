section .data
	int_format db "%ld",10,0


	global _main
	extern _printf
section .text


_start:	call _main
	mov rax, 60
	xor rdi, rdi
	syscall


_main:	push rbp
	mov rbp, rsp
	sub rsp, 80
	mov esi, 2
	mov [rbp-8], esi
	mov esi, 2
	mov [rbp-40], esi
	mov esi, 3
	mov [rbp-32], esi
	mov esi, [rbp-40]
	mov [rbp-24], esi
	mov edi, [rbp-32]
	mov eax, [rbp-24]
	add eax, edi
	mov [rbp-24], eax
	mov esi, [rbp-8]
	mov [rbp-16], esi
	mov edi, [rbp-24]
	mov eax, [rbp-16]
	imul eax, edi
	mov [rbp-16], eax
	mov rax, [rbp-16]
	jmp finish_up
finish_up:	add rsp, 80
	leave 
	ret 

