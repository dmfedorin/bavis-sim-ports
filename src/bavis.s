        .ifndef BAVIS_S__
        .equ    BAVIS_S__, 1

        .section .text

        .globl main
main:
                mov $60, %rax
                mov $0, %rdi

                syscall

_prompt:
                mov $1, %rax
                mov $0, %rdi
                mov $_prompt_text, %rsi
                mov $20, %rdx

                syscall

                ret

        .section .data

_prompt_text: /* length 20 */
        .asciz "[BS] enter 'bavis': "

_bavises:      .quad 0
_gold_bavises: .quad 0
_mult:         .quad 0

        .endif
