.data
	hello:
		.string "Hello foo!\n"

.text
	.global main
	main:
		push {ip, lr}
		ldr r0, =hello
		bl printf
		// Move 68 into r0
		mov r0, #68
		// Increment it
		add r0, r0, #1
		pop {ip, lr}
		bx lr
