# Faça um programa que leia um número inteiro (entre 0 e 9999) e imprima esse
# número com 4 caracteres, sendo o número alinhado à direita.

.text
main:	addi $2, $0, 5
	syscall
	add $8, $0, $2 # numero digitado
	
	addi $9, $0, 10
	addi $10, $0, 100
	addi $11, $0, 1000
	
	slt $12, $8, $9 # se número < 10, $12 <= 1, else $12 <= 0
	bne $12, $0, MenorQueDez
	
	slt $13, $8, $10 # se número < 100, $13 <= 1, else $13 <= 0
	bne $13, $0, MenorQueCem
	
	slt $14, $8, $11 # se número < 1000, $14 <= 1, else $14 <= 0
	bne $14, $0, MenorQueMil
	
	add $4, $0, $8 # se o número tem 4 dígitos, então imprimo ele normalmente
	j imp

MenorQueDez:	addi $4, $0, ' '
		addi $2, $0, 11
		syscall
		
		addi $4, $0, ' '
		addi $2, $0, 11
		syscall
		
		addi $4, $0, ' '
		addi $2, $0, 11
		syscall
		
		add $4, $0, $8
		j imp

MenorQueCem:	addi $4, $0, ' '
		addi $2, $0, 11
		syscall
		
		addi $4, $0, ' '
		addi $2, $0, 11
		syscall
		
		add $4, $0, $8
		j imp

MenorQueMil:	addi $4, $0, ' '
		addi $2, $0, 11
		syscall
		
		add $4, $0, $8

imp:	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall