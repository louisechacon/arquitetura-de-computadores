# Faça um programa que leia um número escrito em binário (no máximo 8 bits) e imprima seu valor em decimal.

.text
main:	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $9, $0, 10
	
	# separando os bits
	div $8, $9
	mfhi $10 # bit menos significativo
	mflo $25
	
	div $25, $9
	mfhi $11
	mflo $25
	
	div $25, $9
	mfhi $12
	mflo $25
	
	div $25, $9
	mfhi $13
	mflo $25
	
	div $25, $9
	mfhi $14
	mflo $25
	
	div $25, $9
	mfhi $15
	mflo $25
	
	div $25, $9
	mfhi $16
	mflo $25
	
	div $25, $9
	mfhi $17
	
	# binário -> decimal
	addi $24, $0, 1 # 2 elevado a 0
	mul $22, $10, $24
	add $23, $0, $22
	
	addi $24, $0, 2 # 2 elevado a 1
	mul $22, $11, $24
	add $23, $23, $22
	
	addi $24, $0, 4 # 2 elevado a 2
	mul $22, $12, $24
	add $23, $23, $22
	
	addi $24, $0, 8 # 2 elevado a 3
	mul $22, $13, $24
	add $23, $23, $22
	
	addi $24, $0, 16 # 2 elevado a 4
	mul $22, $14, $24
	add $23, $23, $22
	
	addi $24, $0, 32 # 2 elevado a 5
	mul $22, $15, $24
	add $23, $23, $22
	
	addi $24, $0, 64 # 2 elevado a 6
	mul $22, $16, $24
	add $23, $23, $22
	
	addi $24, $0, 128 # 2 elevado a 7
	mul $22, $17, $24
	add $23, $23, $22
	
	add $4, $0, $23
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall