# Faça um programa que leia números inteiros diferentes de zero e calcule a soma dos
# valores positivos. O laço do programa termina quando o usuário digita um valor zero.
# Em seguida o programa imprime a soma dos valores positivos digitados.

.text
main:

# corpo do laço
addi $2, $0, 5
syscall
add $8, $0, $2

teste: beq $8, $0, fim # se for zero, vai pro fim
       slt $9, $8, $0 # se número < zero, $9 <- 1, else $9 < - 0
       bne $9, $0, main # se o número for negativo, só ignoro e peço outro
       add $10, $10, $8
       j main
# fim do corpo do laço

fim: add $4, $0, $10
     addi $2, $0, 1
     syscall
     
     addi $2, $0, 10
     syscall