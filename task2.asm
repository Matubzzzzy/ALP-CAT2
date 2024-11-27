; Task 2: Array Manipulation with Looping and Reversal

section .data
    arr db 1, 2, 3, 4, 5 ; Example array
    arr_size equ 5

section .text
    global _start

_start:
    ; Initialize pointers
    lea rsi, [arr]       ; Start of the array
    lea rdi, [arr + arr_size - 1] ; End of the array

reverse:
    cmp rsi, rdi
    jge done_reversal

    ; Swap the values
    mov al, [rsi]
    mov bl, [rdi]
    mov [rsi], bl
    mov [rdi], al

    ; Update pointers
    inc rsi
    dec rdi
    jmp reverse

done_reversal:
    ; Exit program
    mov rax, 60
    xor rdi, rdi
    syscall
