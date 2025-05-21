.data 
    memptr: .word 3 5 0

.text
.globl main
.ent main
main:
la $t0, memptr
lw $t1, 0($t0)
lw $t2, 4($t0)
add $t3, $t1, $t2
sw $t3, 8($t0) 
jr $ra
.end main