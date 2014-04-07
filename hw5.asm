; Mason Fabel
; 7 April 14
; CS 150
; Homework 5
;
; Print a welcome message upon startup.
; Prompt the user for input. If given a
; 'A', then respond with "Cook Before
; Serving". If given an 'X', respond
; with "finished." and halt. In any
; other case print a '?' and reprompt.
;

	.ORIG x3000
INIT	LEA R0,MSG_1
	PUTS
MAIN	IN
	AND R1,R0,R0
	LD R2,NEG_A
	ADD R1,R1,R2
	BRz PMSG2
	AND R1,R0,R0
	LD R2,NEG_X
	ADD R1,R1,R2
	BRz END
	LEA R0,MSG_3
	PUTS
	BRnzp MAIN
PMSG2	LEA R0,MSG_2
	PUTS
	BRnzp MAIN
END	LEA R0,MSG_4
	PUTS
	HALT
NEG_A	.FILL #-65
NEG_X 	.FILL #-88
MSG_1	.STRINGZ "__WELCOME__"
MSG_2	.STRINGZ "Cook Before Serving"
MSG_3	.STRINGZ "?"
MSG_4	.STRINGZ "finished."
	.END
