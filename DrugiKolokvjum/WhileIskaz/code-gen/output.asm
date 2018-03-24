
main:
			PUSH	%14
			MOV 	%15,%14
			SUBS	%15,$12,%15
@main_body:
@while0:
			CMPS 	-4(%14),-8(%14)
			JGES	@false0
@true0:
			MOV 	$5,-12(%14)
			JMP 	@while0
@false0:
@exit0:
@main_exit:
			MOV 	%14,%15
			POP 	%14
			RET