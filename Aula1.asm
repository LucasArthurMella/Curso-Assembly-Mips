.data
	msg: .asciiz "Hello world!" #mensagem a ser exibida


.text
	li $v0, 4 #instrução para impressão de string
	la $a0, msg #indicar o endereço em que está a mensagem
	syscall #faça imprimir