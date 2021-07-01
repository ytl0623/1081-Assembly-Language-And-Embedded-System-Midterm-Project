    .data
functionOne:    .asciz "Function1: Name\n"
functionTwo:    .asciz "Function2: ID\n"
functionmain:          .asciz "Main Function:\n"
print:  .asciz "*****Print All*****\n"
eprint:  .asciz "*****End Print*****\n"
x:    .asciz "%s\n"
n:    .asciz "%d   "
ans:    .asciz "ID Summation = %d\n"

    .text
    .globl  main


main:   stmfd sp!, {lr}
        ldr     r0, =functionOne
        bl      printf

        bl   name

        ldr     r0, =functionTwo
        bl      printf

        bl   ID

        ldr     r0, =functionmain
        bl      printf

        ldr     r0, =print
        bl      printf

        ldr     r0,=x
        mov     r1,r8
        bl      printf

        ldr     r0,=n
        mov     r1,r4
        bl      printf

        ldr     r0,=x
        mov     r1,r9
        bl      printf

        ldr     r0,=n
        mov     r1,r5
        bl      printf

        ldr     r0,=x
        mov     r1,r10
        bl      printf

        ldr     r0,=n
        mov     r1,r6
        bl      printf

        ldr     r0,=x
        mov     r1,r11
        bl      printf

        ldr     r0,=ans
        mov     r1,r7
        ldr     r1,[r1]
        bl      printf

        ldr     r0, =eprint
        bl      printf
        ldmfd sp!,{lr}
        mov pc, lr

