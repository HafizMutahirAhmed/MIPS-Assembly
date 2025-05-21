.data
    msg1: .asciiz "Enter your roll number: "
    msg2: .asciiz "Enter your friend's roll number"
    out: .asciiz "The average is: "

.text
.globl main
.ent main
main:
    li $v0, 4
    la $a0, msg1
    syscall

    li $v0, 5
    syscall
    move $a0, $v0

    li $v0, 4
    la $a0, msg2
    syscall

    li $v0, 5
    syscall
    move $a1, $v0

    li $a2, 3

    jal AVERAGE
    move $t0, $v0

    li $v0, 4
    la $a0, out
    syscall

    li $v0, 1
    move $a0, $t0
    syscall

.end main

.globl AVERAGE
.ent AVERAGE
AVERAGE:
    add $t0, $a0, $a1
    add $t0, $t0, $a2
    li $t1, 3
    div $t0, $t1
    mflo $v0
    jr $ra
.end AVERAGE