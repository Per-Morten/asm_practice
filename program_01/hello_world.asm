; Linux 64-bit only.
; Write "Hello, World" to stdout

message:
    db  "Hello, World", 10

    global _start
    section .text
    
_start:
    ; write(1, message, 13)
    mov rax, 1          ; 1 is identifier for write system call
    mov rdi, 1          ; 1 is file handle for stdout
    mov rsi, message    ; Address to message string
    mov rdx, 13         ; The number of bytes to write.
    syscall             ; invoke the write "function"

    ; exit(0)
    mov eax, 60         ; 60 is system call to exit.
    xor rdi, rdi        ; xor to get 0
    syscall             ; invoke the exit "function"

