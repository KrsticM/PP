
main:
			PUSH	%14
			MOV 	%15,%14
			SUBS	%15,$8,%15
@main_body:
			MOV 	$5,-8(%14)
			MOV 	$6,-4(%14)
			CMPU 	-4(%14),-8(%14)
			JGEU	@false0
@true0:
			MOV 	-8(%14),%0
			JMP 	@exit0
@false0:
			MOV 	$4,%0
@exit0:
			MOV 	%0,-4(%14)
@if1:
			CMPU 	-4(%14),$4
			JNE 	@false1
@true1:
			MOV 	$32,%13
			JMP 	@main_exit
			JMP 	@exit1
@false1:
@if2:
			CMPU 	-4(%14),$5
			JNE 	@false2
@true2:
			MOV 	$23,%13
			JMP 	@main_exit
			JMP 	@exit2
@false2:
			MOV 	$42,%13
			JMP 	@main_exit
@exit2:
@exit1:
@main_exit:
			MOV 	%14,%15
			POP 	%14
			RET