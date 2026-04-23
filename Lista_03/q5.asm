# Faça um programa que leia 10 valores e imprima a sua soma.

.text
main:	addi $8, $0, 1
	addi $9, $0, 11
	addi $10, $0, 0
	
teste: beq $8, $9, fim

# corpo do laço
addi $2, $0, 5
syscall
add $10, $10, $2
# fim do corpo do laço

prox: addi $8, $8, 1 # i++
      j teste
      
fim: add $4, $0, $10
     addi $2, $0, 1
     syscall
     
     addi $2, $0, 10
     syscall