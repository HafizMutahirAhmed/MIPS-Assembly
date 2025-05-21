.data

    msg1: .asciiz "Enter your roll number: "
    msg2: .asciiz "Enter your friend's roll number: "
    outputmsg: .asciiz "Output is: "

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

    #taking friend's roll number input
    li $v0, 5
    syscall
    move $t1, $v0

    #calculating the product
    mul $t2, $t0, $t1

    #printing outputmsg
    li $v0, 4
    la $a0, outputmsg
    syscall

    #printing the output
    li $v0, 1
    move $a0, $t2
    syscall

    jr $ra
.end main
