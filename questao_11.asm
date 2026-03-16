# Faça um programa que leia 1 inteiro entre 100 e 999 e o imprima escrito de trás para frente. Exemplo: 384 gera uma saída 483

.text
main:	addi $2, $0, 5
	syscall
	add $8, $2, $0
	
	addi $20, $0, 10
	
	div $8, $20 # separa terceiro algarismo (menos significativo)
	mfhi $22
	mflo $25
	
	div $25, $20 # separa segundo algarismo
	mfhi $23
	mflo $25
	
	div $25, $20 # separa primeiro algarismo (mais significativo)
	mfhi $24
	mflo $25
	
	add $4, $0, $22
	addi $2, $0, 1
	syscall
	
	add $4, $0, $23
	addi $2, $0, 1
	syscall
	
	add $4, $0, $24
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall