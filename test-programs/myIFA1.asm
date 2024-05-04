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
	sub rsp, 128
	mov esi, 2
	mov [rbp-8], esi
	mov esi, 4
	mov [rbp-64], esi
	mov esi, [rbp-8]
	mov [rbp-56], esi
	mov edi, [rbp-64]
	mov eax, [rbp-56]
	add eax, edi
	mov [rbp-56], eax
	mov esi, 0
	mov [rbp-16], esi
	mov edi, [rbp-16]
	mov eax, [rbp-56]
	cmp eax, edi
	mov [rbp-56], eax
	jz lab1262
	jmp lab1264
lab1262:	mov esi, 1
	mov [rbp-48], esi
	mov esi, [rbp-48]
	lea rdi, [rel int_format]
	mov eax, 0
	call _printf
	mov rax, 0
	jmp finish_up
lab1264:	mov esi, 0
	mov [rbp-40], esi
	mov esi, [rbp-40]
	lea rdi, [rel int_format]
	mov eax, 0
	call _printf
	mov rax, 0
	jmp finish_up
finish_up:	add rsp, 128
	leave 
	ret 
