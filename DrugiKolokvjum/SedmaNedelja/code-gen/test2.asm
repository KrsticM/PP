
main:
			PUSH	%14
			MOV 	%15,%14
@main_body:
@main_exit:
			MOV 	%14,%15
			POP 	%14
			RET