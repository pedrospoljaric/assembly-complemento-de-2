.data
	print1: .asciiz "Digite um n�mero inteiro: " 
	print2: .asciiz "O valor bin�rio correspondente com o sinal �: "
.text
	li 	$v0, 4		# Digite um n�mero inteiro:
	la 	$a0, print1
	syscall
		
	li 	$v0, 5		# read
	syscall
	
	move	$s0, $v0	# t0 = v0
	
	li 	$v0, 4		# O valor bin�rio correspondente com o sinal �:
	la 	$a0, print2
	syscall
	
	li	$v0, 35
	la 	$a0, ($s0)	# a0 = s0
	syscall