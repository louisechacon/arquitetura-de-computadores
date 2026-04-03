# Faça um programa que leia um número com 9 algarismos e informe os dois
# algarismos seguintes que devem formar um CPF válido.

.text
main:	addi $2, $0, 5
      	syscall
      	add $8, $0, $2
      	
      	addi $9, $0, 10
      	
      	div $8, $9
      	mfhi $10 # último dígito (menos significativo ou dígito_9)
      	mflo $8
      	
      	div $8, $9
      	mfhi $11
      	mflo $8
     
      	div $8, $9
      	mfhi $12
      	mflo $8
     
      	div $8, $9
      	mfhi $13
      	mflo $8
     
      	div $8, $9
      	mfhi $14
      	mflo $8

      	div $8, $9
      	mfhi $15
      	mflo $8
     
      	div $8, $9
      	mfhi $16
      	mflo $8
     
      	div $8, $9
      	mfhi $17
      	mflo $18 # primeiro dígito (mais significativo ou dígito_1)
      	
      	addi $24, $0, 2 # vai multiplicar o menos significativo
      	
      	mul $23, $10, $24 # multiplica dígito_9 por 2
      	addi $24, $24, 1 # novo multiplicador será 3
      	mul $22, $11, $24 # multiplica dígito_8 por 3
      	add $23, $23, $22 # soma (dígito_9 * 2) + (dígito_8 * 3)
      	
      	addi $24, $24, 1 # novo multiplicador passa a ser 4
      	mul $22, $12, $24 # digito_7 * 4
      	add $23, $23, $22 # soma (dígito_9 * 2) + (dígito_8 * 3) + (dígito_7 * 4)
      	
      	addi $24, $24, 1
      	mul $22, $13, $24
      	add $23, $23, $22
     
      	addi $24, $24, 1
      	mul $22, $14, $24
      	add $23, $23, $22
     
      	addi $24, $24, 1
      	mul $22, $15, $24
      	add $23, $23, $22
     
      	addi $24, $24, 1
      	mul $22, $16, $24
      	add $23, $23, $22
     
      	addi $24, $24, 1
      	mul $22, $17, $24
      	add $23, $23, $22
     
      	addi $24, $24, 1
      	mul $22, $18, $24
      	add $23, $23, $22
      	
      	addi $24, $0, 11
      	div $23, $24
      	mfhi $19 # a regra diz para dividir por 11 e pegar o resto
      	
      	addi $20, $0, 2
      	slt $21, $19, $20 # se o resto < 2, $21 <= 1, else $21 <= 0
      	bne $21, $0, zerar
      	sub $19, $24, $19 # se o resto for 2 ou mais, faça (11 - resto) para obter o primeiro dígito
      	j proximo
      	
zerar:	add $19, $0, $0

proximo: addi $24, $0, 3
     
      	mul $23, $10, $24
      	addi $24, $24, 1
      	mul $22, $11, $24
      	add $23, $23, $22
     
     	addi $24, $24, 1
      	mul $22, $12, $24
      	add $23, $23, $22
     
      	addi $24, $24, 1
      	mul $22, $13, $24
      	add $23, $23, $22
     
      	addi $24, $24, 1
      	mul $22, $14, $24
      	add $23, $23, $22
     
      	addi $24, $24, 1
      	mul $22, $15, $24
      	add $23, $23, $22
     
      	addi $24, $24, 1
      	mul $22, $16, $24
      	add $23, $23, $22
     
      	addi $24, $24, 1
      	mul $22, $17, $24
      	add $23, $23, $22
     
      	addi $24, $24, 1
      	mul $22, $18, $24
      	add $23, $23, $22
     
      	sll $22, $19, 1
      	add $23, $23, $22
      	
      	div $23, $24 # divide a soma total por 11
      	mfhi $20 # encontra o resto
      	addi $21, $0, 2
      	slt $22, $20, $21 # se resto < 2, então $22 <= 1, else $22 < = 0
      	bne $22, $0, zerar2
      	sub $20, $24, $20 # se o resto for maior ou igual 2, faça (11 - resto)
      	j prox2
      	
zerar2:	add $20, $0, $0

prox2:	add $4, $0, $19
	addi $2, $0, 1
	syscall
	
	add $4, $0, $20
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall