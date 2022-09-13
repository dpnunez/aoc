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
	lw $t1, 0($t0) # pos. fibbonacci target
	ori $t7, $zero, 3 # item na posicao atual
	
	
	# Tratativa para as 2 primeiras posicoes;
	ori $t2, $zero, 1 # flag comparador
	slti $t6, $t1, 3
	beq $t6, $t2, primeiros
	
	
	# Trativa para as proximas posicoes
	# Somente posicoes >= 3 entrarao aqui
	ori $t5, $zero 2 # posicao atual - 1
	
	ori $t3, $zero 1 # atual - 1
	ori $t4, $zero 1 # atual - 2
	
	loop: add $t7, $t3, $t4
	
	or $t4, $zero, $t3
	or $t3, $zero, $t7
	addi $t5, $t5, 1
	
	beq $t5, $t1, fim
	j loop
	
	primeiros: sll $0, $0, 0
	fim: sll $0, $0, 0 
	
		
	