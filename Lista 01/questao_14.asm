# Faça um programa que leia um número inteiro e imprima 1 se o valor for ímpar e 0 se o valor for par.

.text
main:	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $9, $0, 2
	
	div $8, $9
	mfhi $10
	
	add $4, $0, $10
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall