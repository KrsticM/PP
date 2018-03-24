
main:
			PUSH	%14
			MOV 	%15,%14
			SUBS	%15,$12,%15
@main_body:
			MOV 	$5,-8(%14)
			MOV 	$6,-4(%14)
			MULS	-8(%14),-4(%14),%0
			ADDS	-4(%14),%0,%0
			MOV 	%0,-12(%14)
			MOV 	-12(%14),%13
			JMP 	@main_exit
@main_exit:
			MOV 	%14,%15
			POP 	%14
			RET