global func

section .text

func:
    mov rax, 1
    mov rcx, rdi
    cmp rcx, 0
    jle .e

.l:
    imul rax, rcx
    dec rcx
    cmp rcx, 0
    jg .l

.e:
    ret
