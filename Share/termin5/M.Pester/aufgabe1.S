//
// Programmgeruestbeispiel zur Aufgabe1
//
//Name:		
//Datum:	

	.file	"aufgabe1.S"
	.text
	.align	2
	.global	main
	.type	main, function
main:
	stmdb		r13!, {r4-r8, lr}
	stmfd		r13!, {r4-r8, lr}
@ welcher Befehl  wird durch den Compiler/Assembler genutzt

	ldmia		r13!, {r4-r8, lr}
	ldmfd		r13!, {r4-r8, pc}
@ welcher Befehl  wird durch den Compiler/Assembler genutzt
	

.Lfe1:
	.size	main,.Lfe1-main
