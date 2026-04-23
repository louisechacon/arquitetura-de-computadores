# Faça um programa que leia do usuário um intervalo fechado e imprima os números pares desse intervalo (inclusive os limites)

.text
main:	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $2, $0, 5
	syscall
	addi $9, $2, 1 # se digitar 2 e 6, o programa só pode parar quando chegar em 7
	
teste: beq $8, $9, fim

# corpo do laço
andi $10, $8, 1 # se termina com 0, é par; se termina com 1, é ímpar
bne $10, $0, prox # se é ímpar, vou para o próximo número
add $4, $0, $8 # se é par, mando imprimir
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
