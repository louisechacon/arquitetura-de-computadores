# Faça um programa que leia números inteiros e calcule a soma. O laço do programa
# termina quando o usuário digita um valor negativo. Em seguida o programa imprime a
# soma dos valores digitados.

.text
main: 

# corpo do laço
addi $2, $0, 5
syscall
add $8, $0, $2
	
teste: slt $9, $8, $0 # se numero < 0, $10 <- 1, else $10 <- 0
       bne $9, $0, fim # se é 1, então número é negativo
       add $10, $10, $8 # se for positivo, soma
       j main # lê o próximo número
# fim do corpo do laço

fim: add $4, $0, $10
     addi $2, $0, 1
     syscall
     
     addi $2, $0, 10
     syscall