.data
	msg: .asciiz "Forneça um número\n"
	par: .asciiz "O número é par\n"	
	impar: .asciiz "O número é ímpar\n"
.text
	#imprimindo mensagem para o usuário
	li $v0, 4
	la $a0, msg
	syscall
	
	#ler o número
	li $v0, 5
	syscall
