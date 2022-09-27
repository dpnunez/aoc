.data
	n: .word  3
.text
	lui $t0, 0x1001 			# registrador base
	addi $t1, $zero, 0			# index
	addi $t2, $zero, 1			# acumulador
	addi $t3, $zero, 0			# valor da iteração atual
	lw $t4, 0($t0)				# n
	addi $t7, $t4, 1			# n + 1
	addi $t5, $zero, 0			# i/2
	
	loop:	beq $t1, $t7, fim
		add $t3, $zero, $t4		# t3 = n
		sra $t5, $t1, 1			# t5 = i / 2
		add $t3, $t3, $t5		# t3 = t3 + t5
		mult $t2, $t3			# acumulador * valor atual
		mfhi $t2			# Proximas linhas realocam o high e low para o acumulador
		sll $t2, $t2, 16
		mflo $t6
		or $t2, $t2, $t6
		
		addi $t1, $t1, 1
		j loop
	fim:
		sw $t2, 4($t0)
	