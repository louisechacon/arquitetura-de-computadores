# Faça um programa que leia três números inteiros, representando a duração em horas, minutos e segundos de um experimento científico e informe essa duração em segundos.

.text
main:	addi $2, $0, 5
	syscall
	add $8, $0, $2 # horas
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2 # minutos
	
	addi $2, $0, 5
	syscall
	add $10, $0, $2 # segundos
	
	addi $20, $0, 60
	
	mul $11, $9, $20 # transforma minutos pra segundos
	
	mul $12, $8, $20
	mul $13, $12, $20 # transforma horas em segundos
	
	add $14, $10, $11
	add $4, $14, $13
	
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall