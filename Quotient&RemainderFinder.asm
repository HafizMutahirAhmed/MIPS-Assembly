.data

    msg1: .asciiz "Enter your roll number: "
    msg2: .asciiz "Enter divisor: "
    outputmsg1: .asciiz "Quotient is "
    outputmsg2: .asciiz " and Remainder is "

.text
.globl main
.ent main
main:
    #printing msg1
    li $v0, 4
    la $a0, msg1
    syscall

    #taking roll number input
    li $v0, 5
    syscall
    move $t0, $v0

    #printing msg2
    li $v0, 4
    la $a0, msg2
    syscall   

    #taking quotient input
    li $v0, 5
    syscall
    move $t1, $v0

    #calculating output
    div $t1, $t0, $t1
    mflo $t2 #quotient
    mfhi $t3 #remainder

    #printing outputmsg1
    li $v0, 4
    la $a0, outputmsg1
    syscall

    #print quotient
    li $v0, 1
    move $a0, $t2
    syscall

    #printing outputmsg2
    li $v0, 4
    la $a0, outputmsg2
    syscall   

    #print remainder
    li $v0, 1
    move $a0, $t3
    syscall

    jr $ra
.end main
