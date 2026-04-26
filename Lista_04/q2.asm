# Faça uma função para verificar se um número é positivo ou negativo. Sendo que o
# valor de retorno será 1 se positivo, -1 se negativo e 0 se for igual a 0.

.text
main: addi $2, $0, 5
      syscall
      add $4, $0, $2
      jal funcao
      
ret1: add $4, $0, $2 # coloca o resultado em $4 para poder imprimir
      addi $2, $0, 1
      syscall
      addi $2, $0, 10
      syscall
      
funcao: add $2, $0, $4
        beq $2, $0, zero
        slt $8, $0, $2 # se $0 < $2, $8 <- 1, else $8 <- 0
        beq $8, $0, negativo
        addi $2, $0, 1 # se positivo, valor será 1
        jr $31
        
zero: addi $2, $0, 0
      jr $31
     
negativo: addi $2, $0, -1
          jr $31

# Rotina para calcular se é positivo ou negativo
# Entrada: $4
# Saída: $2
# Usa (sem preservar): $8