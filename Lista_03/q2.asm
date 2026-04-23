# Faça um programa que solicite ao usuário um número para ser a referência e outro
# para ser a quantidade de valores a ser impresso no caso do programa da Q1. Para a
# mesma resposta, por exemplo, o usuário forneceria a referência 3 e a quantidade 10.

.text
main:	addi $2, $0, 5
	syscall
	add $9, $0, $2 # referencia
	
	addi $2, $0, 5
	syscall
	add $10, $0, $2 # quantidade
	
	addi $8, $0, 1 # i (add 1 pq se o usuário digitar 10, deve parar em 11)
	
teste: beq $8, $10, fim

# corpo do laço
mul $4, $9, $8
addi $2, $0, 1
syscall

addi $4, $0, ' '
addi $2, $0, 11
syscall
# fim do corpo do laço

prox: addi $8, $8, 1 # i++
      j teste

fim: addi $2, $0, 10
     syscall