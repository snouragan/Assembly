.global _start

@MOV R7, #1 -> go back to terminal
@MOV R7, #3 -> input stream keyboard 
@MOV R7, #4 -> write information to the screen
@MOV R0, #1 -> output stream is the monitor
@MOV R3, #12 -> define length of the string
@LDR R1, =string -> load the string

@SWI 0 @SOFTWARE INTERRUPT
_start:
	MOV R7, #3
	MOV R0, #0
	MOV R2, #12
	LDR R1, =message
	SWI 0
_write:
	MOV R7, #4
	MOV R0, #1
	MOV R2, #12
	LDR R1, =message
	SWI 0


end:
	MOV R7, #1
	SWI 0

.data
message:
	.ascii "Hello World\n"
