global main
extern printf

section .data
	message db "hello world", 10, 0 ; \n: 10 \0: 0

section .text
main:
	push	dword message
	mov	eax, [esp]
	mov	ecx, 11 ; 11 characters
	jmp	obfus

obfus:
	xor	[eax+ecx-1], byte 0x52 ; little endian
	dec	ecx
	jne	obfus
	push	dword message
	call	printf

end:
	mov	eax, 1
	mov	ebx, 0
	int	80h
