# Faça um programa para ler um número inteiro. Se o número for positivo, imprima o dobro do número, se for negativo, imprima o quadrado do número.

.text
main:	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	slt $9, $8, $0 # se número digitado < 0, $9 <= 1 else $9 <= 0
	bne $9, $0, NumeroNegativo
	mul $10, $8, 2
	j imp
	
NumeroNegativo: mul $10, $8, $8
		j imp
	
imp:	add $4, $0, $10
	addi $2, $0, 1
	syscall