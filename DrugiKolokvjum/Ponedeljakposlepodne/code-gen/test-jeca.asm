
main:
			PUSH	%14
			MOV 	%15,%14
			SUBS	%15,$16,%15
@main_body:
			MOV 	$0,-8(%14)
			MOV 	$4,-12(%14)
@if0:
			CMPS 	-4(%14),-8(%14)
			JGES	@false0
@true0:
			MOV 	$4,-12(%14)
			JMP 	@exit0
@false0:
@exit0:
			MOV 	$1,-4(%14)
@for0:
			CMPS 	-4(%14),$6
			JGES	@for_false0
@for_true0:
			MOV 	$2,-16(%14)
@for1:
			CMPS 	-16(%14),$4
			JGES	@for_false1
@for_true1:
			ADDS	-8(%14),-12(%14),%0
			MOV 	%0,-8(%14)
			ADDS	-16(%14),$1,-16(%14)
			JMP 	@for1
@for_false1:
			ADDS	-4(%14),$1,-4(%14)
			JMP 	@for0
@for_false0:
			MOV 	-8(%14),%13
			JMP 	@main_exit
@main_exit:
			MOV 	%14,%15
			POP 	%14
			RET