.data
    msg: .asciiz "Enter the number(n) to calculate its factorial: "
    outputmsg: .asciiz "Factorial is: "

.text
.globl main
.ent main
main:
    #printing msg
    li $v0, 4
    la $a0, msg
    syscall

    #taking n input
    li $v0, 5
    syscall
    move $t0, $v0

    #initializing count(t1) = 1
    li $t1, 1

    #initializing total(t2) = 0
    li $t2, 1
LOOP:  
    beq $t1, $t0, ENDLOOP  #if count == n: endloop
    addi $t1, $t1, 1 
    mul $t2, $t2, $t1
    j LOOP
ENDLOOP:
    #printing outputmsg
    li $v0, 4
    la $a0, outputmsg
    syscall

    #printing output
    li $v0, 1
    move $a0, $t2
    syscall

    jr $ra
.end main