# Faça uma função chamada DesenhaLinha. Ele deve desenhar uma linha na tela usando
# vários símbolos de igual (Ex: ========). A função recebe por parâmetro quantos
# sinais de igual serão mostrados.

.text
main: addi $2, $0, 5
      syscall
      add $4, $0, $2 # escolhi $4 como entrada
      jal funcao
      
ret1: addi $2, $0, 10
      syscall # programa termina aqui
      
funcao: add $8, $0, $0 # vai ser o iterador
        add $9, $0, $4
teste:  beq $9, $8, fimDoLoop # quando i == tamanho fornecido na entrada, o loop para

# corpo do laço
        addi $4, $0, '='
        addi $2, $0, 11
        syscall
        
        addi $8, $8, 1 # i ++
        j teste
fimDoLoop: jr $31
# fim do corpo do laço
      
# Rotina para fazer a função
# Entrada: $4
# Saída: $3
# Usa (sem preservar): $8