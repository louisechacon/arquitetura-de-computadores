# Faça um programa que leia um número inteiro, representando a duração em segundos de um experimento científico e imprima o tempo decorrido nesse experimento no formato h:m:s. Exemplo: 3755 gera uma saída 1:2:35

.text
main:	addi $2, $0, 5 # 3755
	syscall
	add $8, $0, $2
	
	addi $20, $0, 60
	
	div $8, $20 # 3755 / 60
	mflo $21 # quociente = 62 (quantidade em minutos)
	mfhi $22 # segundos que não deram um minuto
	
	div $21, $20
	mflo $23 # quociente = 1 (quantidade em horas)
	mfhi $24 # minutos que não deram uma hora
	
	add $4, $0, $23
	addi $2, $0, 1
	syscall
	
	addi $4, $0, ':'
	addi $2, $0, 11
	syscall
	
	add $4, $0, $24
	addi $2, $0, 1
	syscall
	
	addi $4, $0, ':'
	addi $2, $0, 11
	syscall
	
	add $4, $0, $22
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall