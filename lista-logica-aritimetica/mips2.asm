# Escreva 0xAAAAAAAA em $t1. Faça um shift de um bit para a direita
#desse valor e coloque o resultado em $t2, deixando $t1 inalterado. Em
#$t3, $t4 e $t5 coloque os resultados das operações or, and e xor entre
#$t1 e $t2, respectivamente. Em comentários no final do código, explique
#os resultados obtidos, mostrando os valores binários

ori $t1, $zero, 0xAAAA
sll $t1, $t1, 16
ori $t1, $t1, 0xAAAA

# Salvo aaaaaaaa no t1

srl $t2, $t1, 1

# Movendo 1 bit para dir

and $t3, $t1, $t2
or $t4, $t1, $t2
xor $t5, $t1, $t2

# salvando operacoes