
#Note that this file only contains a function xyCoordinatesToAddress
#As such, this function should work independent of any caller funmction which calls it
#When using regisetrs, you HAVE to make sure they follow the register usage convention in RISC-V as discussed in lectures.
#Else, your function can potentially fail when used by the autograder and in such a context, you will receive a 0 score for this part

xyCoordinatesToAddress:
	#(x,y) in (a0,a1) arguments
	#a2 argument contains base address
	#returns pixel address in a0
	#since this is leaf function, no need to preserve ra 
	
	#Enter code below!
	#make sure to return to calling function after putting correct value in a0!
	
	addi sp, sp, -4  
	sw ra, 0(sp)     

	slli t0, a0, 2   # Multiply x by 4
	
	slli t1, a1, 7  # Multiply y by the number of words per row (128 = 32 words * 4 bytes)

	add t2, t0, t1 
	add a0, t2, a2   # Add the base address

	lw ra, 0(sp)    
	addi sp, sp, 4   

	ret             

	

				
