#Faça um programa que calcule a seguinte equação:
#y = 32ab - 3a + 7b - 13
#Utilize endereços de memória para armazenar o valore de a, b e o resultado y. Cada
#valor deve ocupar 4 bytes na memória (.word), assim como para o resultado (.space
#4). Utilize as três primeiras posições da memória .data para armazenar,
#consecutivamente, a, b e y, iniciando o código com:

.data
	a: .word 3
	b: .word 5
	y: .space 4
	
.text
	lui $t0, 0x1001
	lw $t1, 0($t0)		# a
	lw $t2, 0x4($t0)	# b
	
	
	# PARCIAIS
	mult $t1, $t2
	mflo $t3			# a*b
	sll $t3, $t3, 5		# 32*ab
	
	sll $t4, $t1, 1		# 2a
	add $t4, $t4, $t1	# 3a
	
	sll $t5, $t2, 3		# 8b
	sub $t5, $t5, $t2	# 7b
	
	addi $t6, $zero, 13
	
	sub $t7, $t3, $t4
	add $t7, $t7, $t5
	sub $t7, $t7, $t6
	
	sw $t7, 0x8($t0)