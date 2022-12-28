li x1, 15
li x2, 20
li x3, 40
li x5, -5
li x6, -13
li x19, 5
li x22, 2
l1:add x7, x1,x2
sub x8, x3,x5
and x7,x7,x8
bge x6,x2,l3  #not taken
bgeu x6,x2,l3 #taken
or x8, x8,x5
l3:slt x7,x1,x2
slt x7,x2,x5
bltu x6,x3,l4 #not taken
blt x6,x3,l4  #taken
add x1,x1,x1
add x1,x1,x1
l4:sltu x8, x2,x5
jal x7,l2  #taken
slt x7, x5, x2
sll x1, x1, x19
xor x20, x6, x3
l2: srl x2, x1, x19
sra x2, x6, x22
addi x17, x0, 48
jalr x3, 12(x17)  #taken
add x3,x4,x3