; Task 4: Data Monitoring and Control Using Port-Based Simulation

section .data
    sensor_value dq 50       ; Example sensor value
    motor_status db 0        ; 0: OFF, 1: ON
    alarm_status db 0        ; 0: OFF, 1: ON

section .text
    global _start

_start:
    mov rax, [sensor_value]

    ; Check sensor value and decide actions
    cmp rax, 75
    jg high_level
    cmp rax, 50
    jl low_level

moderate_level:
    ; Stop motor
    mov byte [motor_status], 0
    mov byte [alarm_status], 0
    jmp exit

high_level:
    ; Trigger alarm
    mov byte [alarm_status], 1
    mov byte [motor_status], 0
    jmp exit

low_level:
    ; Start motor
    mov byte [motor_status], 1
    mov byte [alarm_status], 0

exit:
    mov rax, 60
    xor rdi, rdi
    syscall
