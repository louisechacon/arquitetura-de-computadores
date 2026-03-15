# Faça um programa que leia um número inteiro entre 0 e 999 e imprima a soma dos algarismos desse número. Ex.: 358 gera uma saída de 16, pois 3+5+8 = 16

.text
main:	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $9, $0, 10 # 10 é a base numérica
	
	div $8, $9 # separa terceiro algarismo
	mfhi $10 # resto
	mflo $20 # quociente
	
	div $20, $9 # separa segundo algarismo
	mfhi $12
	mflo $20
	
	div $20, $9 # separa primeiro algarismo
	mfhi $13
	
	add $14, $10, $12
	add $4, $14, $13
	
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall	