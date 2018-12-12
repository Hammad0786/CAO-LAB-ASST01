.data
Developer:
.ascii      "*****Towers Of Hanoi*****\n"
.asciiz     "Developer: Hammad Shaikh\n"
.data
tower: .asciiz "Enter The Total Number Of Disks You Would Like To Move: "
disks: .asciiz "The Total Number Of Moves Of Given Disks Are: "
solution:  
.globl main
.text   
main:
li $v0, 4 			
la $a0, Developer
syscall

li  $v0, 4 			
la  $a1, solution
syscall

.text
la $t0, 2
la $t2, 0
la $t4, 1
la $a0, tower
li $v0, 4
syscall

li $v0, 5
syscall

move $t1, $v0

#(2^n)-1
Loop:
mul $t2, $t4, $t0
addi $t4, $t2, 0              
subi $t1, $t1, 1
bnez $t1, Loop

subi $t4, $t4, 1
la $a0, disks
li $v0, 4
syscall

move $a0, $t4
li $v0, 1
syscall
