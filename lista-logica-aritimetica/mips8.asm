#Faça um programa que calcule a seguinte equação:
#y = 3x2 - 5x + 13
#Armazene x no registrador $t5 com a instrução addi $t5, $zero, x, substituindo x pelo
#valor desejado, e sempre que precisar o valor de x, utilize o valor armazenado no
#registrador $t5.
#Armazene o resultado y no registrador $t6.
#Faça teste com diferentes valores positivos e negativos de x.
#Faça um teste substituindo a primeira instrução addi por uma instrução ori
#equivalente e responda, nos comentários, qual o resultado quando são usados números
#positivos e números negativos.


# t5 = x
# t6 = resultado
# t1 = 5x
# t2 = 3x^2

# 12 + 10 + 13


addi $t5, $zero, 0 # Inicializa o X (TESTAR COM NEGATIVO)

# Adicionar 13 em t6
addi $t6, $zero, 13 

# Resolver 5x
sll $t1, $t5, 2 # Multiplica o X por 4
add $t1, $t1, $t5 # Adiciona x em 4x = 5x

# Resolver 3xˆ2
or $t2, $zero, $t5 # coloca x em t2
mult $t2, $t2
mflo $t2 # t2 = t2*t2                           PROBLEMA SE X*X for maior que 32
sll $t3, $t2, 1 # t2 = 2*t2
add $t2, $t3, $t2

sub $t6, $t6, $t1
add $t6, $t6, $t2
