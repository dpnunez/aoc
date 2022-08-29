# Setar os valores de x,y e z;
or $t1, $zero, 1
or $t2, $zero, 2
or $t3,	$zero, 3

or $t4, $zero, 4 # Coeficiente de x
or $t5, $zero, 2
nor $t5, $t5, $zero 
addi $t5, $t5, 1 # Coeficiente de y (c2)
or $t6, $zero, 3

mult $t1, $t4


