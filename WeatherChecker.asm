.data

    msg: .asciiz "Enter temperature of the day: "
    hotmsg: .asciiz "It is hot today"
    pleasantmsg: .asciiz "Pleasant weather"
    coldmsg: .asciiz "It is cold today"

.text
.globl main
.ent main
main:
    #printing msg
    li $v0, 4
    la $a0, msg
    syscall

    #taking temperature input
    li $v0, 5
    syscall
    move $t0, $v0

    slti $t1, $t0, 21
    bne $t1, $0, else

    slti $t2, $t0, 31
    bne $t2, $0, elif

    #printing hotmsg
    li $v0, 4
    la $a0, hotmsg
    syscall
    j END
elif:
    #printing pleasantmsg
    li $v0, 4
    la $a0, pleasantmsg
    syscall 
    j END
else:
    #printing coldmsg
    li $v0, 4
    la $a0, coldmsg
    syscall 
END:
    jr $ra
.end main