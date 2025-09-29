section .data
    sumMsg:    db 'Sum of 2+3: '
    sumLen:    equ $-sumMsg

    multMsg:   db 'Product of 2x3: '
    multLen:   equ $-multMsg

    newline:   db 10

    result     db 0

section .text
    global _start

_start:
    ; ===== Addition =====
    mov eax, 4
    mov ebx, 1
    mov ecx, sumMsg
    mov edx, sumLen
    int 0x80

    mov al, 2
    add al, 3
    add al, '0'
    mov [result], al

    mov eax, 4
    mov ebx, 1
    mov ecx, result
    mov edx, 1
    int 0x80

    ; Newline
    mov eax, 4
    mov ebx, 1
    mov ecx, newline
    mov edx, 1
    int 0x80

    ; ===== Multiplication =====
    mov eax, 4
    mov ebx, 1
    mov ecx, multMsg
    mov edx, multLen
    int 0x80

    mov al, 2
    mov bl, 3
    mul bl
    add al, '0'
    mov [result], al

    mov eax, 4
    mov ebx, 1
    mov ecx, result
    mov edx, 1
    int 0x80

    ; Newline
    mov eax, 4
    mov ebx, 1
    mov ecx, newline
    mov edx, 1
    int 0x80

    ; Exit
    mov eax, 1
    mov ebx, 0
    int 0x80