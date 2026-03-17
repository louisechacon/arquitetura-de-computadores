# Faça um programa que leia dois números inteiros e calcule e imprima a média aritmética simples desses dois números apresentando o resultado com um algarismo na casa fracionária.

.text
main:	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	add $10, $8, $9 # soma das notas
	
	addi $11, $0, 2
	div $10, $11 # divide a soma das notas por 2
	mflo $12 # guarda a parte inteira no registrador 12
	
	mfhi $13 # se o número for ímpar, o resto da divisão por 2 vai ser 1
	addi $14, $0, 5
	mul $15, $14, $13 # parte fracionária
	
	add $4, $0, $12
	addi $2, $0, 1 # imprime a parte inteira
	syscall
	
	addi $4, $0, ','
	addi $2, $0, 11
	syscall
	
	add $4, $0, $15
	addi $2, $0, 1 # imprime a parte fracionária (0,5)
	syscall
	
	addi $2, $0, 10
	syscall