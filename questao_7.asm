# Faça um programa que leia um número entre 0 e 9999 e imprima cada algarismo em uma linha diferente. Exemplo: 3219 imprime 9123 e 123 imprime 3210

.text
main:	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $9, $0, 10 # armazena base numérica
	
	div $8, $9 # separa quarto algarismo (menos significativo)
	mfhi $10
	mflo $20
	
	div $20, $9 # separa terceiro algarismo
	mfhi $11
	mflo $20
	
	div $20, $9 # separa segundo algarismo
	mfhi $12
	mflo $20
	
	div $20, $9 # separa primeiro algarismo (mais significativo)
	mfhi $13
	
	add $4, $0, $10
	addi $2, $0, 1
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	add $4, $0, $11
	addi $2, $0, 1
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	add $4, $0, $12
	addi $2, $0, 1
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	add $4, $0, $13
	addi $2, $0, 1
	syscall