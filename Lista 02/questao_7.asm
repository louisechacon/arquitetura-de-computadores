# Faça um programa que leia um ano e informe se esse ano é bissexto.

.text
main:	addi $8, $0, 4
	addi $9, $0, 100
	addi $10, $0, 100 # armazena os divisores
	
	addi $2, $0, 5
	syscall
	add $11, $0, $2 # ano
	
	div $11, $8
	mfhi $12 # resto de ano dividido pra 4
	
	div $11, $9
	mfhi $13 # resto de ano dividido pra 100
	
	div $11, $10
	mfhi $14 # resto de ano dividido pra 400
	
	# pegando o sinal de 0-resto
	sub $12, $0, $12
	sub $13, $0, $13
	sub $14, $0, $14
	
	not $12, $12 # se sinal == 0, é verdade, então 1
	not $14, $14 # se sinal == 1, é mentira, então 0
	
	srl $12, $12, 31
	srl $13, $13, 31
	srl $14, $14, 31
	
	and $15, $12, $13 # divisível por 4 e não por 100
	or $4, $15, $14 # divisível por 400
	
	addi $2, $0, 1
	syscall # 1 se bissexto, 0 se não for bissexto
	
	addi $2, $0, 10
	syscall