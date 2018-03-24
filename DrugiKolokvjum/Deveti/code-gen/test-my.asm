
main:
			PUSH	%14
			MOV 	%15,%14
			SUBS	%15,$8,%15
@main_body:
			CMPS 	-4(%14),-8(%14)
			JNE 	@false0
@true0:
			MOV 	-4(%14),%0
			JMP 	@exit0
@false0:
			MOV 	$0,%0
@exit0:
			MOV 	%0,-4(%14)
@main_exit:
			MOV 	%14,%15
			POP 	%14
			RET