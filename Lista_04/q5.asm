# Faça uma função para verificar se um número é um quadrado perfeito. Um quadrado
# perfeito é um número inteiro não negativo que pode ser expresso como o quadrado
# de outro número inteiro. Ex: 1, 4, 9...

.text
main:
      addi $2, $0, 5
      syscall
      add $4, $0, $2
      jal funcao

ret1:
      add $4, $0, $2
      addi $2, $0, 11
      syscall

      addi $2, $0, 10
      syscall

funcao:
      add $2, $0, $4 # numero
      add $8, $0, $0 # i = 0

teste: mul $9, $8, $8 # i*i
       beq $9, $2, perfeito # se i*i == numero, é perfeito
       slt $10, $2, $9 # se i*i > numero, $10 <- 1, else $10 <- 0
       bne $10, $0, nao # não tem mais como encontrar raiz perfeita
       addi $8, $8, 1
       j teste

perfeito:
      addi $2, $0, 'S'
      jr $31

nao:
      addi $2, $0, 'N'
      jr $31

      
# Rotins psts verificar se é quadrado perfeito
# Entrada: $4
# Saída: $2
# Usa (sem preservar): $8 e $9