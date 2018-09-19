

#The following code will calculate the result of list[1] + list[4]
.data
	list: .word 4434, 3, 20, 17, 88 # array definition
.text
.globl main
main:
	la $t1, list			#load array list address
	lw $t2, 0($t1)			#accessing list[0] for total
	addi $t1, $t1, 4		#loop address
	
loop:
	lw $t3, 0($t1)			#accessing list[0] for total
	beq $0, $t3, endloop		#if there is no array item left, exit
	sub $t2, $t2, $t3		#decrease total
	addi $t1, $t1, 4		#add iteration by 4
	j loop
	
endloop:
	move $s1, $t2			#safe to s1

