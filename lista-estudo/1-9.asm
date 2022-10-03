#Faça um programa que calcule a seguinte equação:
#y = 9x + 7
#	-------
#	2x + 8
#Armazene x em $t1, com a instrução addi $t1, $zero, x, substituindo x pelo valor
#desejado, e sempre que precisar o valor de x, utilize o valor armazenado no
#registrador $t1.
#Armazene o quociente da divisão em $t2 e o resto em $t3.
#Responda o que acontece quando x = -4
# 34 / 14

.data
	x: .word -4
	y: .space 4
	
.text
	lui $t0, 0x1001
	lw $t1, 0($t0)		# x
	
	# PARCIAIS
	sll $t2, $t1, 3		# 8x
	add $t2, $t2, $t1	# 9x
	addi $t2, $t2, 7	# 9x + 7
	
	sll $t3, $t1, 1		# 2x
	addi $t3, $t3, 8	# 2x + 8
	 
	div $t2, $t3
	mflo $t4
	mfhi $t5
	
	sw $t4, 4($t0)
	sw $t5, 8($t0)