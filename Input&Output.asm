# .data
#     msg1: .asciiz "Enter  the 1st number: "
#     msg2: .asciiz "Enter the 2nd number: "
#     msg3: .asciiz "Result: "

# .text

# .globl main
# .ent main

# main:
#     li $v0, 4
#     la $a0, msg1
#     syscall

#     li $v0, 5
#     syscall
#     move $t0, $v0

#     li $v0, 4
#     la $a0, msg2
#     syscall

#     li $v0, 5
#     syscall
#     move $t1, $v0 

#     add $t2, $t0, $t1

#     li $v0, 4
#     la $a0, msg3
#     syscall  

#     li $v0, 1
#     move $a0, $t2
#     syscall

#     jr $ra
    
# .end main

.data 
    msg1: .asciiz "Enter your name: "
    msg2: .asciiz "Enter your age: "
    name: .space 100
    outputmsg1: .asciiz "****Welcome "
    outputmsg2: .asciiz "! You are "
    outputmsg3: .asciiz " years old now. Stay blessed****"
    

.text
.globl main
.ent main

main:

    li $v0, 4
    la $a0, msg1
    syscall

    li $v0, 8
    la $a0, name       # buffer to store input
    li $a1, 100        # max number of characters
    syscall
    move $t0, $v0

    li $v0, 4
    la $a0, msg2
    syscall

    li $v0, 5
    syscall
    move $t1, $v0

    li $v0, 4
    la $a0, outputmsg1
    syscall

    li $v0, 4
    la $a0, name
    syscall  

    li $v0, 4
    la $a0, outputmsg2
    syscall

    li $v0, 1
    move $a0, $t1
    syscall

    li $v0, 4
    la $a0, outputmsg3
    syscall
jr $ra
.end main