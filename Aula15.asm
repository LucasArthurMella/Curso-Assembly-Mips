.data
 	msgUsr: .asciiz "Forneça o número positivo: "
 	msgPar: .asciiz "O número é par. "
 	msgImpar: .asciiz "O número é ímpar. "
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
	#função que verifica se o argumento $a0 é impar
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
	
	
	#função que recebe uma String em $a0 e a imprime	
	imprimeString:
	li $v0, 4
	syscall
	jr $ra
	
	#função que lê um inteiro e o retorna em $v0
	leInteiro:
	li $v0, 5
	syscall
	move $a0, $v0
	jr $ra