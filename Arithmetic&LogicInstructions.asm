.data
    msg1: .asciiz "Enter some integer value for x followed by enter: "
    msg2: .asciiz "Enter some integer value for y followed by enter: "
    msg3: .asciiz "Enter some integer value for z followed by enter: "
    outputmsg: .asciiz "Result of x-y+z-12 is "

.text
.globl main
.ent main

main:
    #printing message 1
    li $v0, 4
    la $a0, msg1
    syscall

    #taking x input
    li $v0, 5
    syscall
    move $t0, $v0

    #printing message 2
    li $v0, 4
    la $a0, msg2
    syscall

    #taking y input
    li $v0, 5
    syscall
    move $t1, $v0

    #printing message 3
    li $v0, 4
    la $a0, msg3
    syscall

    #taking z input
    li $v0, 5
    syscall
    move $t2, $v0

    #calculating the result
    sub $t3, $t0, $t1
    add $t3, $t3, $t2
    addi $t3, $t3, -32

    #printing the output
    li $v0, 4
    la $a0, outputmsg
    syscall

    li $v0, 1
    move $a0, $t3
    syscall

    jr $ra

.end main