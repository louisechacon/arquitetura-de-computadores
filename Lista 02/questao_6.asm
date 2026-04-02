# Faça um programa que leia a idade (em anos) e o tempo de serviço de um trabalhador.
# Informe se ele pode se aposentar (imprima S se sim, e N se não). As condições para
# aposentadoria são: 1) ter, ao menos, 65 anos; OU 2) ter trabalhado 40 anos; OU ter
# pelo menos 60 anos e mais de 35 anos de serviço.

.text
main:	addi $2, $0, 5
	syscall
	add $8, $0, $2 # idade
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2 # tempo de serviço
	
	# dados das condições
	addi $10, $0, 65
	addi $11, $0, 40
	addi $12, $0, 60
	addi $13, $0, 35
	
	# condição 1
	slt $14, $8, $10 # se idade < 65, $14 <= 1, else $14 <= 0
	beq $14, $0, PodeAposentar # se a idade é maior ou igual a 65, aposenta
	
	# condição 2
	slt $15, $9, $11 # se tempo de serviço < 40, $15 <= 1, else $15 <= 0
	beq $15, $0, PodeAposentar # se o tempo de serviço é maior ou igual a 40, aposenta
	
	# condição 3
	slt $16, $8, $12 # se idade < 60, $16 <= 1, else $16 <= 0
	bne $16, $0, NaoAposenta # $16 recebe 1, então idade < 60
	
	slt $17, $9, $13 # se tempo de serviço < 35, $17 <= 1, else $17 <= 0
	beq $17, $0, PodeAposentar
	
NaoAposenta:	addi $4, $0, 'N'
		j imp
	
PodeAposentar:	addi $4, $0, 'S'	
		
imp:	addi $2, $0, 11
	syscall
	
	addi $2, $0, 10
	syscall