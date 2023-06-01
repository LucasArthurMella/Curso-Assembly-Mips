.data
	maior: .asciiz "O numéro é maior do que 0\n"
	menor: .asciiz "O numéro é menor do que 0\n"	
	igual: .asciiz "O numéro é igual a 0\n"
.text
	#ler o número inteiro
	li $v0, 5
	syscall
	
	move $t0, $v0
	
	beq $t0, $zero, imprimeIgual
	bgt $t0, $zero, imprimeMaior
	blt $t0, $zero, imprimeMenor
	
	
	imprimeIgual:
		#imprime que o número é zero
		li $v0, 4
		la $a0, igual
		syscall
		
		#encerra o programa
		li $v0, 10
		syscall
		
	imprimeMaior:
		#imprime que o número é maior que zero
		li $v0, 4
		la $a0, maior
		syscall	
		
		#encerra o programa
		li $v0, 10
		syscall
	imprimeMenor:
		#imprime que o número é menor que zero
		li $v0, 4
		la $a0, menor
		syscall			
		#encerra o programa
		li $v0, 10
		syscall