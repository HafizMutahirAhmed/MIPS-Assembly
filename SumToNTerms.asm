.data
    msg: .asciiz "Enter the number(n): "
    outputmsg: .asciiz "Sum to n term is: "

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

    #initializing count(t1) = 0
    li $t1, 0

    #initializing total(t2) = 0
    li $t2, 0  
LOOP:  
    beq $t1, $t0, ENDLOOP  #if count == n: endloop
    addi $t1, $t1, 1 
    add $t2, $t2, $t1
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