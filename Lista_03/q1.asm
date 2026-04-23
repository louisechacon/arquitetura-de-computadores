# Faça um programa que calcule e mostre os 10 primeiros números múltiplos de 3, considerando valores maiores que 0

.text
main:	addi $9, $0, 3
	addi $8, $0, 1
	addi $10, $0, 11 # se é até 10, então para quando chegar no 11
	
teste: beq $8, $10, fim

#corpo do laço
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
