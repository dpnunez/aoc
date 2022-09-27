.data
	a: .word 19
	b: .word 9
	c: .word 6
	mediana: .space 4
.text

	lui $t0, 0x1001			# Base
	addi $t1, $zero, 0		# Acumulador
	addi $t3, $zero, 0		# Resultado parcial
	addi $t4, $zero, 3		# Quantidade de parciais
	addi $t5, $zero, 0		# variavel de moviemento
	
	lw $t3, 0($t0)
	div $t3, $t4
	mflo $t3
	add $t1, $t1, $t3
	
	addi $t0, $t0, 4
	
	lw $t3, 0($t0)
	div $t3, $t4
	mflo $t3
	add $t1, $t1, $t3
	
	addi $t0, $t0, 4
	
	lw $t3, 0($t0)
	div $t3, $t4
	mflo $t3
	add $t1, $t1, $t3
	
	addi $t0, $t0, 4
	
	sw $t1, 0($t0)
	
