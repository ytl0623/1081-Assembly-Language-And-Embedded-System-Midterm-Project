        .data
print:  .asciz "*****Print Name*****\n"
team:   .asciz "Team 14\n"
one:    .asciz "Yu-Ting Liu\n"
two:    .asciz "Yen-Lung Chen\n"
three:    .asciz "Yi-Hung Lu\n"
eprint:  .asciz "*****End Print*****\n"

        .text
        .globl  name


name:   stmfd   sp!, {lr}

        ldr     r0, =print
        bl      printf
        mov     r0, #0

        ldr     r0, =team

        bl      printf



        mov     r0, #0

        ldr     r1, =one
        mov     r0, r1
        bl      printf


        ldr     r2,=two
        mov     r0, r2
        bl      printf


        ldr     r3,=three
        mov     r0, r3
        bl      printf


        ldr     r0, =eprint
        bl      printf


        ldr     r0,=team
        mov     r8, r0

        ldr     r0,=one
        mov     r9, r0

        ldr     r0,=two
        mov     r10, r0

        ldr     r0,=three
        mov     r11, r0


        sbcs    r0,r3,r4
        ldmfd   sp!, {lr}
        mov     pc, lr



