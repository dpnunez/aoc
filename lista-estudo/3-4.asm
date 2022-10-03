#Uma temperatura, armazenada em $t0, pode ficar em dois intervalos:
#20 ≤ temp ≤ 40 e
#60 ≤ temp ≤ 80.
#Escreva um programa que coloque uma flag (registrador $t9) para 1 se a
#temperatura está entre os valores permitidos e para 0 caso contrário.
#Inicie o código com a instrução: ori $t0, $zero, temperatura, substituindo
#temperatura por um valor qualquer.

.data
	temp: .word 81

.text
	lui $t0, 0x1001
	lw $t1, 0($t0)		# temp
	
	intervalo1:
		slti $t2, $t1, 41	# se menor ou igual a 40
		ori $t4, $zero, 19	# range inferior
		slt $t3, $t4, $t1
		and $t5, $t2, $t3	# 1 se estiver no range
		bne $t5, $zero, setaFlag
	
	intervalo2:
		slti $t2, $t1, 81	# se menor ou igual a 40
		ori $t4, $zero, 59	# range inferior
		slt $t3, $t4, $t1
		and $t5, $t2, $t3	# 1 se estiver no range
		bne $t5, $zero, setaFlag
		j fim
	setaFlag:
		ori $t9, $zero, 1
	fim:
		sw $t9, 0x4($t0)
	
	