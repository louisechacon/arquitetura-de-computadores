# Faça um programa que receba três notas (entre 0 e 100) e calcule a média ponderada
# dessas notas com pesos 1, 2 e 3. Informe a média e se o aluno foi aprovado, escreva
# após a média o a letra A. Caso o aluno seja reprovado, informe, após a média, a letra R.
# A média para aprovação é 60.

.text
main:	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	addi $2, $0, 5
	syscall
	add $10, $0, $2
	
	addi $11, $0, 1
	mul $20, $8, $11
	
	addi $12, $0, 2
	mul $21, $9, $12
	
	addi $13, $0, 3
	mul $22, $10, $13
	
	add $14, $20, $21
	add $14, $14, $22 # soma as notas
	
	addi $15, $0, 6
	div $14, $15
	mflo $16 # media
	add $4, $0, $16
	addi $2, $0, 1
	syscall
	
	addi $17, $0, 60
	
	beq $16, $17, MediaSessenta # verifica se a média é igual a sessenta
	
difer:	slt $23, $16, $17 # se a média < 60, $23 <= 1, else $23 <= 0
	bne $23, $0, MediaAbaixo
	addi $24, $0, 'A'
	j imp
	
MediaAbaixo: addi $24, $0, 'R'
	     j imp

MediaSessenta: addi $24, $0, 'A'

imp:	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall

	add $4, $0, $24
	addi $2, $0, 11
	syscall
	
	addi $2, $0, 10
	syscall