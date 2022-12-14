#Faça um programa que calcule a seguinte equação:
#y = 3x2 - 5x + 13
#Armazene x no registrador $t5 com a instrução addi $t5, $zero, x, substituindo x pelo
#valor desejado, e sempre que precisar o valor de x, utilize o valor armazenado no
#registrador $t5.
#Armazene o resultado y no registrador $t6.
#Faça teste com diferentes valores positivos e negativos de x.
#Faça um teste substituindo a primeira instrução addi por uma instrução ori
#equivalente e responda, nos comentários, qual o resultado quando são usados números
#positivos e números negativos.

.text 
	# t0 = resultado
	# t1 = 3x^2
	# t2 = 5x
	# t3 = 13
	# t4 = x
	
	addi $t4, $zero, -2
	
	ori $t3, $zero, 13
	
	sll $t2, $t4, 2
	add, $t2, $t2, $t4
	
	mult $t4, $t4
	mflo $t1
	
	sll $t5, $t1, 1
	add $t1, $t5, $t1