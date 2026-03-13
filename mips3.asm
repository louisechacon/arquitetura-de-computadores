# Faça um programa para ler um número inteiro e imprimir o quadrado desse número.

.text
main:	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	mul $4, $8, $8
	
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall
	
	