# Faça um programa para ler duas notas de um aluno do IFRN em um curso semestral. Esse programa deverá apresentar a média desse aluno, após as duas provas.

.text
main:	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	add $10, $8, $9 # soma das notas
	
	addi $11, $0, 2
	div $10, $11 # divide a soma das notas por 2
	
	mflo $12 # guarda a divisao inteira no registrador 12
	mfhi $13
	
	add $4, $0, $12
	
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall