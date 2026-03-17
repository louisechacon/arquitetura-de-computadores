# Faça um programa que calcule uma média ponderada de três números inteiros, com pesos 3, 9 e 15, sem usar a operação de multiplicação.

.text
main:	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	sll $20, $8, 1 # multiplica o número por 2
	add $20, $20, $8 # multiplica por 3 (mesma coisa que multiplicar por 2 e somar o valor mais uma vez)
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	sll $21, $9, 3
	add $21, $21, $9 # (9 = 8 + 1) procuramos a potência de 2 mais próxima do peso
	
	addi $2, $0, 5
	syscall
	add $10, $0, $2
	
	sll $22, $10, 4
	sub $22, $22, $10 # (15 = 16 - 1)
	
	add $23, $20, $21
	add $23, $23, $22 # soma das notas
	
	addi $11, $0, 27 # soma dos pesos
	
	div $23, $11
	mflo $15 # guarda a parte inteira
	mfhi $12 # guarda o resto
	
	sll $13, $12, 3 # multiplica por 8
	sll $14, $12, 1 # multiplica por 2
	add $18, $13, $14 # a adição desses dois termos me retorna o número multiplicado por 10 (que é a base)
	div $18, $11 # o quociente me retorna a parte fracionária da média
	mflo $16
	
	add $4, $0, $15
	addi $2, $0, 1
	syscall
	
	addi $4, $0, ','
	addi $2, $0, 11
	syscall
	
	add $4, $0, $16
	addi $2, $0, 1
	syscall
			
	add $2, $0, 10
	syscall