#Comece um programa pela instrução: ori $t1, $zero, 0x01. Usando
#apenas as instruções lógicas do tipo R (dois registradores como
#operandos) or, and e xor e instruções de shift (isto é, sem usar outras
#instruções ori além da inicial e nem instruções nor),
#escreva 0xFFFFFFFF em $t1. Procure usar o menor número de
#instruções possível.

.text
	ori $t1, $zero, 0x01
	sll $t2, $t1, 1
	
	or $t1, $t1, $t2
	sll $t2, $t1, 2
	
	or $t1, $t1, $t2
	sll $t2, $t1, 4
	
	or $t1, $t1, $t2
	sll $t2, $t1, 8
	
	or $t1, $t1, $t2
	sll $t2, $t1, 16
	
	or $t1, $t1, $t2