# Escreva a sequ�ncia 0x12345678 em $t1. A seguir, escreva um c�digo
# que inverta a sequ�ncia, escrevendo 0x87654321 em $t2. Obviamente o
# c�digo deve inverter os bits de $t1 e n�o simplesmente
# escrever 0x87654321 diretamente em $t2.

# Inicializa tudo em 0
or $t1, $zero, $zero
or $t2, $zero, $zero
or $t3, $zero, $zero
or $t4, $zero, $zero

# Colocar 12345678 em t1
ori $t1, $zero, 0x1234
sll $t1, $t1, 16
ori $t1, $t1, 0x5678

# t3 � mascara � come�a setada para pegar o digito menos significativo
ori $t3, $zero, 0xf

# t4 � carregador
or $t4, $zero, $t1

# Continuar
and $t2, $t3, $t4
sll $t2, $t2, 4
srl $t4, $t4, 4

and $t4, $t4, $t3
or $t2, $t2, $t4

sll $t2, $t2, 4
or $t4, $t1, $zero
srl $t4, $t4, 8
and $t4, $t4, $t3
or $t2, $t2, $t4

sll $t2, $t2, 4
or $t4, $t1, $zero
srl $t4, $t4, 12
and $t4, $t4, $t3
or $t2, $t2, $t4

sll $t2, $t2, 4
or $t4, $t1, $zero
srl $t4, $t4, 16
and $t4, $t4, $t3
or $t2, $t2, $t4

sll $t2, $t2, 4
or $t4, $t1, $zero
srl $t4, $t4, 20
and $t4, $t4, $t3
or $t2, $t2, $t4

sll $t2, $t2, 4
or $t4, $t1, $zero
srl $t4, $t4, 24
and $t4, $t4, $t3
or $t2, $t2, $t4

sll $t2, $t2, 4
or $t4, $t1, $zero
srl $t4, $t4, 28
and $t4, $t4, $t3
or $t2, $t2, $t4






