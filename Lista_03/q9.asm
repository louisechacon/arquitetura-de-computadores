# Faça um programa que leia certa quantidade de números e imprima o maior deles e
# quantas vezes o maior número foi lido. A quantidade de números a serem lidos deve
# ser fornecido pelo usuário.

.text
main: add $8, $0, $0 # iterador
      addi $2, $0, 5
      syscall
      add $9, $0, $2 # qtd de números a serem lidos

addi $2, $0, 5
syscall
add $11, $0, $2 # maior número inicialmente
addi $14, $0, 1 # guarda contador do maior, que começa em 1
addi $8, $8, 1 # iterador começa em 1 no loop, pois já leu o primeiro número

# corpo do laço
loop: beq $8, $9, fim
      addi $2, $0, 5
      syscall
      add $12, $0, $2 # próximo lido
      
      slt $20, $11, $12 # número > maior? se sim, $20 <- 1, else $20 <- 0
      beq $20, $0, verIguais # se recebe 0, então número digitado é menor
      add $11, $0, $12 # maior = numero
      addi $14, $0, 1 # se apareceu um novo maior, o contador volta pra 1
      addi $8, $8, 1 # i++
      j loop
       
verIguais: beq $11, $12, iguais
	   addi $8, $8, 1 # i++
           j loop

iguais: addi $14, $14, 1 # guarda quantas vezes o maior foi lido
	addi $8, $8, 1
        j loop
# fim do corpo do loop

fim: add $4, $0, $11
     addi $2, $0, 1
     syscall
     
     addi $4, $0, '\n'
     addi $2, $0, 11
     syscall
     
     add $4, $0, $14
     addi $2, $0, 1
     syscall
     
     addi $2, $0, 10
     syscall