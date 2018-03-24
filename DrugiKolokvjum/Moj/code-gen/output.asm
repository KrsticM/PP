
main:
			PUSH	%14
			MOV 	%15,%14
			SUBS	%15,$4,%15
@main_body:
			MOV 	$2,-4(%14)
@petljaj0:
			CMPS 	-4(%14),$5
			JGES @false0
@true0:
			ADDS	-4(%14),$5,%0
			MOV 	%0,-4(%14)
			JMP 	@petljaj0
@false0:
@main_exit:
			MOV 	%14,%15
			POP 	%14
			RET