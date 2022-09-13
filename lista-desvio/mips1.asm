#Escreva um programa que leia dois halfwords (a e b) da memória e calcule a sua
#divisão se os dois valores forem diferentes e a sua multiplicação se os dois valores
#forem iguais. Escreva o resultado (y) em uma palavra (4 bytes) de memória. O
#resultado deve ser armazenado, obrigatoriamente, na posição 0x10010004 da
#memória .data. Inicie o código com:

.data
	a: .half 30
	b: .half 5
	y: .space 4

.text 
	lui $t1, 0x1001 # Inicializa o reg base de t1
	lh $t2, 0($t1)
	lh $t3, 2($t1)
	
	bne $t2, $t3, divide
	mult $t2, $t3
	j fim
	
	divide:
		div $t2, $t3
	fim:	
		mflo $t4
		sw $t4, 4($t1)
		
 