
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
			CMPS 	-4(%14),-8(%14)
			JNE 	@false1
@true1:
			MOV 	-4(%14),%0
			JMP 	@exit1
@false1:
			MOV 	-8(%14),%0
@exit1:
			ADDS	-4(%14),%0,%0
			ADDS	%0,$3,%0
			MOV 	%0,-4(%14)
@main_exit:
			MOV 	%14,%15
			POP 	%14
			RET