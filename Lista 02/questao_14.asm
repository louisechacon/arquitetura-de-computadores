# Faça um programa que leia dois números inteiros (entre 0 e 9999) e imprima esses
# números, um após o outro, separados por vírgula, cada um com 4 caracteres, sendo cada número alinhado à direita.

.text
main:	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	addi $10, $0, 10 # base numérica
	
	# separando os dígitos do primeiro número
	div $8, $10
	mfhi $11
	mflo $25
	
	div $25, $10
	mfhi $12
	mflo $25
	
	div $25, $10
	mfhi $13
	mflo $25
	
	div $25, $10
	mfhi $14
	
	# separando os dígitos do segundo número
	div $9, $10
	mfhi $15
	mflo $25
	
	div $25, $10
	mfhi $16
	mflo $25
	
	div $25, $10
	mfhi $17
	mflo $25
	
	div $25, $10
	mfhi $18
	
	# impressão
	add $4, $0, $14
	addi $2, $0, 1
	syscall
	
	add $4, $0, $13
	addi $2, $0, 1
	syscall
	
	add $4, $0, $12
	addi $2, $0, 1
	syscall
	
	add $4, $0, $11
	addi $2, $0, 1
	syscall
	
	addi $4, $0, ','
	addi $2, $0, 11
	syscall
	
	add $4, $0, $18
	addi $2, $0, 1
	syscall
	
	add $4, $0, $17
	addi $2, $0, 1
	syscall
	
	add $4, $0, $16
	addi $2, $0, 1
	syscall
	
	add $4, $0, $15
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall