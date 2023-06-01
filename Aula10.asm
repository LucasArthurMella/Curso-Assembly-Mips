.data
	msg: .asciiz "forneca um numero decimal\n"
	zero: .float 0.0
.text
	#imprimindo mensagem para usuario
	li $v0, 4
	la $a0, msg
	syscall
	
	#ler um numero
	li $v0, 6
	syscall	#valor lido estará em $f0
	
	lwc1 $f1, zero
	add.s $f12, $f1, $f0
	
	#imprimindo um numero
	li $v0, 2
	syscall
	
