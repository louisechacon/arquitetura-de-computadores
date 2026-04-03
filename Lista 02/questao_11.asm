# Um pico em uma onda mecânica é caracterizado por três valores de magnitude , a, b e
# c, tais que (a<b e b>c) forma um pico positivo ou (a>b e b<c) forma um pico negativo.
# Faça um programa que leia 3 números e indique se formam um pico, imprimindo a
# letra P, caso formem. Além disso o código deve informar se o pico é positivo negativo,
# acrescentando um sinal de + ou de – após a letra P. Se os três pontos não formarem
# um pico, deve ser impressa a letra N.

.text
main:	addi $2, $0, 5
	syscall
	add $8, $0, $2 # a
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2 # b
	
	addi $2, $0, 5
	syscall
	add $10, $0, $2 # c
	
	# testa se é positivo (a<b e b>c)
	slt $11, $8, $9 # se a < b, $11 <= 1, else $11 <0
	slt $12, $10, $9 # se b > c (c < b), $12 <= 1, else $12 <= 0
	and $13, $11, $12 # se atender às condições, $13 <= 1
	bne $13, $0, PicoPositivo
	
	# testa se é negativo (a>b e b<c)
	slt $14, $9, $8
	slt $15, $9, $10
	and $16, $14, $15 # se atender às condições, $16 <= 1
	bne $16, $0, PicoNegativo
	
	addi $4, $0, 'N' # Não atende a nenhuma das condições: não formam um pico
	j imp
	
PicoPositivo:	addi $4, $0, 'P'
		addi $17, $0, '+'
		j imp
		
PicoNegativo:	addi $4, $0, 'P'
		addi $17, $0, '-'
		j imp

imp:	addi $2, $0, 11
	syscall
	
	add $4, $0, $17
	addi $2, $0, 11
	syscall
	
	addi $2, $0, 10
	syscall