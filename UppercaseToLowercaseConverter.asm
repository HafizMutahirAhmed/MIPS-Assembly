.data

    inputmsg: .asciiz "Enter uppercase alphabet followed by enter: "
    outputmsg: .asciiz "\nYou entered: "

.text
.globl main
.ent main
main:
    #printing inputmsg
    li $v0, 4
    la $a0, inputmsg
    syscall

    #taking character input
    li $v0, 12
    syscall
    move $t0, $v0

    #converting to lowercase
    addi $t0, $t0, 32

    #printing outputmsg
    li $v0, 4
    la $a0, outputmsg
    syscall

    #printing the output
    li $v0, 11
    move $a0, $t0
    syscall

    jr $ra

.end main

    

    



