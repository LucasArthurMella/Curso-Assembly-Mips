.data
	maior: .asciiz "O num�ro � maior do que 0\n"
	menor: .asciiz "O num�ro � menor do que 0\n"	
	igual: .asciiz "O num�ro � igual a 0\n"
.text
	#ler o n�mero inteiro
	li $v0, 5
	syscall
	
	move $t0, $v0
	
	beq $t0, $zero, imprimeIgual
	bgt $t0, $zero, imprimeMaior
	blt $t0, $zero, imprimeMenor
	
	
	imprimeIgual:
		#imprime que o n�mero � zero
		li $v0, 4
		la $a0, igual
		syscall
		
		#encerra o programa
		li $v0, 10
		syscall
		
	imprimeMaior:
		#imprime que o n�mero � maior que zero
		li $v0, 4
		la $a0, maior
		syscall	
		
		#encerra o programa
		li $v0, 10
		syscall
	imprimeMenor:
		#imprime que o n�mero � menor que zero
		li $v0, 4
		la $a0, menor
		syscall			
		#encerra o programa
		li $v0, 10
		syscall