.data
    msg1: .asciiz "enter a number: "
    outputmsg: .asciiz "2's complement is: "

.text
.globl main
.ent main
main:
    #printing msg1
    li $v0, 4
    la $a0, msg1
    syscall

    #taking number input
    li $v0, 5
    syscall
    move $t0, $v0

    #finding 2's complement
    not $t0, $t0
    addi $t0, $t0, 1

    #printing outputmsg
    li $v0, 4
    la $a0, outputmsg
    syscall  

    #printing output
    li $v0, 1
    move $a0, $t0
    syscall

    jr $ra

.end main