# Setar os valores de x,y e z;
#Escreva um p?rograma que calcule o valor de
#4x - 2y + 3z (armazene os valores de x, y e z em $t1, $t2 e $t3,
#respectivamente) e coloque o resultado em $t7. Faça testes com alguns
#valores diferentes de x, y e z. Utilize apenas instruções já vistas na
#disciplina

# Solucao sem o MULT

addi $t1, $zero, 1
addi $t2, $zero, 2
addi $t3, $zero, 3

sll $t1, $t1, 2 # Multiplica t1 (x) por 4
sll $t2, $t2, 1 # Multiplica t2 (y) por 2
sll $t4, $t3, 1 # Multiplica t3 (z) por 2
add $t3, $t3, $t4 # Adiciona t3 em 2t3 = 3t3

or $t7, $zero, $t1 # Move t1 para t7
sub $t7, $t7, $t2 # Subitrai t2 de t7
add $t7, $t7, $t3 # Soma t3 em t7


# Solucao com MULT

addi $t7, $zero, 0

# Valores de x y z
addi $t1, $zero, 1
addi $t2, $zero, 2
addi $t3, $zero, 3

# Valores dos coeficientes
addi $t4, $zero, 4
addi $t5, $zero, 2
addi $t6, $zero, 3

mult $t4, $t1
mflo $t4

mult $t5, $t2
mflo $t5

mult $t6, $t3
mflo $t6

sub $t7, $t4, $t5
add $t7, $t7, $t6