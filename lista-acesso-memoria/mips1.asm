.data
	a: .word 3
	b: .word 5
	y: .space 4
	
.text
	lui $t0, 0x1001
	lw $t1, 4($t0) # b
	lw $t2, 0($t0) # a
	
	addi $t3, $zero, 7
	addi, $t4, $zero, -13    #
	addi $t5, $zero -3
	addi $t7, $zero 32
	
	mult $t1, $t3
	mflo $t3 # 7*b ###
	
	mult $t2, $t5
	mflo $t5 # -3*a 
	
	mult $t1, $t2
	mflo $t6 # a*b
	
	sll $t6, $t6, 6
	mult $t6, $t7
	mflo $t6 # a*b*32
	
	add $t8, $t4, $t3
	add $t8, $t8, $t5
	add $t8, $t8, $t6
	
	sw $t8, 8($t0)
	
	
	
	