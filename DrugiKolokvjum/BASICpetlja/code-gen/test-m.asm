
main:
			PUSH	%14
			MOV 	%15,%14
			SUBS	%15,$8,%15
@main_body:
			MOV 	$0,-8(%14)
			MOV 	$1,-4(%14)
			MOV 	$5,-12(%14)
@for0:
			CMPS 	-12(%14),$1
JLES	@for_exit0
			MOV 	$0,-16(%14)
@for1:
			CMPS 	-16(%14),$2
JGES	@for_exit1
			ADDS	-8(%14),-4(%14),%0
			MOV 	%0,-8(%14)
			ADDS	-16(%14),$1,-16(%14)
			JMP 	@for1
@for_exit1:
			SUBS	-12(%14),$-2,-12(%14)
			JMP 	@for0
@for_exit0:
			MOV 	-8(%14),%13
			JMP 	@main_exit
@main_exit:
			MOV 	%14,%15
			POP 	%14
			RET