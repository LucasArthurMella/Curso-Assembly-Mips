.data
 	msgUsr: .asciiz "Forne�a o n�mero positivo: "
 	msgPar: .asciiz "O n�mero � par. "
 	msgImpar: .asciiz "O n�mero � �mpar. "
.text
	la $a0, msgUsr
	jal imprimeString
	jal leInteiro
	jal ehImpar
	beq $v0, $zero, imprimePar
	la $a0, msgImpar
	jal imprimeString
	jal encerraPrograma
	
	
	imprimePar:
	la $a0, msgPar
	jal imprimeString
	jal encerraPrograma
	#fun��o que verifica se o argumento $a0 � impar
	#retorna 1 se for impar
	#retorna 0 se for par
	ehImpar:
		li $t0, 2
		div $a0, $t0
		
		mfhi $v0
		jr $ra
	#encerra o programa
	encerraPrograma:
	li $v0, 10
	syscall
	
	
	#fun��o que recebe uma String em $a0 e a imprime	
	imprimeString:
	li $v0, 4
	syscall
	jr $ra
	
	#fun��o que l� um inteiro e o retorna em $v0
	leInteiro:
	li $v0, 5
	syscall
	move $a0, $v0
	jr $ra