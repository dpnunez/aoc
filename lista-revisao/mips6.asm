# OBS: RESULTADO ARMAZENADO NO T6

.text
	ori $t1, $0, 10			# Valor a ser testado
	lui $t2, 0x8000			# Mascara (1(31 zeros))
	ori $t3, $0, 32			# contador de bits mais significativos (a contagem começa da esquerda para direita)
	addi $t4, $0, 0			# Flag para comparação
	addi $t5, $0, 0			# auxiliar para verificar se tem bit mais significativo
	
	
	loop:
	beq $t3, $zero, fim		# caso chegue em 0 (NENHUM BIT SIGNIFICATIVO)
	and $t5, $t2, $t1		# and entre a mascara e o valor, se der algum bit diff de 0, encontrou o bit mais significativo
	bne $t5, $zero, fim		# pula caso encontre
	srl $t2, $t2, 1			# movimenta mascara
	addi $t3, $t3, -1		# decrementa o contador
	j loop
	
	
	fim:
	or $t6, $0, $t3
	sll $0, $0, 0