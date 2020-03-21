.data
question:	.asciz "What is your favorite color? "
after_question:	.set question_length, after_question - question
existential:	.asciz "Why is "
color:		.space 15
after_exist:	.set existential_length, after_exist - existential

.text
.global _start

_start:
	mov r0, #1
	ldr r1, =question
	mov r2, #question_length
	mov r7, #4
	svc #0

	mov r0, #0
	ldr r1, =color
	mov r2, #15
	mov r7, #3
	svc #0

	mov r0, #1
	ldr r1, =existential
	mov r7, #4
	svc #0

	mov r0, #0
	mov r7, #1
	svc #0

	.end

