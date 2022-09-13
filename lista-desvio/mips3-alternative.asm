#Escreva um programa que leia um valor x > 0 da memória (posição 0x10010000) e
#calcule o x-ésimo termo da série de Fibonacci:
#1, 1, 2, 3, 5, 8, 13, 21, 34, 55, ...
#Escreva o x-ésimo termo da série (y) em uma palavra (4 bytes) de memória. O
#resultado deve ser armazenado, obrigatoriamente, na posição 0x10010004 da
#memória .data. Inicie o código com:
.data
	x: .word 12
	y: .space 4

.text
	lui $t0, 0x1001
	lw $t9, 0($t0) # pos. fibbonacci target
	
	
	ori $t4, $zero, 0 # atual
	ori $t3, $zero, 0 # atual (pos)
	
	addi $t1, $zero, 0 # atual - 2 (valor)
	addi $t2, $zero, 0 # atual - 1 (valor)
	
	loop: 
	addi $t3, $t3, 1
	add $t4, $t1, $t2
	beq $t4, $zero, seta1
	returnaSeta1: 
	or $t1, $zero, $t2 # move o antigo -1 para -2
	or $t2, $zero, $t4 # move o atual para -1
	
	beq $t9, $t3, fim
	
	j loop
	

	seta1:
		addi $t4, $zero, 1
		j returnaSeta1
	
	fim: 
		sll $0, $0, 0
	
	
