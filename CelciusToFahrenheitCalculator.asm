.data
    cTemp: .word 32
    fTemp: .word 0
    res: .asciiz "The temperature in Fahrenheit is: "

.text
.globl main
.ent main
main:
    #loading centigrade temperature from memory
    la $t0, cTemp
    lw $t1, 0($t0)

    #calculating the fahrenheit temperature
    li $t2, 9
    mul $t1, $t1, $t2
    addi $t1, $t1, 2 #to round off to an integer
    li $t3, 5
    div $t1, $t1, $t3
    addi $t1, $t1, 32

    #storing fahrenheit temperature into memory
    la $t2, fTemp
    sw $t1, 0($t2)

    #printing res
    li $v0, 4
    la $a0, res
    syscall

    #printing the output
    li $v0, 1
    move $a0, $t1
    syscall

    jr $ra
.end main


