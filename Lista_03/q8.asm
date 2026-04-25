# Faça um programa que leia números inteiros diferentes de zero e encontre o menor
# valor digitado e o maior valor digitado. O programa informa o maior e o menor, um em
# cada linha, quando o usuário digitar um 0.

.text
main:

addi $2, $0, 5
syscall
add $8, $0, $2

beq $8, $0, fim # se for zero, já termina. caso não seja, continua

add $9, $0, $8 # menor número até então
add $10, $0, $8 # maior número até então

# corpo do laço
loop:
addi $2, $0, 5
syscall
add $8, $0, $2

teste: beq $8, $0, fim # se for zero, programa acaba
       slt $20, $8, $9 # se número < menor, $20 <- 1, else $20 <- 0
       beq $20, $0, verificaMaior # se recebe 0, então número >= menor
       add $9, $0, $8 # menor = numero
       
verificaMaior: slt $21, $10, $8 # verifica se numero > maior. se for, $21 <- 1
               beq $21, $0, loop
               add $10, $0, $8 # maior = numero
               j loop
# fim do corpo do laço

fim: add $4, $0, $10
     addi $2, $0, 1
     syscall
     
     addi $4, $0, '\n'
     addi $2, $0, 11
     syscall
     
     add $4, $0, $9
     addi $2, $0, 1
     syscall
     
     addi $2, $0, 10
     syscall