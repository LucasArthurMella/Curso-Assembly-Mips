.data
	pergunta: .asciiz "Qual � o seu nome?"
	saudacao: .asciiz "Ola, "
	nome: .space 25

.text
	#impressao da pergunta
	li $v0, 4
 	la $a0, pergunta
 	syscall 
 	
 	#leitura do nome
 	li $v0, 8
 	la $a0, nome
 	la $a1, 25
 	syscall 
 	
 	#mostra a saudacao
 	li $v0, 4
 	la $a0, saudacao
 	syscall 
 	
 	li $v0, 4
 	la $a0, nome 
 	syscall 