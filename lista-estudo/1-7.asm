#Escreva um programa que calcule o valor de
#4x - 2y + 3z (armazene os valores de x, y e z em $t1, $t2 e $t3,
#respectivamente) e coloque o resultado em $t7. Faça testes com alguns
#valores diferentes de x, y e z. Utilize apenas instruções já vistas na
#disciplina.
# (USANDO ACESSO)

# 8 - 4 + 9 = 13

.data
	x: .word 2
	y: .word 2
	z: .word 3
	
.text
	lui $t0, 0x1001
	
	# VARIAVEIS
	lw $t4, 0($t0)		# x
	lw $t5, 0x4($t0)	# y
	lw $t6, 0x8($t0)	# z
	
	# PARCIAIS
	sll $t4, $t4, 2		# 4x
	sll $t5, $t5, 1		# 2x
	sll $t8, $t6, 1		# 2z
	add $t6, $t8, $t6	# 2z + z = 3z
	
	# JUNÇÃO
	sub $t7, $t4, $t5
	add $t7, $t7, $t6
	
	