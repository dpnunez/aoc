#Faça um programa que escreva o valor 0xDECADA70 no registrador
#$t7, incluindo um dígito hexadecimal por vez (isto é, insira letra por
#letra, individualmente) no registrador.


ori $t7, $zero, 0xD
sll $t7, $t7, 4

ori $t7, $t7, 0xE
sll $t7, $t7, 4

ori $t7, $t7, 0xC
sll $t7, $t7, 4

ori $t7, $t7, 0xA
sll $t7, $t7, 4

ori $t7, $t7, 0xD
sll $t7, $t7, 4

ori $t7, $t7, 0xA
sll $t7, $t7, 4

ori $t7, $t7, 0x7
sll $t7, $t7, 4