.data
	msg: .asciiz "Forne�a um n�mero\n"
	par: .asciiz "O n�mero � par\n"	
	impar: .asciiz "O n�mero � �mpar\n"
.text
	#imprimindo mensagem para o usu�rio
	li $v0, 4
	la $a0, msg
	syscall
	
	#ler o n�mero
	li $v0, 5
	syscall
