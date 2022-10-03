#Escreva um programa que leia dois halfwords (a e b) da memória e calcule a sua
#divisão se os dois valores forem diferentes e a sua multiplicação se os dois valores
#forem iguais. Escreva o resultado (y) em uma palavra (4 bytes) de memória. O
#resultado deve ser armazenado, obrigatoriamente, na posição 0x10010004 da
#memória .data. Inicie o código com: 

.data
	a: .half 5
	b: .half 5
	y: .space 4
	
.text
	lui $t0, 0x1001
	lh $t1, 0($t0)
	lh $t2, 0x2($t0)
	
	
	beq $t1, $t2, multiplica
	
	divide:
		div $t1, $t2
		j fim
		
	multiplica:
		mult $t1, $t2
		
	fim:
		mflo $t3
		sw $t3, 0x4($t0)
	