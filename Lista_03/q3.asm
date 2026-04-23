# Faça um programa que implementa um laço com um teste no início que conte de 0 a
# 10 imprimindo esses números, um em cada linha da saída.

.text
main:	addi $9, $0, 10 # referencia
	addi $9, $9, 1 # para quando for 11
	add $8, $0, $0 # começa com 0
	
teste: beq $8, $9, fim

# corpo do laço
add $4, $0, $8
addi $2, $0, 1
syscall

addi $4, $0, '\n'
addi $2, $0, 11
syscall
# fim do corpo do laço

prox: addi $8, $8, 1 # i++
      j teste
      
fim: addi $2, $0, 10
     syscall