.data

    msg: .asciiz "Enter your roll number: "
    evenmsg: .asciiz "The number is even"
    oddmsg: .asciiz "The number is odd"

.text
.globl main
.ent main
main:
    #printing msg
    li $v0, 4
    la $a0, msg
    syscall

    #taking roll number input
    li $v0, 5
    syscall
    move $t0, $v0

    #result calculation
    li $t2, 2
    div $t1, $t0, $t2
    mfhi $t3 #remainder

    beq $t3, $0, even

    #printing oddmsg
    li $v0, 4
    la $a0, oddmsg
    syscall
    
    j END
even:
    #printing evenmsg
    li $v0, 4
    la $a0, evenmsg
    syscall
END:
    jr $ra

.end main