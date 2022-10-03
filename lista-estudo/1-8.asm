#Faça um programa que calcule a seguinte equação:
#y = 3x^2 - 5x + 13
#Armazene x no registrador $t5 com a instrução addi $t5, $zero, x, substituindo x pelo
#valor desejado, e sempre que precisar o valor de x, utilize o valor armazenado no
#registrador $t5.
#Armazene o resultado y no registrador $t6.
#Faça teste com diferentes valores positivos e negativos de x.
#Faça um teste substituindo a primeira instrução addi por uma instrução ori
#equivalente e responda, nos comentários, qual o resultado quando são usados números
#positivos e números negativos.

.data
	x: .word -2
	y: .space 4
	
.text
	lui $t0, 0x1001
	lw $t5, 0($t0)		# x
	
	# PARCIAIS
	ori $t3, $zero, 13	# 13
	sll $t2, $t5, 2		
	add $t2, $t2, $t5	# 5x
	mult $t5, $t5
	mflo $t1			# x^2
	sll $t7, $t1, 1		# 2x^2
	add $t1, $t7, $t1	# 3x^2
	
	sub $t6, $t1, $t2
	add $t6, $t6, $t3
	
	sw $t6, 0x4($t0)
	
	