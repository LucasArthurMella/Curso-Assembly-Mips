.data
	msg: .asciiz "Hello world!" #mensagem a ser exibida


.text
	li $v0, 4 #instru��o para impress�o de string
	la $a0, msg #indicar o endere�o em que est� a mensagem
	syscall #fa�a imprimir