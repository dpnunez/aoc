#Escreva o resultado (y) em uma palavra (4 bytes) de memória. O resultado deve ser
#armazenado, obrigatoriamente, na posição 0x10010000 da memória .data. Inicie o
#código com:

.data
	y: .space 4
	
.text
	lui $t9, 0x1001 # Inicializa o reg base de t1

	ori $10,$0,0 # soma = 0
	ori $8,$0,0 # contador = 0
	
	teste: slti $9,$8,334 # contador < 101 ?
	beq $9,$0,fim # se contador > 101, sai do loop
	addu $10,$10,$8 # soma += contador
	addiu $8,$8,1 # contador++
	j teste # volta pro inicio do loop
	
	fim: 
		sw $10, 0($t9)