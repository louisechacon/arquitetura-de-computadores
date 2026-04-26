# Faça um programa para calcular o MDC de dois números fornecidos pelo usuário,
# usando o algoritmo de Euclides (busque na Internet o funcionamento desse algoritmo).

.text
main: addi $2, $0, 5
      syscall
      add $8, $0, $2 # a
      
      addi $2, $0, 5
      syscall
      add $9, $0, $2 # b
      
teste: beq $9, $0, fim

# corpo do laço    
div $9, $8
mfhi $10

add $9, $0, $8 # o divisor (b) passa a ser o dividendo (a)
add $8, $0, $10 # o resto torna-se o novo divisor
j teste

fim: add $4, $0, $8 # o último divisor (o resto diferente de zero antes de chegar a zero)
     addi $2, $0, 1
     syscall
     
     addi $2, $0, 10
     syscall