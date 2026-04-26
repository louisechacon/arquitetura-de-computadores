# Crie uma função que recebe como parâmetro um número inteiro e devolve o seu dobro.

.text
main: addi $2, $0, 5
      syscall
      add $4, $0, $2 # $4 foi o que escolhi de entrada
      jal dobro
      
ret1: add $4, $0, $2 # resultado da rotina está em $2. faço uma cópia pra $4, pra poder imprimir
      addi $2, $0, 1
      syscall
      addi $2, $0, 10
      syscall # programa acaba aqui
      
dobro: add $2, $0, $4
       sll $2, $2, 1
       jr $31 # ao encerrar, pega o que foi guardado no $31 (ret1) e assume isto como valor de PC

# Rotina para calcular o dobro
# Entrada: $4
# Saída: $2
# Usa (sem preservar): $8