# Faça um programa que leia um número inteiro entre 0 e 999 e imprima esse número com 3 algarismos. Ex.: 23 gera uma saída 023. 8 gera uma saída 008.

.text
main:	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $9, $0, 10 # armazena a base numérica
	
	div $8, $9 # separa algarismo menos significativo
	mfhi $10
	mflo $20
	
	div $20, $9 # separa segundo algarismo menos significativo
	mfhi $11
	mflo $20
	
	div $20, $9 # separa algarismo mais significativo
	mfhi $12
	
	add $4, $0, $12
	addi $2, $0, 1
	syscall
	
	add $4, $0, $11
	addi $2, $0, 1
	syscall
	
	add $4, $0, $10
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall