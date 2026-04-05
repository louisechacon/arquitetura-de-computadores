# Faça um programa que leia dia, mês e ano e informe se a data é válida.

.text
main:	addi $2, $0, 5
	syscall
	add $8, $0, $2 # dia
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2 # mês
	
	addi $2, $0, 5
	syscall
	add $10, $0, $2 # ano
	
	# verificando o ano
	slt $11, $0, $10 # se 0 < ano, $11 <= 1, else $11 <= 0
	beq $11, $0, NaoValido
	
	# verifica o mês
	addi $13, $0, 13
	slt $14, $9, $13 # se mês < 13, $14 <= 1, else $14 <= 0
	slt $19, $0, $9 # se 0 < mês, $19 <= 1, else $19 <= 0
	and $20, $14, $19
	beq $20, $0, NaoValido
	
	addi $11, $0, 2
	beq $9, $11, fevereiro
	addi $11, $0, 4
	beq $9, $11, mes30
	addi $11, $0, 6
	beq $9, $11, mes30
	addi $11, $0, 9
	beq $9, $11, mes30
	addi $11, $0, 11
	beq $9, $11, mes30
	
mes31:	addi $15, $0, 32
	slt $16, $8, $15 # se dia < 32, $20 <= 1
	slt $17, $0, $8 # se 0 < dia, $21 <= 1
	and $18, $16, $17 # recebe 1 se as duas condições forem verdadeiras
	bne $18, $0, Valido
	j NaoValido
	
fevereiro: addi $19, $0, 29
	   slt $20, $8, $19 # se dia < 29, $20 <= 1, else $20 <= 0
	   slt $21, $0, $8 # se 0 < dia, $21 <= 1, else $21 <= 0
	   and $22, $20, $21 # se o dia for válido (entre 1 e 28), $22 <= 1
	   bne $22, $0, Valido
	   
	   addi $19, $0, 29
	   beq $8, $19, bissexto
	   j NaoValido
	   
bissexto:  addi $19, $0, 4
    	   div  $10, $19
           mfhi $20
           bne  $20, $0, NaoValido # se ano % 4 != 0, então não bissexto

           addi $19, $0, 100
           div  $10, $19
           mfhi $20
           bne  $20, $0, Valido # se ano % 100 != 0, então é bissexto

          addi $19, $0, 400
          div  $10, $19
          mfhi $20
          beq  $20, $0, Valido # se ano % 400 == 0, então é bissexto
          beq  $0, $0, NaoValido # senão, não é bissexto
          
          # regra para ser bissexto: (ano % 4 == 0 and ano % 100 != 0) ou (ano % 400 == 0)

mes30:	addi $15, $0, 31
	slt $16, $8, $15 # se dia < 31, $20 <= 1
	slt $17, $0, $8 # se 0 < dia, $21 <= 1
	and $18, $16, $17 # recebe 1 se as duas condições forem verdadeiras
	bne $18, $0, Valido
	j NaoValido
	
Valido:	addi $4, $0, 'S'
	j imp

NaoValido: addi $4, $0, 'N'
	   j imp
	   
imp:	addi $2, $0, 11
	syscall
	   
	addi $2, $0, 10
	syscall