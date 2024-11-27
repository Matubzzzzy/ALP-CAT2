; Task 1: Control Flow and Conditional Logic

section .data
    msg_positive db "POSITIVE", 0
    msg_negative db "NEGATIVE", 0
    msg_zero db "ZERO", 0

section .bss
    number resb 1

section .text
    global _start

_start:
    ; Prompt for user input (simulate input via register for simplicity)
    mov rax, -5 ; Simulated input value

    ; Check if the number is positive, negative, or zero
    cmp rax, 0
    jl negative
    je zero
    jg positive

positive:
    mov rdi, msg_positive
    call print_string
    jmp exit

negative:
    mov rdi, msg_negative
    call print_string
    jmp exit

zero:
    mov rdi, msg_zero
    call print_string

exit:
    mov rax, 60
    xor rdi, rdi
    syscall

print_string:
    mov rax, 1
    mov rdi, 1
    mov rsi, rdi
    mov rdx, 8
    syscall
    ret