# Faça um programa que leia as duas notas (entre 0 e 100) e as faltas de um aluno em
# uma disciplina. A média do aluno é calculada ponderadamente, com pesos 2 e 3. A
# cada 5 faltas o aluno perde 10 pontos. O programa deve informar a média, a
# penalidade e a média final, uma em cada linha.

.text
main:	addi $2, $0, 5
	syscall
	add $8, $0, $2 # nota 1
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2 # nota 2
	
	addi $2, $0, 5
	syscall
	add $10, $0, $2 # faltas
	
	addi $10, $0, 2
	addi $11, $0, 3
	
	mul $12, $8, $10
	mul $13, $9, $11
	add $14, $12, $13
	
	addi $15, $0, 5 # soma dos pesos
	div $14, $15
	mflo $16 # media
	add $4, $0, $16
	addi $2, $0, 1
	syscall # imprime a média
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	# cálculo da média final a partir das faltas
	addi $17, $0, 5
	div $10, $17 # divide número de faltas por 5
	mflo $18 # quantidade do grupo de faltas
	
	addi $19, $0, 10 # quanto vai perder a cada grupo
	
	mul $20, $18, $19 # penalidade
	add $4, $0, $20
	addi $2, $0, 1
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	# média final
	sub $21, $16, $20 # média - penalidade
	add $4, $0, $21
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall