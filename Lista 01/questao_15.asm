# Faça um programa que leia um número inteiro entre 0 e 9999 e imprima esse número com 4 caracteres, substituindo o algarismo 0 por espaço. Exemplo.: 304 gera uma saída 3 4

.text
main:	addi $2, $0, 5
	syscall
	add $8, $0, $2 # num
	
	addi $20, $0, 10 # base
	
	div $8, $20
	mflo $21 
	mfhi $22 # guarda quarto num (menos significativo)
	
	div $21, $20
	mflo $21 
	mfhi $23 # guarda terceiro num
	
	div $21, $20
	mflo $21
	mfhi $24 # guarda segundo num
	
	div $21, $20
	mflo $21
	mfhi $25 # guarda primeiro num (mais significativo)
	
	# quarto algarismo
	sub $9, $0, $22
	srl $10, $9, 31 # verifica sinal de (0 - num)
	sll $11, $10, 4 # multiplica m (sinal) por 16
	addi $22, $22, 32 # 32 + 16 * m
	add $22, $22, $11 # (num + 32) + 16 ou 0
	
	# terceiro algarismo
	sub $12, $0, $23
	srl $13, $12, 31
	sll $14, $12, 4
	addi $23, $23, 32
	add $23, $23, $14
	
	# segundo algarismo
	sub $15, $0, $24
	srl $16, $15, 31
	sll $17, $16, 4
	addi $24, $24, 32
	add $24, $24, $17
	
	# primeiro algarismo
	sub $18, $0, $25
	srl $19, $18, 31
	sll $21, $19, 4
	addi $25, $25, 32
	add $25, $25, $21
	
	# saídas
	add $4, $0, $25
	addi $2, $0, 11
	syscall
	
	add $4, $0, $24
	addi $2, $0, 11
	syscall
	
	add $4, $0, $23
	addi $2, $0, 11
	syscall
	
	add $4, $0, $22
	addi $2, $0, 11
	syscall
	
	addi $2, $0, 10
	syscall