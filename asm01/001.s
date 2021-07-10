.global _start

.section .text

_start:
    mov r11, #5

loop:
    cmp r11, #0
    beq exit

    bl print_hello

    sub r11, r11, #1
    b loop

print_hello:
    mov r7, #0x04
    mov r0, #1
    ldr r1, =message
    mov r2, #12

    swi 0

    bx lr

exit:
    mov r7, #0x01
    mov r0, #13
    swi 0

.section .data
message: .ascii "Hello world\n"
