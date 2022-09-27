.data
	n:		.word 2
	resultado: 	.space 4
	
.text
	# t9 = resultado
	# t8 = flag de pulo
	lui $t1, 0x1001 # Inicializa o reg base de t1
	lw $t2, 0($t1)	# condição de final
	addi $t9, $zero, 1 # resultado
	
	slti $t8, $t2, 2
	bne $t8, $zero, fim	# caso especial (0ou1)
	
	addi $t3, $zero, 2 # ir do 2 até o n
	addi $t4, $t3, 1
	fat: 	beq $t3, $t2, fim
		mult $t3, $t4
		m
		j fat
	fim: sll $zero, $zero, 0
		
	 