section .text
global _start
_start:




	mov rax , 4
	mov rbx , 10
	mov rdi , 5
	mov rsi , 6
	call add
	mov rbx , rax
	jmp done


add:
	push rbp 
	mov rbp , rsp 
	mov rax , rdi
	add rax , rsi
	pop rbp 
	ret 


done:
	mov rax , 60
	mov rdi , 0
	syscall





