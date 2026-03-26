# Faça um programa para ler dois números e informe qual deles é o maior.

.text
main:	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	slt $10, $8, $9 # se ($8 < $9), $11 recebe 1. else, $11 recebe 0
	bne $10, $0, NoveMaior # se $10 for != 0, ou seja, se for 1, então $8 é menor que $9. pula pra "NoveMaior"
	add $4, $0, $8
	addi $2, $0, 1
	syscall
	j fim
	
NoveMaior:  add $4, $0, $9
	    addi $2, $0, 1
	    syscall
	   
fim:	    addi $2, $0, 10
	    syscall