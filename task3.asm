; Task 3: Modular Program with Subroutines for Factorial Calculation

section .data
    num dq 5      ; Number to calculate factorial for
    result dq 1   ; Store the result

section .text
    global _start

_start:
    mov rdi, [num] ; Pass number to factorial subroutine
    call factorial

    ; Store the result
    mov [result], rax

    ; Exit program
    mov rax, 60
    xor rdi, rdi
    syscall

factorial:
    ; Input: rdi (number)
    ; Output: rax (factorial result)

    cmp rdi, 1
    jle base_case

    push rdi        ; Save current value
    dec rdi         ; Decrement number
    call factorial  ; Recursive call
    pop rbx         ; Restore current value
    imul rax, rbx   ; Multiply result
    ret

base_case:
    mov rax, 1
    ret
