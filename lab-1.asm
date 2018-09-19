.data
	distance_msg: 		.asciiz "Input Jarak: "
	time_msg: 		.asciiz "Input Waktu: "
	velocity_msg: 		.asciiz "Jarak tersebut akan ditempuh adalah: "
	
	
.text 
.globl main

main:
	li $v0, 4		#req to print
	la $a0, distance_msg	#print distance_msg
	syscall
	
	li $v0, 5		#req input
	syscall
	
	move $t0, $v0		#save distance
	
	li $v0, 4		#req print
	la $a0, time_msg	#print time_msg
	syscall
	
	li $v0, 5		#req input
	syscall
	
	move $t1, $v0		#save time
	
	li $v0, 4		#req to print
	la $a0, velocity_msg	#printing message of output
	syscall
	
	div $t0, $t1		#multiply velocity and time
	mflo $a0		#save multiplication to $a0
	
	li $v0, 1		#print an integer
	syscall
	
	li $v0, 10		#exit
    	syscall
	