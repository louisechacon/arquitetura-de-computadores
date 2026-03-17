# Faça um programa para ler duas notas de um aluno do IFRN em um curso semestral. Esse programa deverá apresentar a média desse aluno, após as duas provas (versão com média ponderada do IFRN).

.text
main:	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	addi $10, $0, 2
	addi $11, $0, 3
	
	mul $12, $8, $10
	mul $13, $9, $11
	
	add $14, $12, $13
	
	addi $15, $0, 5 # peso das notas
	addi $20, $0, 10 # base
	
	div $14, $15
	mflo $16 # parte inteira (quociente)
	mfhi $17
	
	mul $17, $17, $20 # multiplica o resto pela base (10)
	div $17, $15 # divide pelo peso das notas
	mflo $18 # parte fracionária
	
	add $4, $0, $16
	addi $2, $0, 1
	syscall
	
	addi $4, $0, ','
	addi $2, $0, 11
	syscall
	
	add $4, $0, $18
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall