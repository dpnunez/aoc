.data
	temp: .byte 81
.text
	lui $t0, 0x1001
	lb $t1, 0($t0) # temp
	
	ori $t8, $zero, 0 # flag
	
	addi $t2, $zero, 81 # limite superior + 1 (1)
	addi $t3, $zero, 60 # limite inferior (1)
	
	addi $t4, $zero, 41 # limite superior + 1 (2)
	addi $t5, $zero, 20 # limite inferior (2)
	
	
	slt $t9, $t1, $t2 # seta 0 caso TEMP > LIMITE SUP. fora do limite superior 1
	beq $t9, $zero, testaSegundoLimite
	
	
	slt $t9, $t1, $t3 # seta 0 caso TEMP > LIMITE INF. dentro do limite inferior 1
	beq $t9, $zero dentro	
	
	
	
	testaSegundoLimite:
	
	slt $t9, $t1, $t4 # seta 0 caso TEMP > LIMITE SUP. fora do limite superior 1
	beq $t9, $zero, testaSegundoLimite
	
	
	slt $t9, $t1, $t5 # seta 0 caso TEMP > LIMITE INF. dentro do limite inferior 1
	beq $t9, $zero dentro	
	
	j fim
	
	dentro:
		ori $t8, $zero, 1
	fim:	sll $zero, $zero, 0