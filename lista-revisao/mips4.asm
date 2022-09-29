.data
	n: 			.word 4		# valor de n
	resultado:	.space 4 	# espaço do resultado
	
.text
	lui $t0, 0x1001			# reg. base
	lw $t1, 0($t0)			# carregar N
	addi $t2, $zero, 1		# acumulador
	addi $t3, $zero, 2		# multiplicador atual
	addi $t4, $t1, 1		# N + 1 (para comparar a hora de sair
	addi $t5, $zero, 0		# Flag de jump
	addi $t6, $zero, 0		# auxiliar para movimentar a multiplação
	
	slt  $t5, $t1, $t3		# compara se cai no caso de N < 2
	bne $t5, $zero, fim
	
	fat:
	beq $t4, $t3, fim		# se o valor atual tiver passado do N (ou seja, atual == N + 1), pula para o fim
	mult $t3, $t2			# -----Multiplicar o atual pelo acumulador--------
	mfhi $t2				#
	sll $t2, $t2, 16		#
	mflo $t6				#
	or $t2, $t2, $t6		#-------------------------------------------------
	addi $t3, $t3, 1		# incrementa o valor atual
	j fat
	
	fim:
	sw $t2, 4($t0)
	
	
	