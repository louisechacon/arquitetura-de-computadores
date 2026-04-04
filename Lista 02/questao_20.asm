# *Dizemos que um número i é congruente módulo m a j se i % m = j % m.
# Exemplo: 35 é congruente módulo 4 a 39, pois 35 % 4 = 3 = 39 % 4.
# Faça um programa que, dados i, j e m, informe se i e j são congruentes módulos m

.text
main:	addi $2, $0, 5
	syscall
	add $8, $0, $2 # i
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2 # j
	
	addi $2, $0, 5
	syscall
	add $10, $0, $2 # m
	
	div $8, $10
	mfhi $20 # i % m
	
	div $9, $10
	mfhi $21 # j % m
	
	beq $20, $21, SaoCongruentes
	addi $4, $0, 'N'
	j imp
	
SaoCongruentes:	addi $4, $0, 'S'
	
imp:	addi $2, $0, 11
	syscall
	
	addi $2, $0, 10
	syscall